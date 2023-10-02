provider "aws" {
  region = "eu-west-1"

  default_tags {
    tags = {
      Client       = var.client
      Stage        = var.stage
      IacRepo      = "https://github.com/cangulo-talks/202310-bcn-serverless-meetup-tf-refactor"
      Service      = local.service_name
      ServiceGroup = var.service_group
    }
  }
}
