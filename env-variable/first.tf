# Declare a variable called "username"
# The value for this can be set in multiple ways:
#   1. Directly in a .tfvars file or using -var flag
#   2. As an environment variable with the prefix TF_VAR_
#      Example: export TF_VAR_username="Alice"
variable "username" {
  type = string
}

# Output block to print a greeting message
# It interpolates the value of var.username
output "printname" {
  value = "Hello, ${var.username}"
}
