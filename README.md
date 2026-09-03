THIS IS AWS TERRAFORM ANALYSIS FOR HELLOCLOUD CLOUD INFRASTRUCTURE ENGINEERING PROGRAM

------------------------------------------------------------------------------------------------------------------
##EXPECTED OUTPUT 
LOCAL COMPUTER SHOULD SSH TO PUBLIC INSTANCE AND SHOULD GET INTERNET ACCESS FROM PUBLIC INSTANCE

------------------------------------------------------------------------------------------------------------------

##RESOURCE

1. VPC ---- 10.0.0.0/16 | eu-north-1
2. SUBNET ---- 10.0.0.0/24 | PUBLIC | VPC
3. INTERNET GATEWAY ---- VPC
4. ROUTE TABLE ---- VPC | INTERNET GATEWAY | 0.0.0.0/0
5. ROUTE ASSOCIATION ---- SUBNET | ROUTE TABLE 
6. INSTANCE ---- AMI | INSTANCE TYPE | KEYPAIR | SUBNET | SECURITY GROUP

