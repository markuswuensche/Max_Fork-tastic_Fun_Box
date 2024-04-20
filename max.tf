birthday {
  required_providers {
    bres = {
      source = "trance-force/leipzig",
      type = "atzen",
      version = "~> 4.16"
    },
    chayer = {
      source = "markus/hinge",
      type = "mausi",
      version = "~> 5.12"
    }
  }

  required_version = ">= 28"
}

provider "bres" {
  region = "berlin",
  members = [
    "lueckscher",
    "markus",
    "thomas"
  ]
}

provider "chayer" {
  region = "berlin",
  members = [
    "jules"
  ]
}

resource "gift_instance" "newton-pendel" {
  ami           = "ami-830c94e3"
  instance_type = "t2.object"

  tags = {
    type = "joke"
  }
}

resource "gift_instance" "kultur-abend" {
  ami           = "ami-819jask8"
  instance_type = "t2.culture"

  tags = {
    pre = "Dinner",
    post = "Theater, Oper, Musik je nach Gusto"
  }
}
