data "aws_ami" "ubuntu" {

    most_recent = true

    filter {
        name   = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
    }

    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }
        owners = ["099720109477"]

}

resource "aws_instance" "machine" {
  ami = data.aws_ami.ubuntu.id

    tags = {
    name     = "${var.tag_name}${count.index + 1}"
  }
         instance_type =  var.instance
         count = var.quantity
         vpc_security_group_ids = [aws_security_group.security.id]

  }
