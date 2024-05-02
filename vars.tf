variable REGION {
  default = "us-east-1"
}

variable az-1a {
  default = "us-east-1a"
}

variable az-1b {
  default = "us-east-1b"
}

variable az-1c {
  default = "us-east-1c"
}

variable AMIS {
  type = map
  default = {
    us-east-1 = "ami-053b0d53c279acc90"
  }
}

# edit this on aws instance

#  ami   = var.AMIS["us-east-1"]

#   edit this on subnet
#  availability_zone       = var.az-1a

#edit this on providers

#region = var.REGION




