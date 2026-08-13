# Observability Checklist

Quick reference for adding metrics, logs, and traces to services.

## Metrics
- [ ] Define SLOs for latency, error rate, and saturation
- [ ] Expose Prometheus `/metrics` endpoint
- [ ] Add labels for service, version, and environment

## Logs
- [ ] Structured JSON logs (no free-form text)
- [ ] Include request ID and trace ID in every entry
- [ ] Log at WARN/ERROR for actionable issues

## Traces
- [ ] Instrument with OpenTelemetry SDK
- [ ] Propagate context across async boundaries
- [ ] Set sampling strategy (e.g., tail-based)

## Dashboards
- [ ] Create per-service dashboard with golden signals
- [ ] Add alert rules with runbooks
- [ ] Review burn rate for SLO alerts

---
Add as needed for new services.