#!/usr/bin/python3

import boto3
import urllib.request

# create client
s3 = boto3.client('s3', region_name="us-east-1")

# vars needed
bucket_name = 'ds2022-bpa2hu'
object_name = 'mofusand.jpg'
expires_in = 604800

#uploads file to bucket in s3
s3.upload_file(object_name, bucket_name, object_name)

#presigns file
response = s3.generate_presigned_url(
    'get_object',
    Params={'Bucket': bucket_name, 'Key': object_name},
    ExpiresIn=expires_in
    )

https://ds2022-bpa2hu.s3.amazonaws.com/mofusand.jpg?AWSAccessKeyId=AKIA3TD2SFJXZMN52CB5&Signature=IjyjOCGVywYQjEGTgbDPxwW0wpw%3D&Expires=1728071516 
