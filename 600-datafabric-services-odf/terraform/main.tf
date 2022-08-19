module "datafab_namespace" {
  source = "github.com/cloud-native-toolkit/terraform-gitops-namespace?ref=v1.11.2"

  argocd_namespace = var.datafab_namespace_argocd_namespace
  ci = var.datafab_namespace_ci
  create_operator_group = var.datafab_namespace_create_operator_group
  git_credentials = module.gitops_repo.git_credentials
  gitops_config = module.gitops_repo.gitops_config
  name = var.datafab_namespace_name
  server_name = module.gitops_repo.server_name
}
module "gitops_repo" {
  source = "github.com/cloud-native-toolkit/terraform-tools-gitops?ref=v1.21.0"

  branch = var.gitops_repo_branch
  debug = var.debug
  gitea_host = var.gitops_repo_gitea_host
  gitea_org = var.gitops_repo_gitea_org
  gitea_token = var.gitops_repo_gitea_token
  gitea_username = var.gitops_repo_gitea_username
  gitops_namespace = var.gitops_repo_gitops_namespace
  host = var.gitops_repo_host
  org = var.gitops_repo_org
  project = var.gitops_repo_project
  public = var.gitops_repo_public
  repo = var.gitops_repo_repo
  sealed_secrets_cert = var.gitops_repo_sealed_secrets_cert
  server_name = var.gitops_repo_server_name
  strict = var.gitops_repo_strict
  token = var.gitops_repo_token
  type = var.gitops_repo_type
  username = var.gitops_repo_username
}
module "gitops-cp-data-virt-svc" {
  source = "github.com/cloud-native-toolkit/terraform-gitops-cp-data-virt-svc?ref=v2.2.0"

  cluster_ingress_hostname = var.gitops-cp-data-virt-svc_cluster_ingress_hostname
  common_services_namespace = var.gitops-cp-data-virt-svc_common_services_namespace
  cpd_namespace = var.var_cpd_ns
  git_credentials = module.gitops_repo.git_credentials
  gitops_config = module.gitops_repo.gitops_config
  inst_syncwave = var.gitops-cp-data-virt-svc_inst_syncwave
  install_plan = var.gitops-cp-data-virt-svc_install_plan
  instance_version = var.gitops-cp-data-virt-svc_instance_version
  kubeseal_cert = module.gitops_repo.sealed_secrets_cert
  license = var.gitops-cp-data-virt-svc_license
  namespace = module.datafab_namespace.name
  operator_channel = var.gitops-cp-data-virt-svc_operator_channel
  operator_namespace = var.var_cpd_operators_ns
  server_name = module.gitops_repo.server_name
  size = var.gitops-cp-data-virt-svc_size
  sub_syncwave = var.gitops-cp-data-virt-svc_sub_syncwave
}
module "gitops-cp-data-virtualization" {
  source = "github.com/cloud-native-toolkit/terraform-gitops-cp-data-virtualization?ref=v1.1.0"

  caching_storage_size = var.gitops-cp-data-virtualization_caching_storage_size
  cpd_namespace = var.var_cpd_ns
  cpu_size = var.gitops-cp-data-virtualization_cpu_size
  git_credentials = module.gitops_repo.git_credentials
  gitops_config = module.gitops_repo.gitops_config
  kubeseal_cert = module.gitops_repo.sealed_secrets_cert
  memory_request_size = var.gitops-cp-data-virtualization_memory_request_size
  namespace = module.datafab_namespace.name
  operator_namespace = var.gitops-cp-data-virtualization_operator_namespace
  persistence_storage_size = var.gitops-cp-data-virtualization_persistence_storage_size
  server_name = module.gitops_repo.server_name
  storage_class = var.gitops-cp-data-virtualization_storage_class
  worker_storage_size = var.gitops-cp-data-virtualization_worker_storage_size
}
module "gitops-cp-watson-studio" {
  source = "github.com/cloud-native-toolkit/terraform-gitops-cp-watson-studio?ref=v1.3.0"

  cluster_ingress_hostname = var.gitops-cp-watson-studio_cluster_ingress_hostname
  common_services_namespace = var.gitops-cp-watson-studio_common_services_namespace
  cpd_namespace = var.var_cpd_ns
  git_credentials = module.gitops_repo.git_credentials
  gitops_config = module.gitops_repo.gitops_config
  inst_syncwave = var.gitops-cp-watson-studio_inst_syncwave
  install_plan = var.gitops-cp-watson-studio_install_plan
  instance_version = var.gitops-cp-watson-studio_instance_version
  kubeseal_cert = module.gitops_repo.sealed_secrets_cert
  license = var.gitops-cp-watson-studio_license
  namespace = module.datafab_namespace.name
  operator_channel = var.gitops-cp-watson-studio_operator_channel
  operator_namespace = var.var_cpd_operators_ns
  server_name = module.gitops_repo.server_name
  storage_class = var.gitops-cp-watson-studio_storage_class
  storage_vendor = var.gitops-cp-watson-studio_storage_vendor
  sub_syncwave = var.gitops-cp-watson-studio_sub_syncwave
}
module "gitops-cp-wkc" {
  source = "github.com/cloud-native-toolkit/terraform-gitops-cp-wkc?ref=v1.1.0"

  cpd_namespace = var.var_cpd_ns
  git_credentials = module.gitops_repo.git_credentials
  gitops_config = module.gitops_repo.gitops_config
  iis_set_kernel_params = var.gitops-cp-wkc_iis_set_kernel_params
  inst_syncwave = var.gitops-cp-wkc_inst_syncwave
  install_plan = var.gitops-cp-wkc_install_plan
  instance_version = var.gitops-cp-wkc_instance_version
  kubeseal_cert = module.gitops_repo.sealed_secrets_cert
  license = var.gitops-cp-wkc_license
  namespace = module.datafab_namespace.name
  operator_channel = var.gitops-cp-wkc_operator_channel
  operator_namespace = var.var_cpd_operators_ns
  server_name = module.gitops_repo.server_name
  storage_class = var.gitops-cp-wkc_storage_class
  storage_vendor = var.gitops-cp-wkc_storage_vendor
  sub_syncwave = var.gitops-cp-wkc_sub_syncwave
  wkc_set_kernel_params = var.gitops-cp-wkc_wkc_set_kernel_params
}
module "gitops-cp-wml" {
  source = "github.com/cloud-native-toolkit/terraform-gitops-cp-wml?ref=v1.2.0"

  cluster_ingress_hostname = var.gitops-cp-wml_cluster_ingress_hostname
  cpd_namespace = var.var_cpd_ns
  git_credentials = module.gitops_repo.git_credentials
  gitops_config = module.gitops_repo.gitops_config
  inst_syncwave = var.gitops-cp-wml_inst_syncwave
  install_plan = var.gitops-cp-wml_install_plan
  install_scale = var.gitops-cp-wml_install_scale
  instance_version = var.gitops-cp-wml_instance_version
  kubeseal_cert = module.gitops_repo.sealed_secrets_cert
  license = var.gitops-cp-wml_license
  namespace = module.datafab_namespace.name
  operator_channel = var.gitops-cp-wml_operator_channel
  operator_namespace = var.var_cpd_operators_ns
  server_name = module.gitops_repo.server_name
  storage_class = var.gitops-cp-wml_storage_class
  storage_vendor = var.gitops-cp-wml_storage_vendor
  sub_syncwave = var.gitops-cp-wml_sub_syncwave
}
