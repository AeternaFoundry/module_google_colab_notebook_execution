resource "google_colab_notebook_execution" "colab_notebook_executions" {
  for_each = var.colab_notebook_executions

  display_name                            = each.value.display_name
  gcs_output_uri                          = each.value.gcs_output_uri
  location                                = each.value.location
  deletion_policy                         = each.value.deletion_policy
  execution_timeout                       = each.value.execution_timeout
  execution_user                          = each.value.execution_user
  notebook_execution_job_id               = each.value.notebook_execution_job_id
  notebook_runtime_template_resource_name = each.value.notebook_runtime_template_resource_name
  project                                 = each.value.project
  service_account                         = each.value.service_account

  dynamic "custom_environment_spec" {
    for_each = each.value.custom_environment_spec != null ? [each.value.custom_environment_spec] : []
    content {
      dynamic "machine_spec" {
        for_each = custom_environment_spec.value.machine_spec != null ? [custom_environment_spec.value.machine_spec] : []
        content {
          accelerator_count = machine_spec.value.accelerator_count
          accelerator_type  = machine_spec.value.accelerator_type
          machine_type      = machine_spec.value.machine_type
        }
      }
      dynamic "network_spec" {
        for_each = custom_environment_spec.value.network_spec != null ? [custom_environment_spec.value.network_spec] : []
        content {
          enable_internet_access = network_spec.value.enable_internet_access
          network                = network_spec.value.network
          subnetwork             = network_spec.value.subnetwork
        }
      }
      dynamic "persistent_disk_spec" {
        for_each = custom_environment_spec.value.persistent_disk_spec != null ? [custom_environment_spec.value.persistent_disk_spec] : []
        content {
          disk_size_gb = persistent_disk_spec.value.disk_size_gb
          disk_type    = persistent_disk_spec.value.disk_type
        }
      }
      dynamic "shielded_instance_config" {
        for_each = custom_environment_spec.value.shielded_instance_config != null ? [custom_environment_spec.value.shielded_instance_config] : []
        content {
          enable_integrity_monitoring = shielded_instance_config.value.enable_integrity_monitoring
          enable_secure_boot          = shielded_instance_config.value.enable_secure_boot
          enable_vtpm                 = shielded_instance_config.value.enable_vtpm
        }
      }
    }
  }

  dynamic "dataform_repository_source" {
    for_each = each.value.dataform_repository_source != null ? [each.value.dataform_repository_source] : []
    content {
      commit_sha                        = dataform_repository_source.value.commit_sha
      dataform_repository_resource_name = dataform_repository_source.value.dataform_repository_resource_name
    }
  }

  dynamic "direct_notebook_source" {
    for_each = each.value.direct_notebook_source != null ? [each.value.direct_notebook_source] : []
    content {
      content = direct_notebook_source.value.content
    }
  }

  dynamic "gcs_notebook_source" {
    for_each = each.value.gcs_notebook_source != null ? [each.value.gcs_notebook_source] : []
    content {
      generation = gcs_notebook_source.value.generation
      uri        = gcs_notebook_source.value.uri
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }

  dynamic "workbench_runtime" {
    for_each = each.value.workbench_runtime != null ? [each.value.workbench_runtime] : []
    content {
      vm_image {
        family  = workbench_runtime.value.vm_image.family
        name    = workbench_runtime.value.vm_image.name
        project = workbench_runtime.value.vm_image.project
      }
    }
  }
}

