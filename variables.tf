variable "name" {
  description = "Name of the cloud rule"
  type        = string
}

variable "description" {
  description = "Description of the cloud rule"
  type        = string
  default     = null
}

variable "aws_iam_policies" {
  description = "List of AWS IAM policies to attach to the rule"
  type = list(object({
    id = string
  }))
  default = []
}

variable "owner_users" {
  description = "List of owner users for the cloud rule"
  type = list(object({
    id = number
  }))
  default = []
}

variable "owner_user_groups" {
  description = "List of owner user groups for the cloud rule"
  type = list(object({
    id = number
  }))
  default = []
}

variable "labels" {
  description = "Labels to assign to the cloud rule"
  type        = map(string)
  default     = {}
}

variable "aws_cloudformation_templates" {
  description = "List of AWS CloudFormation templates to attach to the rule"
  type = list(object({
    id = number
  }))
  default = []
}

variable "azure_arm_template_definitions" {
  description = "List of Azure ARM template definitions to attach to the rule"
  type = list(object({
    id = number
  }))
  default = []
}

variable "azure_policy_definitions" {
  description = "List of Azure policy definitions to attach to the rule"
  type = list(object({
    id = number
  }))
  default = []
}

variable "azure_role_definitions" {
  description = "List of Azure role definitions to attach to the rule"
  type = list(object({
    id = number
  }))
  default = []
}

variable "compliance_standards" {
  description = "List of compliance standards to attach to the rule"
  type = list(object({
    id = number
  }))
  default = []
}

variable "gcp_iam_roles" {
  description = "List of GCP IAM roles to attach to the rule"
  type = list(object({
    id = number
  }))
  default = []
}

variable "internal_aws_amis" {
  description = "List of internal AWS AMIs to attach to the rule"
  type = list(object({
    id = number
  }))
  default = []
}

variable "internal_aws_service_catalog_portfolios" {
  description = "List of internal AWS service catalog portfolios to attach to the rule"
  type = list(object({
    id = number
  }))
  default = []
}

variable "ous" {
  description = "List of Organizational Units (OUs) to attach to the rule"
  type = list(object({
    id = number
  }))
  default = []
}

variable "projects" {
  description = "List of projects to attach to the cloud rule"
  type = list(object({
    id = number
  }))
  default = []
}

variable "service_control_policies" {
  description = "List of service control policies to attach to the cloud rule"
  type = list(object({
    id = number
  }))
  default = []
}

variable "pre_webhook_id" {
  description = "ID of the pre-webhook to execute before the cloud rule"
  type        = number
  default     = null
}

variable "post_webhook_id" {
  description = "ID of the post-webhook to execute after the cloud rule"
  type        = number
  default     = null
}
