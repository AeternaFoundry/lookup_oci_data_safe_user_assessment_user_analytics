variable "data_safe_user_assessment_user_analytics_lookup" {
  description = <<EOT
Map of data_safe_user_assessment_user_analytics_lookup, attributes below
Required:
    - user_assessment_id
Optional:
    - access_level
    - account_status
    - authentication_type
    - compartment_id_in_subtree
    - target_id
    - time_last_login_greater_than_or_equal_to
    - time_last_login_less_than
    - time_password_expiry_greater_than_or_equal_to
    - time_password_expiry_less_than
    - time_password_last_changed_greater_than_or_equal_to
    - time_password_last_changed_less_than
    - time_user_created_greater_than_or_equal_to
    - time_user_created_less_than
    - user_category
    - user_key
    - user_name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    user_assessment_id                                  = string
    access_level                                        = optional(string)
    account_status                                      = optional(string)
    authentication_type                                 = optional(string)
    compartment_id_in_subtree                           = optional(bool)
    target_id                                           = optional(string)
    time_last_login_greater_than_or_equal_to            = optional(string)
    time_last_login_less_than                           = optional(string)
    time_password_expiry_greater_than_or_equal_to       = optional(string)
    time_password_expiry_less_than                      = optional(string)
    time_password_last_changed_greater_than_or_equal_to = optional(string)
    time_password_last_changed_less_than                = optional(string)
    time_user_created_greater_than_or_equal_to          = optional(string)
    time_user_created_less_than                         = optional(string)
    user_category                                       = optional(string)
    user_key                                            = optional(string)
    user_name                                           = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

