variable "tenant_name" {
  description = "テナント名（チーム名）"
  type        = string
}

variable "target_hostname" {
  description = "監視対象のホスト名（Macのターミナルで 'hostname' と打つと出る名前）"
  type        = string
}
