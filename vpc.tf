resource “aws_vpc” “prod-vpc” {
    cidr_block = “10.0.0.0/16”
    enable_dns_support = “true” 
    enable_dns_hostnames = “true” 
    enable_classiclink = “false”
    instance_tenancy = “default”    
    
    tags {
        Name = “prod-vpc”
    }
}

resource “aws_subnet” “tomcat-subnet-public-1” {
    vpc_id = “${aws_vpc.prod-vpc.id}”
    cidr_block = “10.0.1.0/24”
    map_public_ip_on_launch = “true”
    availability_zone = “eu-west-1a”
    
    tags {
        Name = “tomcat-subnet-public-1”
    }
}

resource “aws_subnet” “jenkins-subnet-public-2” {
    vpc_id = “${aws_vpc.prod-vpc.id}”
    cidr_block = “10.0.2.0/24”
    map_public_ip_on_launch = “true”
    availability_zone = “eu-west-1b”
    
    tags {
        Name = “jenkins-subnet-public-2”
    }
}

resource “aws_subnet” “nginx-subnet-public-3” {
    vpc_id = “${aws_vpc.prod-vpc.id}”
    cidr_block = “10.0.3.0/24”
    map_public_ip_on_launch = “true”
    availability_zone = “eu-west-1c”
    
tags {
        Name = “nginx-subnet-public-3”
    }
}