variable "organization_name" {
  type        = string
  description = "Organization name (e.g., example-com)"
}

variable "env" {
  type        = string
  description = "Environment name (e.g., dev, staging, prod)"
}

variable "app" {
  type        = string
  description = "Application name"
}
