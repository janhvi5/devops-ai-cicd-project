provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "app" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"

  user_data = <<EOF
#!/bin/bash
sudo apt update -y
sudo apt install docker.io -y
sudo systemctl start docker
sudo docker run -d -p 5000:5000 ACCOUNT_ID.dkr.ecr.ap-south-1.amazonaws.com/myapp:latest
EOF

  tags = {
    Name = "App-Server"
  }
}
