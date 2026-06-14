/// Monitoring quickstart — Wave 3 + Wave 12 observability stack.
///
/// Provisions notification channel, uptime check, custom metric descriptor,
/// dashboard, Monitoring service + SLO, and a latency alert policy wired to
/// the channel.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/monitoring.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

final class LatencyAlertStack extends Stack {
  LatencyAlertStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
        ) {
    final apiMonitoring = add(
      GoogleProjectService(
        localName: 'api_monitoring',
        service: TfArg.literal('monitoring.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final oncallEmail = add(
      GoogleMonitoringNotificationChannel(
        localName: 'oncall_email',
        type: TfArg.literal('email'),
        displayName: TfArg.literal('On-call email'),
        labels: TfArg.literal({'email_address': 'oncall@example.com'}),
        dependsOn: [ResourceDependency(apiMonitoring)],
      ),
    );

    // Opaque custom service: `google_monitoring_service` (the typed variant)
    // requires a `basic_service`/identifier case at the API and cannot be
    // created with `service_id` alone, so use the custom-service resource.
    final apiService = add(
      GoogleMonitoringCustomService(
        localName: 'api',
        serviceId: TfArg.literal('api'),
        displayName: TfArg.literal('API service'),
        dependsOn: [ResourceDependency(apiMonitoring)],
      ),
    );

    add(
      GoogleMonitoringCustomService(
        localName: 'checkout_api',
        serviceId: TfArg.literal('checkout-api'),
        displayName: TfArg.literal('Checkout API'),
        dependsOn: [ResourceDependency(apiMonitoring)],
      ),
    );

    final publicUrls = add(
      GoogleMonitoringGroup(
        localName: 'public_urls',
        displayName: TfArg.literal('Public URLs'),
        filter: TfArg.literal('resource.type="uptime_url"'),
        dependsOn: [ResourceDependency(apiMonitoring)],
      ),
    );

    add(
      GoogleMonitoringUptimeCheckConfig(
        localName: 'api_uptime',
        displayName: TfArg.literal('Public API healthz'),
        timeout: TfArg.literal('10s'),
        period: TfArg.literal('60s'),
        httpCheck: MonitoringUptimeCheckConfigHttpCheck(
          path: TfArg.literal('/healthz'),
          port: TfArg.literal(443),
          useSsl: TfArg.literal(true),
          validateSsl: TfArg.literal(true),
          requestMethod: MonitoringUptimeCheckHttpMethod.get,
        ),
        target: MonitoringUptimeCheckConfigMonitoredResource(
          type: TfArg.literal('uptime_url'),
          labels: {
            'host': 'api.example.com',
            'project_id': projectId,
          },
        ),
        selectedRegions: const [
          MonitoringUptimeCheckRegion.usa,
          MonitoringUptimeCheckRegion.europe,
          MonitoringUptimeCheckRegion.asiaPacific,
        ],
        dependsOn: [
          ResourceDependency(apiMonitoring),
          ResourceDependency(publicUrls),
        ],
      ),
    );

    add(
      GoogleMonitoringMetricDescriptor(
        localName: 'api_latency_custom',
        type: TfArg.literal('custom.googleapis.com/api/latency_ms'),
        metricKind: TfArg.literal(MonitoringMetricKind.gauge),
        valueType: TfArg.literal(MonitoringValueType.doubleValue),
        displayName: TfArg.literal('API latency (custom)'),
        description:
            TfArg.literal('Custom gauge for API latency in milliseconds.'),
        dependsOn: [ResourceDependency(apiMonitoring)],
      ),
    );

    add(
      GoogleMonitoringDashboard(
        localName: 'api_overview',
        dashboardJson: TfArg.literal('''
{
  "displayName": "API overview",
  "mosaicLayout": {
    "columns": 12,
    "tiles": []
  }
}
'''),
        dependsOn: [ResourceDependency(apiMonitoring)],
      ),
    );

    add(
      GoogleMonitoringSlo(
        localName: 'api_availability',
        // Custom services have no derived telemetry, so a `basic_sli`
        // (availability/latency) cannot be evaluated against them; use a
        // request-based good/total ratio on the Cloud Run request metric.
        service: TfArg.ref(apiService.serviceIdRef),
        goal: TfArg.literal(0.99),
        displayName: TfArg.literal('API availability'),
        rollingPeriodDays: TfArg.literal(30),
        sli: MonitoringSloRequestBasedSli(
          goodTotalRatio: MonitoringSloGoodTotalRatio(
            goodServiceFilter: TfArg.literal(
              'metric.type="run.googleapis.com/request_count" '
              'AND resource.type="cloud_run_revision" '
              'AND metric.label.response_code_class="2xx"',
            ),
            totalServiceFilter: TfArg.literal(
              'metric.type="run.googleapis.com/request_count" '
              'AND resource.type="cloud_run_revision"',
            ),
          ),
        ),
        dependsOn: [ResourceDependency(apiService)],
      ),
    );

    // A `google_monitoring_monitored_project` adds *another* project to this
    // project's metrics scope (multi-project observability). A project is
    // already a member of its own default metrics scope, so self-linking it
    // (name == scoping project) is rejected by the API. To dogfood this
    // resource, set `name` to a different project ID and grant
    // `roles/monitoring.admin` on both projects:
    //
    // GoogleMonitoringMonitoredProject(
    //   localName: 'metrics_scope_child',
    //   metricsScope: TfArg.literal('locations/global/metricsScopes/$projectId'),
    //   name: TfArg.literal('some-other-project-id'),
    // );

    add(
      GoogleMonitoringAlertPolicy(
        localName: 'api_p95_latency',
        displayName: TfArg.literal('api-p95-latency'),
        combiner: TfArg.literal(AlertCombiner.or),
        severity: TfArg.literal(AlertSeverity.warning),
        notificationChannels: TfArg.literal([
          'projects/$projectId/notificationChannels/oncall-email',
        ]),
        conditions: [
          MonitoringAlertPolicyAlertCondition(
            displayName: TfArg.literal('p95 > 1500ms for 5m'),
            conditionThreshold: MonitoringAlertPolicyConditionThreshold(
              filter: TfArg.literal(
                'metric.type="run.googleapis.com/request_latencies" '
                'AND resource.type="cloud_run_revision" '
                'AND resource.label.service_name="api"',
              ),
              comparison: TfArg.literal(Comparison.greaterThan),
              duration: TfArg.literal('300s'),
              thresholdValue: TfArg.literal(1500),
              evaluationMissingData: TfArg.literal(EvaluationMissingData.noOp),
              aggregations: [
                MonitoringAlertPolicyAggregation(
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
        alertStrategy: MonitoringAlertPolicyAlertStrategy(
          autoClose: TfArg.literal('1800s'),
          notificationRateLimit: MonitoringAlertPolicyNotificationRateLimit(
            period: TfArg.literal('300s'),
          ),
        ),
        dependsOn: [
          ResourceDependency(oncallEmail),
          ResourceDependency(apiMonitoring),
        ],
      ),
    );
  }
}
