resource "aws_subnet" "example1" {
  vpc_id     = aws_vpc.example.id
  cidr_block = "10.32.1.0/26"
}

resource "aws_subnet" "example2" {
  vpc_id     = aws_vpc.example.id
  cidr_block = "10.32.2.0/26"
}