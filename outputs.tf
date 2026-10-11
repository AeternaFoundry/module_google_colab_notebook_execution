output "colab_notebook_executions_id" {
  description = "Map of id values across all colab_notebook_executions, keyed the same as var.colab_notebook_executions except keys with no id are omitted"
  value       = { for k, v in google_colab_notebook_execution.colab_notebook_executions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "colab_notebook_executions_custom_environment_spec" {
  description = "Map of custom_environment_spec values across all colab_notebook_executions, keyed the same as var.colab_notebook_executions except keys with no custom_environment_spec are omitted"
  value       = { for k, v in google_colab_notebook_execution.colab_notebook_executions : k => one(v.custom_environment_spec) if v.custom_environment_spec != null && length(v.custom_environment_spec) > 0 }
}
output "colab_notebook_executions_dataform_repository_source" {
  description = "Map of dataform_repository_source values across all colab_notebook_executions, keyed the same as var.colab_notebook_executions except keys with no dataform_repository_source are omitted"
  value       = { for k, v in google_colab_notebook_execution.colab_notebook_executions : k => one(v.dataform_repository_source) if v.dataform_repository_source != null && length(v.dataform_repository_source) > 0 }
}
output "colab_notebook_executions_deletion_policy" {
  description = "Map of deletion_policy values across all colab_notebook_executions, keyed the same as var.colab_notebook_executions except keys with no deletion_policy are omitted"
  value       = { for k, v in google_colab_notebook_execution.colab_notebook_executions : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "colab_notebook_executions_direct_notebook_source" {
  description = "Map of direct_notebook_source values across all colab_notebook_executions, keyed the same as var.colab_notebook_executions except keys with no direct_notebook_source are omitted"
  value       = { for k, v in google_colab_notebook_execution.colab_notebook_executions : k => one(v.direct_notebook_source) if v.direct_notebook_source != null && length(v.direct_notebook_source) > 0 }
}
output "colab_notebook_executions_display_name" {
  description = "Map of display_name values across all colab_notebook_executions, keyed the same as var.colab_notebook_executions except keys with no display_name are omitted"
  value       = { for k, v in google_colab_notebook_execution.colab_notebook_executions : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "colab_notebook_executions_execution_timeout" {
  description = "Map of execution_timeout values across all colab_notebook_executions, keyed the same as var.colab_notebook_executions except keys with no execution_timeout are omitted"
  value       = { for k, v in google_colab_notebook_execution.colab_notebook_executions : k => v.execution_timeout if v.execution_timeout != null && length(v.execution_timeout) > 0 }
}
output "colab_notebook_executions_execution_user" {
  description = "Map of execution_user values across all colab_notebook_executions, keyed the same as var.colab_notebook_executions except keys with no execution_user are omitted"
  value       = { for k, v in google_colab_notebook_execution.colab_notebook_executions : k => v.execution_user if v.execution_user != null && length(v.execution_user) > 0 }
}
output "colab_notebook_executions_gcs_notebook_source" {
  description = "Map of gcs_notebook_source values across all colab_notebook_executions, keyed the same as var.colab_notebook_executions except keys with no gcs_notebook_source are omitted"
  value       = { for k, v in google_colab_notebook_execution.colab_notebook_executions : k => one(v.gcs_notebook_source) if v.gcs_notebook_source != null && length(v.gcs_notebook_source) > 0 }
}
output "colab_notebook_executions_gcs_output_uri" {
  description = "Map of gcs_output_uri values across all colab_notebook_executions, keyed the same as var.colab_notebook_executions except keys with no gcs_output_uri are omitted"
  value       = { for k, v in google_colab_notebook_execution.colab_notebook_executions : k => v.gcs_output_uri if v.gcs_output_uri != null && length(v.gcs_output_uri) > 0 }
}
output "colab_notebook_executions_location" {
  description = "Map of location values across all colab_notebook_executions, keyed the same as var.colab_notebook_executions except keys with no location are omitted"
  value       = { for k, v in google_colab_notebook_execution.colab_notebook_executions : k => v.location if v.location != null && length(v.location) > 0 }
}
output "colab_notebook_executions_notebook_execution_job_id" {
  description = "Map of notebook_execution_job_id values across all colab_notebook_executions, keyed the same as var.colab_notebook_executions except keys with no notebook_execution_job_id are omitted"
  value       = { for k, v in google_colab_notebook_execution.colab_notebook_executions : k => v.notebook_execution_job_id if v.notebook_execution_job_id != null && length(v.notebook_execution_job_id) > 0 }
}
output "colab_notebook_executions_notebook_runtime_template_resource_name" {
  description = "Map of notebook_runtime_template_resource_name values across all colab_notebook_executions, keyed the same as var.colab_notebook_executions except keys with no notebook_runtime_template_resource_name are omitted"
  value       = { for k, v in google_colab_notebook_execution.colab_notebook_executions : k => v.notebook_runtime_template_resource_name if v.notebook_runtime_template_resource_name != null && length(v.notebook_runtime_template_resource_name) > 0 }
}
output "colab_notebook_executions_project" {
  description = "Map of project values across all colab_notebook_executions, keyed the same as var.colab_notebook_executions except keys with no project are omitted"
  value       = { for k, v in google_colab_notebook_execution.colab_notebook_executions : k => v.project if v.project != null && length(v.project) > 0 }
}
output "colab_notebook_executions_service_account" {
  description = "Map of service_account values across all colab_notebook_executions, keyed the same as var.colab_notebook_executions except keys with no service_account are omitted"
  value       = { for k, v in google_colab_notebook_execution.colab_notebook_executions : k => v.service_account if v.service_account != null && length(v.service_account) > 0 }
}
output "colab_notebook_executions_workbench_runtime" {
  description = "Map of workbench_runtime values across all colab_notebook_executions, keyed the same as var.colab_notebook_executions except keys with no workbench_runtime are omitted"
  value       = { for k, v in google_colab_notebook_execution.colab_notebook_executions : k => one(v.workbench_runtime) if v.workbench_runtime != null && length(v.workbench_runtime) > 0 }
}

