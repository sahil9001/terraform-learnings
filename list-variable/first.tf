# ssilare@Sahils-MacBook-Air list-variable % terraform plan
# var.users
#   Enter a value: ["test","test1"]


# Changes to Outputs:
#   + hello = "Hello, this is the first user test"

# You can apply this plan to save these new output values to the Terraform state, without changing any real infrastructure.

# ───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

# Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply"
# now.

output "hello" {
  value = "Hello, this is the first user ${var.users[0]}"
}