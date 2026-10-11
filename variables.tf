variable "colab_notebook_executions" {
  description = <<EOT
Map of colab_notebook_executions, attributes below
Required:
    - display_name
    - gcs_output_uri
    - location
Optional:
    - deletion_policy
    - execution_timeout
    - execution_user
    - notebook_execution_job_id
    - notebook_runtime_template_resource_name
    - project
    - service_account
    - custom_environment_spec (block):
        - machine_spec (optional, block):
            - accelerator_count (optional)
            - accelerator_type (optional)
            - machine_type (optional)
        - network_spec (optional, block):
            - enable_internet_access (optional)
            - network (optional)
            - subnetwork (optional)
        - persistent_disk_spec (optional, block):
            - disk_size_gb (optional)
            - disk_type (optional)
        - shielded_instance_config (optional, block):
            - enable_integrity_monitoring (optional)
            - enable_secure_boot (optional)
            - enable_vtpm (optional)
    - dataform_repository_source (block):
        - commit_sha (optional)
        - dataform_repository_resource_name (required)
    - direct_notebook_source (block):
        - content (required)
    - gcs_notebook_source (block):
        - generation (optional)
        - uri (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
    - workbench_runtime (block):
        - vm_image (required, block):
            - family (optional)
            - name (optional)
            - project (optional)
EOT

  type = map(object({
    display_name                            = string
    gcs_output_uri                          = string
    location                                = string
    deletion_policy                         = optional(string)
    execution_timeout                       = optional(string)
    execution_user                          = optional(string)
    notebook_execution_job_id               = optional(string)
    notebook_runtime_template_resource_name = optional(string)
    project                                 = optional(string)
    service_account                         = optional(string)
    custom_environment_spec = optional(object({
      machine_spec = optional(object({
        accelerator_count = optional(number)
        accelerator_type  = optional(string)
        machine_type      = optional(string)
      }))
      network_spec = optional(object({
        enable_internet_access = optional(bool)
        network                = optional(string)
        subnetwork             = optional(string)
      }))
      persistent_disk_spec = optional(object({
        disk_size_gb = optional(string)
        disk_type    = optional(string)
      }))
      shielded_instance_config = optional(object({
        enable_integrity_monitoring = optional(bool)
        enable_secure_boot          = optional(bool)
        enable_vtpm                 = optional(bool)
      }))
    }))
    dataform_repository_source = optional(object({
      commit_sha                        = optional(string)
      dataform_repository_resource_name = string
    }))
    direct_notebook_source = optional(object({
      content = string
    }))
    gcs_notebook_source = optional(object({
      generation = optional(string)
      uri        = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
    workbench_runtime = optional(object({
      vm_image = object({
        family  = optional(string)
        name    = optional(string)
        project = optional(string)
      })
    }))
  }))
}

