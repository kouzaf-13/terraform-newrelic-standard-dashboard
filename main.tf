terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
    }
  }
}

resource "newrelic_one_dashboard" "standard" {
  name = "${var.tenant_name} 標準監視ダッシュボード"

  page {
    name = "システム負荷"
    
    widget_line {
      title  = "CPU使用率 (%)"
      row    = 1
      column = 1
      width  = 4
      height = 3

      nrql_query {
        query = "SELECT average(cpuPercent) FROM SystemSample WHERE hostname = '${var.target_hostname}' TIMESERIES"
      }
    }

    widget_line {
      title  = "メモリ使用率 (%)"
      row    = 1
      column = 5
      width  = 4
      height = 3

      nrql_query {
        query = "SELECT average(memoryUsedPercent) FROM SystemSample WHERE hostname = '${var.target_hostname}' TIMESERIES"
      }
    }
  }
}
