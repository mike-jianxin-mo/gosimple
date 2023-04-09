# security group
resource "aws_security_group" "example1" {
  name   = "sg_example1"
  vpc_id = aws_vpc.example.id
}

resource "aws_security_group" "example2" {
  name   = "sg_example2"
  vpc_id = aws_vpc.example.id
}