resource "kubernetes_persistent_volume" "mongo_pv" {
    metadate {
        name = "mongo-pv"
    }

    spec {
        capacity = {
            storage = "10Gi"
        }

        access_modes = ["ReadWriteOnce"]
        persistent_vo;ume_reclaim_policy = "Retain"
        storage_class_name = "mongo-sc"
        persistent_volume_source {
            #aws_elastic_block_store{
                #fstype = "ext4"
            
            #}
            host_path {
                path = "/mnt/data"
            }
        }
    }
}