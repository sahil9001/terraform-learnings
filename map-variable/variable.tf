variable "usersage" {
    type = map
    default = {
        gaurav = 20
        saurav = 30
    }
}

variable "username" {
    type = string
}

# ssilare@Sahils-MacBook-Air map-variable % terraform plan
# var.username
#   Enter a value: gaurav


# Changes to Outputs:
#   + userage = "my name is gaurav and my age is 20"

# You can apply this plan to save these new output values to the Terraform state, without changing any real infrastructure.

# ───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

# Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply"
# now.
# ssilare@Sahils-MacBook-Air map-variable % terraform plan
# var.username
#   Enter a value: saurav


# Changes to Outputs:
#   + userage = "my name is gaurav and my age is 30"

# You can apply this plan to save these new output values to the Terraform state, without changing any real infrastructure.

# ───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

# Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply"
# now.

output "userage" {
  value = "my name is gaurav and my age is ${lookup(var.usersage, "${var.username}")}"
}