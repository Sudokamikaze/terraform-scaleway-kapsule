variable "kapsule_name" {
  default = ""
}

variable "kapsule_size" {
  default = 1
}

variable "kapsule_pg_name" {
  default = ""
}

variable "kapsule_pg_policy_type" {
  default = "max_availability"
}

variable "kapsule_pg_policy_mode" {
  default = "enforced"
}

variable "kapsule_pg_zone" {
  default = ""
}

variable "kapsule_k8s_version" {
  default = ""
}

variable "kapsule_cni" {
  default = ""
}

variable "kapsule_dashboard" {
  default = ""
}

variable "kapsule_ingress" {
  default = ""
}

variable "kapsule_tags" {
  description = "The set of basic tags."
  type        = list(string)
}

variable "kapsule_node_type" {
  default = ""
}

variable "kapsule_autoscalling" {
  default = ""
}

variable "kapsule_autohealing " {
  default = ""
}

variable "kapsule_autoscalling_lowcap" {
  default = var.kapsule_size
}

variable "kapsule_autoscalling_highcap" {
  default = "${var.kapsule_autoscalling_lowcap + 3}"
}

variable "kapsule_autoscalling_disable_scaledown" {
  default = ""
}
