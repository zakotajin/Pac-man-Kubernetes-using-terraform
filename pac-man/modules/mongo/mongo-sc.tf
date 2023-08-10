resource "kubernetes_storage_class" "mongo_sc" {
    metadata {
        name = "mongo-sc"

        annotations = {
            "storageclass.kubernetes.io/is-default-class" = "true"
        }
    }

    strage_provisioner = "kubernetes.io/aws-ebs"
    reclaim_policy = "Retain"
    parameters = {
        fstype = "ext4"
        type = "gp2"
    }
}