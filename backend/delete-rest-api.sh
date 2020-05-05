#! /usr/bin/env bash

PROFILE=superuser
ROLE="$GOFULLSTACKROLE"

REGION=eu-west-1

RESTAPIID=$(aws apigateway get-rest-apis --profile $PROFILE| jq -r '.items[] | select( .name == "Simple Todo API") | .id')

aws apigateway delete-rest-api --rest-api-id $RESTAPIID --profile $PROFILE

