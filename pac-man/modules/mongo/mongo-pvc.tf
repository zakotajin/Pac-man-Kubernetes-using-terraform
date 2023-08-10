resource "kubernetes_persistent_volume_claim" "mongo_pv" {
    metadate {
        name = "mongo-storage"
        namespace = var.kubernetes_namespace
    }

    spec {
        access_modes = ["ReadWriteOnce"]

        resource {
            requests = {
                storage = "8Gi"
            }
        }

        storage_class_name = "mongo-sc"
    }
}