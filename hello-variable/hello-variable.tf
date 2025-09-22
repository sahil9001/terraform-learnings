# ssilare@Sahils-MacBook-Air hello-variable % terraform plan -var "username=test"
# var.age
#   Enter a value: 52


# Changes to Outputs:
#   + printname = "Hello test, your age is 52"

# You can apply this plan to save these new output values to the Terraform state, without changing any real infrastructure.

# ───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

# Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply"
# now.
output "printname" {
  value = "Hello ${var.username}, your age is ${var.age}"
}