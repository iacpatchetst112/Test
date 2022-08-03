resource "kubernetes_replica_set" "example" {
  #zpc-skip-policy: ZS-K8S-00020 
  metadata {
    name      = "terraform-example"
    namespace = "default"
    labels = {
      test = "MyExampleApp"
    }
  }

  spec {
    automount_service_account_token = true
    selector {
      match_labels = {
        test = "MyExampleApp"
      }
    }
  }
}
