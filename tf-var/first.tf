variable "age" {
  type = number
}

variable "name" {
  type = string
}

# ssilare@Sahils-MacBook-Air tf-var % terraform plan

# Changes to Outputs:
#   + hello = "My name is sahil and age is 25"

# You can apply this plan to save these new output values to the Terraform state, without changing any real infrastructure.

# ───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

# Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply"
# now.
output "hello" {
  value = "My name is ${var.name} and age is ${var.age}"
}