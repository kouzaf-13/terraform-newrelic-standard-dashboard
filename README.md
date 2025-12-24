# New Relic Standard Dashboard Module

このモジュールは、組織内の各テナント向けに「標準的なObservabilityダッシュボード」を自動生成します。

## 特徴
* システム負荷（CPU/メモリ）の可視化
* 組織標準のSLOに基づいたチャート配置
* テナント名による自動グルーピング

## 使用方法

```hcl
module "my_dashboard" {
  source  = "app.terraform.io/fumika-kouzaki-terraform/standard-dashboard/newrelic"
  version = "1.0.1"

  tenant_name     = "Team-A"
  target_hostname = "my-macbook-pro"
}
