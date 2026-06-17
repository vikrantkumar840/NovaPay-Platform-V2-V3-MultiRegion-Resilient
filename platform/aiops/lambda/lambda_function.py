import json

def lambda_handler(event, context):

    incident = json.dumps(event)

    summary = {
        "root_cause": "Unknown",
        "impact": "Service degradation",
        "recommendation": "Investigate logs"
    }

    print(summary)

    return {
        "statusCode": 200,
        "body": json.dumps(summary)
    }