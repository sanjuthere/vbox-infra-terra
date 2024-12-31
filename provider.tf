terraform {
  required_providers {
    virtualbox = {
      source  = "terra-farm/virtualbox"
      version = "0.2.2-alpha.1"
    }
  }
  required_version = ">= 1.5.0"
}

provider "virtualbox" {}
