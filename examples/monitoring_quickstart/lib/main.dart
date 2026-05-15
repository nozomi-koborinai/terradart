/// Monitoring quickstart -- Phase 4.5 Wave 3 end-to-end example.
///
/// Defines a `LatencyAlertStack` that provisions a Cloud Monitoring alert
/// policy (`api-p95-latency`) firing when:
/// - Cloud Run request latency p95 exceeds 1500 ms for 5 minutes,
/// - aligned over 60-second windows via `Aligner.alignPercentile95`,
/// - reduced across all revisions of the `api` service with
///   `Reducer.reducePercentile95`,
/// - rate-limited to 1 notification per 5 minutes
///   (`NotificationRateLimit(period: '300s')`),
/// - auto-closing after 30 minutes if the underlying metric clears
///   (`autoClose: '1800s'`),
///
/// demonstrating the `AlertCondition` multi-nullable schema-faithful
/// modeling, the typed `Comparison` / `Aligner` / `Reducer` /
/// `EvaluationMissingData` enums, and the `AlertStrategy` helper.
library;

import 'dart:convert' as dart_convert;
import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/monitoring.dart';
import 'package:terradart_google/provider.dart';

class LatencyAlertStack extends Stack {
  LatencyAlertStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
        ) {
    add(
      GoogleMonitoringAlertPolicy(
        localName: 'api_p95_latency',
        displayName: TfArg.literal('api-p95-latency'),
        combiner: TfArg.literal(AlertCombiner.or),
        severity: TfArg.literal(AlertSeverity.warning),
        // Replace with `TfArg.ref(...)` to a real GoogleMonitoringNotificationChannel
        // once that resource lands; for the quickstart we use a placeholder
        // resource path so the synth output passes `terraform validate`.
        notificationChannels: TfArg.literal(const [
          'projects/your-project/notificationChannels/your-channel-id',
        ]),
        conditions: [
          AlertCondition(
            displayName: TfArg.literal('p95 > 1500ms for 5m'),
            conditionThreshold: ConditionThreshold(
              filter: TfArg.literal(
                'metric.type="run.googleapis.com/request_latencies" '
                'AND resource.label.service_name="api"',
              ),
              comparison: TfArg.literal(Comparison.gt),
              duration: TfArg.literal('300s'),
              thresholdValue: TfArg.literal(1500),
              evaluationMissingData: TfArg.literal(EvaluationMissingData.noOp),
              aggregations: [
                Aggregation(
                  alignmentPeriod: TfArg.literal('60s'),
                  perSeriesAligner: Aligner.percentile95,
                  crossSeriesReducer: Reducer.percentile95,
                  groupByFields:
                      TfArg.literal(const ['resource.label.revision_name']),
                ),
              ],
            ),
          ),
        ],
        alertStrategy: AlertStrategy(
          autoClose: TfArg.literal('1800s'),
          notificationRateLimit:
              NotificationRateLimit(period: TfArg.literal('300s')),
        ),
      ),
    );
  }

  @override
  Future<void> synth({required String outDir}) async {
    final result = StackSynth.synth(this);
    await Directory(outDir).create(recursive: true);
    final tfFile = File('$outDir/main.tf.json');
    await tfFile.writeAsString(
      const dart_convert.JsonEncoder.withIndent('  ').convert(result.tfJson),
    );
  }
}
