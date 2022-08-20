# kpmg_challanges
KPMG interview challange 2

Problem Statement: We need to write code that will query the meta data of an instance within AWS and provide a
json formatted output. The choice of language and implementation is up to you.
Bonus Points
The code allows for a particular data key to be retrieved individually

Solution: We have used a python script to solve this problem

Assumptions: Following are the assuptions we made to solve this issue.

We need to run this script in the same ec2 instance for which we need the metadata details

How to run this script:

Following are the metadata we can get,
ami-id
ami-launch-index
ami-manifest-path
block-device-mapping/
events/
hostname
identity-credentials/
instance-action
instance-id
instance-life-cycle
instance-type
local-hostname
local-ipv4
mac
metrics/
network/
placement/
profile
public-hostname
public-ipv4
public-keys/
reservation-id
security-groups
services/
tags/

To run this script we need to give the arg in command line,

Example:
python3 metadata.py tags
python3 metadata.py mac
python3 metadata.py hostname
