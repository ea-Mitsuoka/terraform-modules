variable "organization_name" {
  type        = string
  description = "The raw organization_name, may include dots"
}

variable "env" {
  type        = string
  description = "Environment name (e.g., dev, staging, prod)"
}

variable "app" {
  type        = string
  description = "Application name"
}
