resource "kion_cloud_rule" "this" {
  name        = var.name
  description = var.description

  dynamic "aws_iam_policies" {
    for_each = var.aws_iam_policies
    content {
      id = aws_iam_policies.value.id
    }
  }

  dynamic "owner_users" {
    for_each = var.owner_users
    content {
      id = owner_users.value.id
    }
  }

  dynamic "owner_user_groups" {
    for_each = var.owner_user_groups
    content {
      id = owner_user_groups.value.id
    }
  }

  labels = var.labels

  dynamic "aws_cloudformation_templates" {
    for_each = var.aws_cloudformation_templates
    content {
      id = aws_cloudformation_templates.value.id
    }
  }

  dynamic "azure_arm_template_definitions" {
    for_each = var.azure_arm_template_definitions
    content {
      id = azure_arm_template_definitions.value.id
    }
  }

  dynamic "azure_policy_definitions" {
    for_each = var.azure_policy_definitions
    content {
      id = azure_policy_definitions.value.id
    }
  }

  dynamic "azure_role_definitions" {
    for_each = var.azure_role_definitions
    content {
      id = azure_role_definitions.value.id
    }
  }

  dynamic "compliance_standards" {
    for_each = var.compliance_standards
    content {
      id = compliance_standards.value.id
    }
  }

  dynamic "gcp_iam_roles" {
    for_each = var.gcp_iam_roles
    content {
      id = gcp_iam_roles.value.id
    }
  }

  dynamic "internal_aws_amis" {
    for_each = var.internal_aws_amis
    content {
      id = internal_aws_amis.value.id
    }
  }

  dynamic "internal_aws_service_catalog_portfolios" {
    for_each = var.internal_aws_service_catalog_portfolios
    content {
      id = internal_aws_service_catalog_portfolios.value.id
    }
  }

  dynamic "ous" {
    for_each = var.ous
    content {
      id = ous.value.id
    }
  }

  dynamic "projects" {
    for_each = var.projects
    content {
      id = projects.value.id
    }
  }

  dynamic "service_control_policies" {
    for_each = var.service_control_policies
    content {
      id = service_control_policies.value.id
    }
  }

  pre_webhook_id  = var.pre_webhook_id
  post_webhook_id = var.post_webhook_id
}
