terraform-kapsule-module
----

Terraform module for Scaleway's Kubernetes engine -- Kapsule

Example of usage:
```
module "kapsule-quantile" {
  source = "gris-gris/kapsule/scaleway"

  kapsule_name = "name"
  kapsule_node_type = "DEV1-M"
  kapsule_size = 1

  kapsule_k8s_version = "1.16.7"
  kapsule_cni = "weave"
  kapsule_dashboard = true
  kapsule_ingress = "nginx"

  kapsule_tags = [
    "Scope=rnd"
  ]

  kapsule_pg_name = "name"
  kapsule_pg_policy_type = "max_availability"
  kapsule_pg_policy_mode = "enforced"
  kapsule_pg_zone = "fr-par-1"

  kapsule_as = true # Note, if true kapsule_size will be ignored
  kapsule_ah = true
  kapsule_as_lowcap = var.kapsule_size
  kapsule_as_highcap = "${var.kapsule_as_lowcap + 3}"
  kapsule_as_disable_scaledown = false
}
```
