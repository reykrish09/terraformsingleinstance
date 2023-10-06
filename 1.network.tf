resource "aws_vpc" "kamalvpc1" {
  cidr_block           = var.nv_vpc1_cidr
  enable_dns_hostnames = true
  tags = {
    owner = "var.nv_owner"
  }
}

resource "aws_internet_gateway" "kamalvpc1-igw" {
  vpc_id = aws_vpc.kamalvpc1.id
  tags = {
    Name = "${var.nv_vpc1}-igw"
  }
}

resource "aws_vpc" "kamalvpc2" {
  cidr_block           = var.nv_vpc2_cidr
  enable_dns_hostnames = true
  tags = {
    owner = "var.nv_owner"
  }
}

resource "aws_internet_gateway" "kamalvpc2-igw" {
  vpc_id = aws_vpc.kamalvpc2.id
  tags = {
    Name = "${var.nv_vpc2}-igw"
  }
}
resource "aws_vpc" "ohio_Test_vpc1" {
  provider             = aws.ohio
  cidr_block           = var.ohio_vpc1_cidr
  enable_dns_hostnames = true
  tags = {
    owner = var.ohio_owner
  }
}
resource "aws_internet_gateway" "ohio_Test_vpc1-igw" {
  vpc_id   = aws_vpc.ohio_Test_vpc1.id
  provider = aws.ohio
  tags = {
    owner = "${var.ohio_owner}-igw"
  }
}
resource "aws_vpc" "ohio_Test_vpc2" {
  provider             = aws.ohio
  cidr_block           = var.ohio_vpc1_cidr
  enable_dns_hostnames = true
  tags = {
    owner = var.ohio_owner
  }
}
resource "aws_internet_gateway" "ohio_Test_vpc2-igw" {
  vpc_id   = aws_vpc.ohio_Test_vpc2.id
  provider = aws.ohio
  tags = {
    owner = "${var.ohio_vpc2}-igw"
  }
}

