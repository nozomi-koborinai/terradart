# Monitoring quickstart

End-to-end terradart example for a Cloud Monitoring alert policy. Provisions an alert (`api-p95-latency`) that fires when Cloud Run request latency p95 exceeds 1500ms for 5 minutes. Demonstrates the typed `Comparison`, `Aligner`, `Reducer`, and `EvaluationMissingData` enums and the `AlertStrategy` / `NotificationRateLimit` helper classes.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
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
GCP_PROJECT_ID=your-project-id dart run bin/infra.dart
cd tf-out
terraform init
terraform plan
terraform apply
```

Before `terraform apply`, replace the placeholder notification channel path (`projects/your-project/notificationChannels/your-channel-id`) in `lib/main.dart` with a real `TfArg.ref(channel.idRef)` to a notification channel resource, or with the literal `projects/<p>/notificationChannels/<id>` of an existing channel.

## What gets created

- A monitoring alert policy `api-p95-latency` with:
  - Severity: `AlertSeverity.warning`, combiner: `AlertCombiner.or`.
  - One `AlertCondition` with `ConditionThreshold` over `metric.type="run.googleapis.com/request_latencies"` for service `api`:
    - `Comparison.gt`, threshold value 1500, duration 5 minutes (`'300s'`).
    - `EvaluationMissingData.noOp` so missing data does not raise the alert.
    - 60-second alignment via `Aligner.percentile95`, cross-revision reduction via `Reducer.percentile95`, grouped by `resource.label.revision_name`.
  - `AlertStrategy` with `autoClose: '1800s'` (30-minute auto-resolve) and `NotificationRateLimit(period: '300s')`.

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

- Browse [terradart_google's monitoring source](https://github.com/nozomi-koborinai/terradart/blob/main/packages/terradart_google/lib/src/monitoring/google_monitoring_alert_policy.dart) for the full `AlertCondition` surface (also covers absent / matched_log / MQL / PromQL / SQL condition variants).
