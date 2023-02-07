resource "aws_security_group" "security" {
  name = var.namesg

  ingress {
    from_port = 443
    to_port   = 443
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


 # resource "aws_security_group_rule" "ingress_rule_1" {
# type        = "ingress"
# from_port   = 22
# to_port     = 22
# protocol    = "tcp"
# cidr_blocks = ["0.0.0.0/0"]
# security_group_id = aws_security_group.security.id
# }

