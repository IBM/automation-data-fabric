variable "gitops-cp-data-virt-svc_cluster_ingress_hostname" {
  type = string
  description = "Ingress hostname of the IKS cluster."
  default = ""
}
variable "gitops-cp-data-virt-svc_common_services_namespace" {
  type = string
  description = "Namespace for cpd commmon services"
  default = "ibm-common-services"
}
variable "var_cpd_operators_ns" {
  type = string
  description = "Namespace for cpd operators"
  default = "cpd-operators"
}
variable "var_cpd_ns" {
  type = string
  description = "CPD namespace"
  default = "cp4d"
}
variable "gitops-cp-data-virt-svc_operator_channel" {
  type = string
  description = "operator channel"
  default = "v1.7"
}
variable "gitops-cp-data-virt-svc_instance_version" {
  type = string
  description = "Instance version"
  default = "1.7.8"
}
variable "gitops-cp-data-virt-svc_license" {
  type = string
  description = "License type"
  default = "Enterprise"
}
variable "gitops-cp-data-virt-svc_install_plan" {
  type = string
  description = "install plan"
  default = "Automatic"
}
variable "gitops-cp-data-virt-svc_size" {
  type = string
  description = "Size"
  default = "small"
}
variable "gitops-cp-data-virt-svc_sub_syncwave" {
  type = string
  description = "Sync Wave"
  default = "-8"
}
variable "gitops-cp-data-virt-svc_inst_syncwave" {
  type = string
  description = "Sync Wave"
  default = "-6"
}
variable "gitops-cp-data-virtualization_operator_namespace" {
  type = string
  description = "operator namespace"
  default = "cpd-operators"
}
variable "gitops-cp-data-virtualization_cpu_size" {
  type = string
  description = "CPU Request Size"
  default = "6"
}
variable "gitops-cp-data-virtualization_memory_request_size" {
  type = string
  description = "Memory Request Size"
  default = "16Gi"
}
variable "gitops-cp-data-virtualization_storage_class" {
  type = string
  description = "Storage Class for data persistence"
  default = "portworx-db2-rwx-sc"
}
variable "gitops-cp-data-virtualization_persistence_storage_size" {
  type = string
  description = "Storage Size for data persistence"
  default = "50Gi"
}
variable "gitops-cp-data-virtualization_caching_storage_size" {
  type = string
  description = "Storage Size for Caching data"
  default = "50Gi"
}
variable "gitops-cp-data-virtualization_worker_storage_size" {
  type = string
  description = "Storage Size for workers data persistence"
  default = "50Gi"
}
variable "gitops-cp-watson-studio_cluster_ingress_hostname" {
  type = string
  description = "Ingress hostname of the IKS cluster."
  default = ""
}
variable "gitops-cp-watson-studio_common_services_namespace" {
  type = string
  description = "Namespace for cpd commmon services"
  default = "ibm-common-services"
}
variable "gitops-cp-watson-studio_operator_channel" {
  type = string
  description = "operator channel"
  default = "v2.0"
}
variable "gitops-cp-watson-studio_instance_version" {
  type = string
  description = "Instance version"
  default = "4.0.9"
}
variable "gitops-cp-watson-studio_license" {
  type = string
  description = "License type"
  default = "Enterprise"
}
variable "gitops-cp-watson-studio_storage_class" {
  type = string
  description = "Storage class for the instance"
  default = "portworx-shared-gp3"
}
variable "gitops-cp-watson-studio_storage_vendor" {
  type = string
  description = "Storage vendor for the instance"
  default = "portworx"
}
variable "gitops-cp-watson-studio_install_plan" {
  type = string
  description = "install plan"
  default = "Automatic"
}
variable "gitops-cp-watson-studio_sub_syncwave" {
  type = string
  description = "Sync Wave"
  default = "-16"
}
variable "gitops-cp-watson-studio_inst_syncwave" {
  type = string
  description = "Sync Wave"
  default = "-14"
}
variable "gitops-cp-wkc_operator_channel" {
  type = string
  description = "operator channel"
  default = "v1.0"
}
variable "gitops-cp-wkc_instance_version" {
  type = string
  description = "Instance version"
  default = "4.0.9"
}
variable "gitops-cp-wkc_license" {
  type = string
  description = "License type"
  default = "Enterprise"
}
variable "gitops-cp-wkc_storage_class" {
  type = string
  description = "Storage class for the instance"
  default = "portworx-shared-gp3"
}
variable "gitops-cp-wkc_storage_vendor" {
  type = string
  description = "Storage vendor for the instance"
  default = "portworx"
}
variable "gitops-cp-wkc_install_plan" {
  type = string
  description = "install plan"
  default = "Automatic"
}
variable "gitops-cp-wkc_wkc_set_kernel_params" {
  type = string
  description = "WKC Set Kernel Parameters"
  default = "True"
}
variable "gitops-cp-wkc_iis_set_kernel_params" {
  type = string
  description = "IIS Set Kernel Parameters"
  default = "True"
}
variable "gitops-cp-wkc_sub_syncwave" {
  type = string
  description = "Sync Wave"
  default = "-20"
}
variable "gitops-cp-wkc_inst_syncwave" {
  type = string
  description = "Sync Wave"
  default = "-18"
}
variable "gitops-cp-wml_cluster_ingress_hostname" {
  type = string
  description = "Ingress hostname of the IKS cluster."
  default = ""
}
variable "gitops-cp-wml_operator_channel" {
  type = string
  description = "operator channel"
  default = "v1.1"
}
variable "gitops-cp-wml_instance_version" {
  type = string
  description = "Instance version"
  default = "4.0.9"
}
variable "gitops-cp-wml_license" {
  type = string
  description = "License type"
  default = "Enterprise"
}
variable "gitops-cp-wml_storage_class" {
  type = string
  description = "Storage class for the instance"
  default = "portworx-shared-gp3"
}
variable "gitops-cp-wml_storage_vendor" {
  type = string
  description = "Storage vendor for the instance"
  default = "portworx"
}
variable "gitops-cp-wml_install_plan" {
  type = string
  description = "install plan"
  default = "Automatic"
}
variable "gitops-cp-wml_install_scale" {
  type = string
  description = "install scale"
  default = "small"
}
variable "gitops-cp-wml_sub_syncwave" {
  type = string
  description = "Sync Wave"
  default = "-12"
}
variable "gitops-cp-wml_inst_syncwave" {
  type = string
  description = "Sync Wave"
  default = "-10"
}
variable "datafab_namespace_name" {
  type = string
  description = "The value that should be used for the namespace"
  default = "datafab-services"
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
