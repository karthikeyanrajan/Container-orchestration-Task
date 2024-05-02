resource "aws_route_table" "publicknrt" {
  vpc_id = aws_vpc.knvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.knigw.id
  }
    tags = {
    Name = "publicrt"
  }
}

resource "aws_route_table" "privateknrt" {
  vpc_id = aws_vpc.knvpc.id
                                      # here we will not mention cidr as 0.0.0.0/0 bcoz it allows all
    tags = {
    Name = "privatert"
  }
}
 
#Routetable associateion

resource "aws_route_table_association" "public-rt" {
  subnet_id      = aws_subnet.subnet-1a.id
  route_table_id = aws_route_table.publicknrt.id
}

resource "aws_route_table_association" "public-rt-1" {
  subnet_id      = aws_subnet.subnet-1b.id
  route_table_id = aws_route_table.publicknrt.id
}

#private

resource "aws_route_table_association" "private-rt" {
  subnet_id      = aws_subnet.subnet-1c.id
  route_table_id = aws_route_table.privateknrt.id
}