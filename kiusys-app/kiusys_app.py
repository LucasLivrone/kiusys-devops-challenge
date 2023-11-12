from fastapi import FastAPI
import boto3
from boto3.dynamodb.conditions import Key


app = FastAPI(
    title="Kiusys app that keeps the record of transactions made per flight route",
    description="https://github.com/LucasLivrone/kiusys-devops-challenge",
    docs_url="/"
)

dynamodb = boto3.resource('dynamodb', region_name='us-east-1')
table_name = 'flights-db'
table = dynamodb.Table(table_name)


@app.post("/save-transaction/{flight_route}")
async def save_transactions(flight_route: str):
    # Check if the flight_route is present in the DB table
    query = table.query(KeyConditionExpression=Key('flight-route').eq(flight_route))

    # If the flight_route is found, it will increment the existing record by 1
    if query['Count'] != 0:
        updated_record = int(query['Items'][0]['record']) + 1
        table.put_item(
            Item={
                'flight-route': flight_route,
                'record': updated_record
            }
        )
        return {flight_route: updated_record}
    # If the flight_route is not found, it will be added to the DB table with a record of 1
    else:
        table.put_item(
            Item={
                'flight-route': flight_route,
                'record': 1
            }
        )
        return {flight_route: 1}

@app.post("/get-transaction/{flight_route}")
async def get_transactions(flight_route: str):

    # Check if the flight_route is present in the DB table
    query = table.query(KeyConditionExpression=Key('flight-route').eq(flight_route))

    # If the flight_route is found, return the record value
    if query['Count'] != 0:
        record = query['Items'][0]['record']
    # If the flight_route is not found, the record value is 0
    else:
        record = 0

    return {flight_route: record}


