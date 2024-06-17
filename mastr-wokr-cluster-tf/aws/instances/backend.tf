terraform {
    backend "s3" {
        bucket = "ocreate-s3"
        key = "kube-state/terraform.tfstate"
        region = "ap-south-1"
      
    }
}