#!/bin/sh

# get token
SECRETS=$(echo -n rods:rods | base64)
echo $(curl -X POST -H "Authorization: Basic ${SECRETS}" http://localhost/irods-rest/0.9.3/auth)
