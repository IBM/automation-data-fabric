variable "aws-s3-instance_bucket_prefix" {
  type = string
  description = "(required since we are not using 'bucket') Creates a unique bucket name beginning with the specified prefix. Conflicts with bucket."
  default = "datafabric"
}
variable "aws-s3-instance_acl" {
  type = string
  description = "(Optional) The canned ACL to apply. Defaults to private. Conflicts with grant."
  default = "private"
}
variable "aws-s3-instance_tags" {
  type = string
  description = "(Optional) A mapping of tags to assign to the bucket."
  default = "{ environment = swew terraform = true }"
}
variable "var_aws_region" {
  type = string
  description = "Please set the region where the resouces to be created "
  default = "ap-south-1"
}
variable "var_aws_access_key" {
  type = string
  description = "the value of var_aws_access_key"
  default = "XXXXXXXXX"
}
variable "var_aws_secret_key" {
  type = string
  description = "the value of var_aws_secret_key"
  default = "XXXXXXXXXXXX"
}
variable "region" {
  type = string
  description = "the value of region"
}
variable "access_key" {
  type = string
  description = "the value of access_key"
}
variable "secret_key" {
  type = string
  description = "the value of secret_key"
}
variable "aws-s3-bucket_acl_value" {
  type = string
  description = "the value of aws-s3-bucket_acl_value"
  default = "private"
}
variable "aws-s3-bucket_file_path" {
  type = string
  description = "Path to a folder that will be read and uploaded "
  default = "Datafiles/aws/"
}
variable "var_cpd_ns" {
  type = string
  description = "CPD namespace"
  default = "cp4d"
}
variable "var_cpd_operators_ns" {
  type = string
  description = "Namespace for cpd operators"
  default = "cpd-operators"
}
variable "gitops-cp-data-fabric_s3_bucket_url" {
  type = string
  description = "Please set the bucket url where the resouces to be created "
  default = ""
}
variable "gitops-cp-data-fabric_wkc_inst_name" {
  type = string
  description = "WKC Instance name"
  default = "wkc-cr"
}
variable "gitops-cp-data-fabric_ws_inst_name" {
  type = string
  description = "WS Instance name"
  default = "ws-cr"
}
variable "gitops-cp-data-fabric_wml_inst_name" {
  type = string
  description = "WML Instance name"
  default = "ibm-cpd-wml-operator-subscription"
}
variable "gitops-cp-data-fabric_dv_svc_inst_name" {
  type = string
  description = "DV Instance name"
  default = "ibm-dv-operator-catalog-subscription"
}
variable "datafab_namespace_name" {
  type = string
  description = "The value that should be used for the namespace"
  default = "datafab-setup"
}
variable "datafab_namespace_ci" {
  type = bool
  description = "Flag indicating that this namespace will be used for development (e.g. configmaps and secrets)"
  default = false
}
variable "datafab_namespace_create_operator_group" {
  type = bool
  description = "Flag indicating that an operator group should be created in the namespace"
  default = true
}
variable "datafab_namespace_argocd_namespace" {
  type = string
  description = "The namespace where argocd has been deployed"
  default = "openshift-gitops"
}
variable "gitops_repo_host" {
  type = string
  description = "The host for the git repository. The git host used can be a GitHub, GitHub Enterprise, Gitlab, Bitbucket, Gitea or Azure DevOps server. If the host is null assumes in-cluster Gitea instance will be used."
  default = ""
}
variable "gitops_repo_type" {
  type = string
  description = "[Deprecated] The type of the hosted git repository."
  default = ""
}
variable "gitops_repo_org" {
  type = string
  description = "The org/group where the git repository exists/will be provisioned. If the value is left blank then the username org will be used."
  default = ""
}
variable "gitops_repo_project" {
  type = string
  description = "The project that will be used for the git repo. (Primarily used for Azure DevOps repos)"
  default = ""
}
variable "gitops_repo_username" {
  type = string
  description = "The username of the user with access to the repository"
  default = ""
}
variable "gitops_repo_token" {
  type = string
  description = "The personal access token used to access the repository"
  default = ""
}
variable "gitops_repo_gitea_host" {
  type = string
  description = "The host for the default gitea repository."
  default = ""
}
variable "gitops_repo_gitea_org" {
  type = string
  description = "The org/group for the default gitea repository. If not provided, the value will default to the username org"
  default = ""
}
variable "gitops_repo_gitea_username" {
  type = string
  description = "The username of the default gitea repository"
  default = ""
}
variable "gitops_repo_gitea_token" {
  type = string
  description = "The personal access token used to access the repository"
  default = ""
}
variable "gitops_repo_repo" {
  type = string
  description = "The short name of the repository (i.e. the part after the org/group name)"
}
variable "gitops_repo_branch" {
  type = string
  description = "The name of the branch that will be used. If the repo already exists (provision=false) then it is assumed this branch already exists as well"
  default = "main"
}
variable "gitops_repo_public" {
  type = bool
  description = "Flag indicating that the repo should be public or private"
  default = false
}
variable "gitops_repo_gitops_namespace" {
  type = string
  description = "The namespace where ArgoCD is running in the cluster"
  default = "openshift-gitops"
}
variable "gitops_repo_server_name" {
  type = string
  description = "The name of the cluster that will be configured via gitops. This is used to separate the config by cluster"
  default = "default"
}
variable "gitops_repo_sealed_secrets_cert" {
  type = string
  description = "The certificate/public key used to encrypt the sealed secrets"
  default = ""
}
variable "gitops_repo_strict" {
  type = bool
  description = "Flag indicating that an error should be thrown if the repo already exists"
  default = false
}
variable "debug" {
  type = bool
  description = "Flag indicating that debug loggging should be enabled"
  default = false
}
