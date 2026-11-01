# Monitoring quickstart

End-to-end terradart example for a Cloud Monitoring alert policy. Provisions an alert (`api-p95-latency`) that fires when Cloud Run request latency p95 exceeds 1500ms for 5 minutes. Demonstrates the typed `Comparison`, `Aligner`, `Reducer`, and `EvaluationMissingData` enums and the `MonitoringAlertPolicyAlertStrategy` helper class.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with the Cloud Monitoring API enabled and credentials configured (`gcloud auth application-default login`).

## Layout

```
examples/monitoring_quickstart/
├── lib/main.dart        # LatencyAlertStack: alert policy
├── bin/infra.dart       # Synth entry
├── tf-out/              # (created on synth) main.tf.json
└── pubspec.yaml
```

## Usage

```bash
dart pub get
export GCP_PROJECT_ID=your-project-id
terradart plan
terradart apply
```

The alert policy notifies the in-stack `oncall_email` notification channel through its `id`, the server-assigned `projects/<p>/notificationChannels/<id>` path, so nothing needs replacing before `terradart apply`.

## What gets created

- A monitoring alert policy `api-p95-latency` with:
  - Severity: `AlertSeverity.warning`, combiner: `AlertCombiner.or`.
  - One `MonitoringAlertPolicyConditions` entry with a `MonitoringAlertPolicyConditionThreshold` over `metric.type="run.googleapis.com/request_latencies"` for service `api`:
    - `comparison: .greaterThan`, threshold value 1500, duration 5 minutes (`'300s'`).
    - `EvaluationMissingData.noOp` so missing data does not raise the alert.
    - 60-second alignment via `Aligner.percentile95`, cross-revision reduction via `Reducer.percentile95`, grouped by `resource.label.revision_name`.
  - `MonitoringAlertPolicyAlertStrategy` with `autoClose: .literal('1800s')` (30-minute auto-resolve). It sets no notification rate limit: the API accepts one only on log-based alert policies.

## Expected `tf-out/main.tf.json` (excerpt)

```json
{
  "resource": {
    "google_monitoring_alert_policy": {
      "api_p95_latency": {
        "display_name": "api-p95-latency",
        "combiner": "OR",
        "severity": "WARNING",
        "conditions": [
          {
            "display_name": "p95 > 1500ms for 5m",
            "condition_threshold": [
              {
                "filter": "metric.type=\"run.googleapis.com/request_latencies\" AND resource.label.service_name=\"api\"",
                "comparison": "COMPARISON_GT",
                "duration": "300s",
                "threshold_value": 1500,
                "evaluation_missing_data": "EVALUATION_MISSING_DATA_NO_OP",
                "aggregations": [
                  {
                    "alignment_period": "60s",
                    "per_series_aligner": "ALIGN_PERCENTILE_95",
                    "cross_series_reducer": "REDUCE_PERCENTILE_95",
                    "group_by_fields": ["resource.label.revision_name"]
                  }
                ]
              }
            ]
          }
        ],
        "alert_strategy": [
          { "auto_close": "1800s", "notification_rate_limit": [{ "period": "300s" }] }
        ]
      }
    }
  }
}
```

`Aligner` ships 19 variants and `Reducer` 14 — every value documented by the Cloud Monitoring API is type-safe at the Dart side.

## Next steps

- Browse [terradart_google's monitoring source](https://github.com/nozomi-koborinai/terradart/blob/main/packages/terradart_google/lib/src/monitoring/google_monitoring_alert_policy.dart) for the full `MonitoringAlertPolicyConditions` surface (also covers absent / matched_log / MQL / PromQL / SQL condition variants).
