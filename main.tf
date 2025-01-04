resource "aws_vpc" "network" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "terraform"
  }

}

resource "aws_subnet" "subnets" {
  count             = 4
  vpc_id            = aws_vpc.network.id
  cidr_block        = var.cidr_subnet[count.index]
  availability_zone = var.az_zones[count.index]
  tags = {
    Name = var.subnet_tags[count.index]
  }
}


