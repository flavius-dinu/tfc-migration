terraform {
  required_providers {
    spacelift = {
      source  = "spacelift-io/spacelift"
      version = "~> 1.0"
    }
  }
}

resource "spacelift_stack" "aks_argocd" {
  github_enterprise {
    namespace = "flavius-dinu"
  }
  autodeploy        = false
  branch            = "main"
  name              = "aks-argocd"
  project_root      = ""
  repository        = "aks-argocd"
  terraform_version = "1.4.4"

  # 8< --------------------------------------------------------------
  # Delete the following line after the stack has been created
  import_state_file = "/mnt/workspace/state-import/aks-argocd.tfstate"
  # -------------------------------------------------------------- 8<
}


resource "spacelift_stack" "aks_argocd2" {
  github_enterprise {
    namespace = "flavius-dinu"
  }
  autodeploy        = false
  branch            = "main"
  name              = "aks-argocd2"
  project_root      = ""
  repository        = "aks-argocd"
  terraform_version = "1.4.4"

  # 8< --------------------------------------------------------------
  # Delete the following line after the stack has been created
  import_state_file = "/mnt/workspace/state-import/aks-argocd2.tfstate"
  # -------------------------------------------------------------- 8<
}

