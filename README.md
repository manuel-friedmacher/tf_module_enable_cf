# tf_module_enable_cf
Enable a Cloud Foundry environment in an existing SAP BTP subaccount.

## Prerequisites

- A subaccount created by `tf_module_build_sa` or an equivalent configuration.
- SAP BTP provider credentials that can assign entitlements and create Cloud Foundry environment instances.
- A supported Cloud Foundry landscape region: `cf-eu10-005` or `cf-eu20-002`.

Apply this module before `tf_module_workzone`. Pass the resulting `cf_org_id` to that module after environment provisioning completes.

<!-- BEGIN_TF_DOCS -->
[36mrequirement.terraform[0m (>= 1.14.0)
[36mrequirement.btp[0m (>= 1.22)


[36mprovider.btp[0m (1.26.0)


[36mresource.btp_subaccount_entitlement.cf_runtime (resource)[0m (https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_entitlement)
[36mresource.btp_subaccount_entitlement.cloud_foundry (resource)[0m (https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_entitlement)
[36mresource.btp_subaccount_environment_instance.cloudfoundry (resource)[0m (https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_environment_instance)


[36minput.cf_region[0m (required)
[90mCloud Foundry landscape region for the environment instance.[0m

[36minput.subaccount_id[0m (required)
[90mID of the subaccount where Cloud Foundry will be enabled.[0m

[36minput.subaccount_subdomain[0m (required)
[90mLowercase DNS subdomain of the subaccount used to name Cloud Foundry resources.[0m


[36moutput.cf_instance_id[0m
[90mTechnical ID of the Cloud Foundry instance.[0m

[36moutput.cf_org_id[0m
[90mTechnical ID of the Cloud Foundry organization.[0m
<!-- END_TF_DOCS -->