<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_kion"></a> [kion](#requirement\_kion) | ~> 0.3.18 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kion"></a> [kion](#provider\_kion) | ~> 0.3.18 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kion_cloud_rule.this](https://registry.terraform.io/providers/kionsoftware/kion/latest/docs/resources/cloud_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_cloudformation_templates"></a> [aws\_cloudformation\_templates](#input\_aws\_cloudformation\_templates) | List of AWS CloudFormation templates to attach to the rule | <pre>list(object({<br>    id = number<br>  }))</pre> | `[]` | no |
| <a name="input_aws_iam_policies"></a> [aws\_iam\_policies](#input\_aws\_iam\_policies) | List of AWS IAM policies to attach to the rule | <pre>list(object({<br>    id = string<br>  }))</pre> | `[]` | no |
| <a name="input_azure_arm_template_definitions"></a> [azure\_arm\_template\_definitions](#input\_azure\_arm\_template\_definitions) | List of Azure ARM template definitions to attach to the rule | <pre>list(object({<br>    id = number<br>  }))</pre> | `[]` | no |
| <a name="input_azure_policy_definitions"></a> [azure\_policy\_definitions](#input\_azure\_policy\_definitions) | List of Azure policy definitions to attach to the rule | <pre>list(object({<br>    id = number<br>  }))</pre> | `[]` | no |
| <a name="input_azure_role_definitions"></a> [azure\_role\_definitions](#input\_azure\_role\_definitions) | List of Azure role definitions to attach to the rule | <pre>list(object({<br>    id = number<br>  }))</pre> | `[]` | no |
| <a name="input_compliance_standards"></a> [compliance\_standards](#input\_compliance\_standards) | List of compliance standards to attach to the rule | <pre>list(object({<br>    id = number<br>  }))</pre> | `[]` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the cloud rule | `string` | `null` | no |
| <a name="input_gcp_iam_roles"></a> [gcp\_iam\_roles](#input\_gcp\_iam\_roles) | List of GCP IAM roles to attach to the rule | <pre>list(object({<br>    id = number<br>  }))</pre> | `[]` | no |
| <a name="input_internal_aws_amis"></a> [internal\_aws\_amis](#input\_internal\_aws\_amis) | List of internal AWS AMIs to attach to the rule | <pre>list(object({<br>    id = number<br>  }))</pre> | `[]` | no |
| <a name="input_internal_aws_service_catalog_portfolios"></a> [internal\_aws\_service\_catalog\_portfolios](#input\_internal\_aws\_service\_catalog\_portfolios) | List of internal AWS service catalog portfolios to attach to the rule | <pre>list(object({<br>    id = number<br>  }))</pre> | `[]` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | Labels to assign to the cloud rule | `map(string)` | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the cloud rule | `string` | n/a | yes |
| <a name="input_ous"></a> [ous](#input\_ous) | List of Organizational Units (OUs) to attach to the rule | <pre>list(object({<br>    id = number<br>  }))</pre> | `[]` | no |
| <a name="input_owner_user_groups"></a> [owner\_user\_groups](#input\_owner\_user\_groups) | List of owner user groups for the cloud rule | <pre>list(object({<br>    id = number<br>  }))</pre> | `[]` | no |
| <a name="input_owner_users"></a> [owner\_users](#input\_owner\_users) | List of owner users for the cloud rule | <pre>list(object({<br>    id = number<br>  }))</pre> | `[]` | no |
| <a name="input_post_webhook_id"></a> [post\_webhook\_id](#input\_post\_webhook\_id) | ID of the post-webhook to execute after the cloud rule | `number` | `null` | no |
| <a name="input_pre_webhook_id"></a> [pre\_webhook\_id](#input\_pre\_webhook\_id) | ID of the pre-webhook to execute before the cloud rule | `number` | `null` | no |
| <a name="input_projects"></a> [projects](#input\_projects) | List of projects to attach to the cloud rule | <pre>list(object({<br>    id = number<br>  }))</pre> | `[]` | no |
| <a name="input_service_control_policies"></a> [service\_control\_policies](#input\_service\_control\_policies) | List of service control policies to attach to the cloud rule | <pre>list(object({<br>    id = number<br>  }))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloud_rule_id"></a> [cloud\_rule\_id](#output\_cloud\_rule\_id) | The ID of the cloud rule created by this module |
<!-- END_TF_DOCS -->