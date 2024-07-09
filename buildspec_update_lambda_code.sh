#!/bin/bash
mkdir -p ./deployment_zip 
cp ./backend/index.js  ./deployment_zip
cd deployment_zip 
zip -r lambda_zip.zip *
aws lambda update-function-code --function-name getALLUsers --zip-file fileb://./deployment_zip/lambda_zip.zip