variable "profile" {
  description = "AWS profile to use"
  type        = string
  default     = "default"
}

variable "region" {
  description = "The AWS region to use"
  default     = "us-east-1"
}

variable "availability_zone" {
  description = "The AWS availability zone to use"
  default     = "us-east-1a"
}