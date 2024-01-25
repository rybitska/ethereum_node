provider "aws" {
  region     = "us-east-1"
  version = "~> 1.8"
}

output "geth HTTP URL" {
  value = "${module.geth.http_url}"
}

output "geth WS URL" {
  value = "${module.geth.ws_url}"
}

module "geth" {
  network = "mainnet"
  source = "../.."
  public_key = "" # insert public key
  availability_zone = "us-east-1b"
}