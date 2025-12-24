terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic" # これを書くことで hashicorp/newrelic を見に行くのを防ぎます
    }
  }
}

resource "newrelic_one_dashboard" "standard" {
  name = "${var.tenant_name} 標準監視ダッシュボード"

  page {
    name = "システム負荷"
    widget_line {
      title = "CPU使用率 (%)"
      row    = 1
      column = 1
      nrql   = "SELECT average(cpuPercent) FROM SystemSample WHERE hostname = '${var.target_hostname}' TIMESERIES"
    }
  }
}
