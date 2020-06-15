resource "signalfx_detector" "mydetectorse0" {
    name         = "Category Limit Alert Threshold: FarToken NEW"
    program_text = <<-EOF
A = data("jvm.cpu.load").percentile(pct=94).publish(label="A")
detect(when(A > 15)).publish('load warning')
EOF

    rule {
        detect_label  = "load warning"
        disabled      = false
        notifications = [
            "Email,foo-alerts@example.com",
        ]
        severity      = "Critical"
    }
}
