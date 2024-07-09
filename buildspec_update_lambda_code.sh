#!/bin/bash
zip -r lambda_zip.zip *
aws lambda update-function-code --function-name getALLUsers --zip-file fileb://lambda_zip.zip