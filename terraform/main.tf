module "sandbox" {
  count = 0
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws.aft.ccvelefthe+aft-account-2@gmail.com"
    AccountName               = "sandbox-aft-2"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "vasilios.eleftheriadis@computacenter.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
