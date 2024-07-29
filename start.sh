#!/bin/sh
echo "TYPESENSE_API_KEY=${TYPESENSE_API_KEY}"
/usr/bin/typesense-server --data-dir /data --api-key=${TYPESENSE_API_KEY} --enable-cors
