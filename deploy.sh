#!/bin/bash

cd lambda
rm -rf function.zip package/
mkdir -p package

echo "Installing dependencies..."
pip install -r requirements.txt -t package/
cp lambda_function.py package/
cd package
zip -r function.zip

echo "Applying Terraform..."
cd terraform
terraform init
terraform apply -auto-approve
cd ..