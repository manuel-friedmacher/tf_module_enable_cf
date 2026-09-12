# tf_module_enable_cf
Enable the Cloud Foundry environment

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.14.0 |
| <a name="requirement_btp"></a> [btp](#requirement\_btp) | >= 1.22 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_btp"></a> [btp](#provider\_btp) | >= 1.22 |

## Resources

| Name | Type |
|------|------|
| [btp_subaccount_entitlement.cf_runtime](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_entitlement) | resource |
| [btp_subaccount_entitlement.cloud_foundry](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_entitlement) | resource |
| [btp_subaccount_environment_instance.cloudfoundry](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_environment_instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cf_region"></a> [cf\_region](#input\_cf\_region) | Region where the cloud foundry instance shall be created in. | `string` | n/a | yes |
| <a name="input_subaccount_id"></a> [subaccount\_id](#input\_subaccount\_id) | ID of the subaccount to be trusted. | `string` | n/a | yes |
| <a name="input_subaccount_subdomain"></a> [subaccount\_subdomain](#input\_subaccount\_subdomain) | Subdomain of the subaccount to be trusted. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cf_instance_id"></a> [cf\_instance\_id](#output\_cf\_instance\_id) | Technical ID of the Cloud Foundry instance. |
| <a name="output_cf_org_id"></a> [cf\_org\_id](#output\_cf\_org\_id) | Technical ID of the Cloud Foundry organization. |
<!-- END_TF_DOCS -->