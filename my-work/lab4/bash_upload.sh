#!/bin/bash 

curl https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png > google_logo.png

aws s3 cp google_logo.png s3://ds2022-bpa2hu/

aws s3 ls s3://ds2022-bpa2hu/

aws s3 presign --expires-in 604800 s3://ds2022-bpa2hu/google_logo.png

https://ds2022-bpa2hu.s3.amazonaws.com/google_logo.png?AWSAccessKeyId=AKIA3TD2SFJXZMN52CB5&Signature=gcQQswyd1DhKxfa2gK3iG9R3spo%3D&Expires=1728065183
