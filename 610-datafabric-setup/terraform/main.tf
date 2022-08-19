module "aws-s3-bucket" {
  source = "github.com/cloud-native-toolkit/terraform-aws-s3-bucket?ref=v1.1.1"

  access_key = var.var_aws_access_key
  acl_value = var.aws-s3-bucket_acl_value
  bucket_id = module.aws-s3-instance.s3_bucket_id
  file_path = var.aws-s3-bucket_file_path
  region = module.aws-s3-instance.s3_bucket_region
  secret_key = var.var_aws_secret_key
}
module "aws-s3-instance" {
  source = "github.com/cloud-native-toolkit/terraform-aws-s3-instance?ref=v1.1.1"

  access_key = var.var_aws_access_key
  acl = var.aws-s3-instance_acl
  bucket_prefix = var.aws-s3-instance_bucket_prefix
  region = var.var_aws_region
  secret_key = var.var_aws_secret_key
  tags = var.aws-s3-instance_tags
}
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
module "gitops-cp-data-fabric" {
  source = "github.com/cloud-native-toolkit/terraform-gitops-cp-data-fabric?ref=v1.2.0"

  access_key = var.var_aws_access_key
  cpd_namespace = var.var_cpd_ns
  dv_svc_inst_name = var.gitops-cp-data-fabric_dv_svc_inst_name
  git_credentials = module.gitops_repo.git_credentials
  gitops_config = module.gitops_repo.gitops_config
  kubeseal_cert = module.gitops_repo.sealed_secrets_cert
  namespace = module.datafab_namespace.name
  operator_namespace = var.var_cpd_operators_ns
  s3_bucket_id = module.aws-s3-instance.s3_bucket_id
  s3_bucket_region = module.aws-s3-instance.s3_bucket_region
  s3_bucket_url = var.gitops-cp-data-fabric_s3_bucket_url
  secret_key = var.var_aws_secret_key
  server_name = module.gitops_repo.server_name
  wkc_inst_name = var.gitops-cp-data-fabric_wkc_inst_name
  wml_inst_name = var.gitops-cp-data-fabric_wml_inst_name
  ws_inst_name = var.gitops-cp-data-fabric_ws_inst_name
}
