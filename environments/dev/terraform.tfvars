resource_group = {
  network = {
    name     = "rg-network-dev-ci"
    location = "Central India"
    tags = {
      Environment = "Development"
      Owner       = "Platform Team"
    }
  }
  application = {
    name     = "rg-application-dev-ci"
    location = "Central India"
    tags = {
      Environment = "Development"
      Owner       = "Application Team"
    }
  }
}

