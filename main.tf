resource "aws_key_pair" "julykey"{
     key_name        = "julykey"
     public_key      = file(var.path_to_public_key)
}

resource "aws_instance" "devops_TNJ" {
    instance_type = "t2.micro"
    ami           = "031a03cb800ecb0d5"
    key_name      = "julykey"
    
     #VPC      
    #subnet_id = "aws_subnet.tomcat-subnet-public-1.id"
   
}  

 # vpc_security_group_ids = ["${aws_security_group.ssh-allowed.id}"]

# provisioner "remote-exec" {
   #connection {
   #type = "ssh" 
    #user = "ec2-user"
    #host = aws_instance.devops_TNJ.public_ip
    #private_key = file(var.path_to_private_key)
  #}
    # inline = [
     # "sudo yum update -y",
     # "sudo yum -y install nginx",
     #"sudo service nginx start",
     # "sudo yum install tomcat git -y",
     # "sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo",
     # "sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key",
     # "sudo yum install jenkins -y",

   # ]
  

# tags          = {
   # Name      = var.tag
  #}   

#}
       
# output "ip" {
  #value = "https://${aws_instance.devops_TNJ.public_ip}:80  connect ssh -i junekey ec2-user@${aws_instance.devops_TNJ.public_ip}"
#}

 
 
 #subnet_id = "aws_subnet.jenkins-subnet-public-2.id",
 #subnet_id = "aws_subnet.nginx-subnet-public-3.id",