def lambda_handler(event, context):

    print("CloudWatch Event Received")

    return {
        "statusCode": 200,
        "body": "Incident processed"
    }
