#this code will be used for jenkins testing only, first change and 2nd change 
#declare the provider...
provider "aws" {
  region                  = "us-east-1"

}

#create the VPC
resource "aws_vpc" "ProdVPC" {
  cidr_block       = "192.168.0.0/19"
  instance_tenancy = "default"

  tags = {
    Name = "ProdVPC"
  }
   
}


