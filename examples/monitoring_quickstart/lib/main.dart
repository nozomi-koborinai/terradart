/// Monitoring quickstart — Wave 3 + Wave 12 observability stack.
///
/// Provisions notification channel, uptime check, custom metric descriptor,
/// dashboard, Monitoring service + SLO, a latency alert policy wired to
/// the channel, and an Essential Contacts contact that receives technical
/// notifications for the project.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/essential_contacts.dart';
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
        service: .literal('monitoring.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final oncallEmail = add(
      GoogleMonitoringNotificationChannel(
        localName: 'oncall_email',
        type: .literal('email'),
        displayName: .literal('On-call email'),
        labels: .literal({'email_address': 'oncall@example.com'}),
        dependsOn: [ResourceDependency(apiMonitoring)],
      ),
    );

    // Opaque custom service: `google_monitoring_service` (the typed variant)
    // requires a `basic_service`/identifier case at the API and cannot be
    // created with `service_id` alone, so use the custom-service resource.
    final apiService = add(
      GoogleMonitoringCustomService(
        localName: 'api',
        serviceId: .literal('api'),
        displayName: .literal('API service'),
        dependsOn: [ResourceDependency(apiMonitoring)],
      ),
    );

    add(
      GoogleMonitoringCustomService(
        localName: 'checkout_api',
        serviceId: .literal('checkout-api'),
        displayName: .literal('Checkout API'),
        dependsOn: [ResourceDependency(apiMonitoring)],
      ),
    );

    final publicUrls = add(
      GoogleMonitoringGroup(
        localName: 'public_urls',
        displayName: .literal('Public URLs'),
        filter: .literal('resource.type="uptime_url"'),
        dependsOn: [ResourceDependency(apiMonitoring)],
      ),
    );

    add(
      GoogleMonitoringUptimeCheckConfig(
        localName: 'api_uptime',
        displayName: .literal('Public API healthz'),
        timeout: .literal('10s'),
        period: .literal('60s'),
        httpCheck: MonitoringUptimeCheckConfigHttpCheck(
          path: .literal('/healthz'),
          port: .literal(443),
          useSsl: .literal(true),
          validateSsl: .literal(true),
          requestMethod: .literal(.get),
        ),
        target: .monitoredResource(
          MonitoringUptimeCheckConfigMonitoredResource(
            type: .literal('uptime_url'),
            labels: .literal({
              'host': 'api.example.com',
              'project_id': projectId,
            }),
          ),
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
        type: .literal('custom.googleapis.com/api/latency_ms'),
        metricKind: .literal(.gauge),
        valueType: .literal(.doubleValue),
        displayName: .literal('API latency (custom)'),
        description: .literal('Custom gauge for API latency in milliseconds.'),
        dependsOn: [ResourceDependency(apiMonitoring)],
      ),
    );

    add(
      GoogleMonitoringDashboard(
        localName: 'api_overview',
        dashboardJson: .literal('''
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
        service: .ref(apiService.serviceIdRef),
        goal: .literal(0.99),
        displayName: .literal('API availability'),
        period: .rollingPeriodDays(.literal(30)),
        sli: .requestBasedSli(
          .goodTotalRatio(
            MonitoringSloGoodTotalRatio(
              goodServiceFilter: .literal(
                'metric.type="run.googleapis.com/request_count" '
                'AND resource.type="cloud_run_revision" '
                'AND metric.label.response_code_class="2xx"',
              ),
              totalServiceFilter: .literal(
                'metric.type="run.googleapis.com/request_count" '
                'AND resource.type="cloud_run_revision"',
              ),
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
    //   metricsScope: .literal('locations/global/metricsScopes/$projectId'),
    //   name: .literal('some-other-project-id'),
    // );

    add(
      GoogleMonitoringAlertPolicy(
        localName: 'api_p95_latency',
        displayName: .literal('api-p95-latency'),
        combiner: .literal(.or),
        severity: .literal(.warning),
        // The channel's resource name is `projects/<p>/notificationChannels/
        // <numeric-id>` (server-assigned), NOT its display name. Reference the
        // in-stack channel's `id` so the alert policy gets the real path
        // instead of a hardcoded `.../oncall-email` (404 at apply).
        notificationChannels: .literal([oncallEmail.id.interpolation]),
        conditions: [
          MonitoringAlertPolicyConditions(
            displayName: .literal('p95 > 1500ms for 5m'),
            conditionThreshold: MonitoringAlertPolicyConditionThreshold(
              filter: .literal(
                'metric.type="run.googleapis.com/request_latencies" '
                'AND resource.type="cloud_run_revision" '
                'AND resource.label.service_name="api"',
              ),
              comparison: .literal(.greaterThan),
              duration: .literal('300s'),
              thresholdValue: .literal(1500),
              evaluationMissingData: .literal(.noOp),
              aggregations: [
                MonitoringAlertPolicyAggregations(
                  alignmentPeriod: .literal('60s'),
                  perSeriesAligner: .literal(.percentile95),
                  crossSeriesReducer: .literal(.percentile95),
                  groupByFields: .literal(const [
                    'resource.label.revision_name',
                  ]),
                ),
              ],
            ),
          ),
        ],
        // `notification_rate_limit` is only valid on log-based alert policies
        // (those with a `condition_matched_log` condition). This is a
        // metric-threshold policy, so the API rejects it ("only log-based
        // alert policies may specify a notification rate limit"); keep only
        // `auto_close`.
        alertStrategy: MonitoringAlertPolicyAlertStrategy(
          autoClose: .literal('1800s'),
        ),
        dependsOn: [
          ResourceDependency(oncallEmail),
          ResourceDependency(apiMonitoring),
        ],
      ),
    );

    // Essential Contacts: register a team to receive Google Cloud
    // notifications for this project. Distinct from a Monitoring notification
    // channel (alerts) — these are platform notices (security, technical,
    // suspension, …). Enable the API and depend on it so apply ordering holds.
    final apiEssentialContacts = add(
      GoogleProjectService(
        localName: 'api_essentialcontacts',
        service: .literal('essentialcontacts.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    add(
      GoogleEssentialContactsContact(
        localName: 'platform_technical',
        parent: .literal('projects/$projectId'),
        email: .literal('platform-notices@example.com'),
        languageTag: .literal('en-US'),
        notificationCategorySubscriptions: .literal(const ['TECHNICAL']),
        dependsOn: [ResourceDependency(apiEssentialContacts)],
      ),
    );
  }
}
