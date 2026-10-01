/// Tier 6: Pub/Sub eventing + Monitoring.
library;

import 'package:terradart_google/cloud_run.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/monitoring.dart';
import 'package:terradart_google/pubsub.dart';

GooglePubsubTopic buildOrderTopic() => GooglePubsubTopic(
  localName: 'orders_topic',
  name: .literal('coffee-orders'),
);

/// Push subscription invokes the Cloud Run service with an OIDC token signed
/// for the runSa identity. The Cloud Run invoker IAM in Tier 5 was set to
/// allUsers, so runSa is a valid invoker.
///
/// NOTE: `topic` must reference the topic's `.id` (full path
/// `projects/{project}/topics/{name}`), NOT `.nameRef`. See the dartdoc on
/// `google_pubsub_subscription.dart` — the provider expects the full resource
/// path here.
GooglePubsubSubscription buildOrderSubscription({
  required GooglePubsubTopic orderTopic,
  required GoogleCloudRunV2Service coffeeService,
  required GoogleServiceAccount runSa,
}) => GooglePubsubSubscription(
  localName: 'orders_subscription',
  name: .literal('coffee-orders-sub'),
  topic: orderTopic.ref,
  delivery: .pushConfig(
    .new(
      pushEndpoint: .ref(coffeeService.uri),
      oidcToken: .new(serviceAccountEmail: .of(runSa)),
    ),
  ),
);

GoogleMonitoringNotificationChannel buildEmailChannel(String alertEmail) =>
    GoogleMonitoringNotificationChannel(
      localName: 'email_channel',
      displayName: .literal('Coffee Shop email'),
      type: .literal('email'),
      labels: .literal({'email_address': alertEmail}),
    );

GoogleMonitoringUptimeCheckConfig buildUptimeCheck(
  GoogleCloudRunV2Service coffeeService,
) => GoogleMonitoringUptimeCheckConfig(
  localName: 'coffee_uptime',
  displayName: .literal('Coffee Shop uptime'),
  timeout: .literal('10s'),
  period: .literal('60s'),
  target: .monitoredResource(
    .new(
      type: .literal('uptime_url'),
      labels: .literal({
        'host':
            '\${replace(replace(google_cloud_run_v2_service.coffee_service.uri, "https://", ""), "/", "")}',
      }),
    ),
  ),
  httpCheck: MonitoringUptimeCheckConfigHttpCheck(
    path: .literal('/'),
    port: .literal(443),
    useSsl: .literal(true),
  ),
);

GoogleMonitoringAlertPolicy buildDownAlert(
  GoogleMonitoringNotificationChannel emailChannel,
) => GoogleMonitoringAlertPolicy(
  localName: 'coffee_down',
  displayName: .literal('Coffee Shop down'),
  combiner: .literal(.or),
  conditions: [
    MonitoringAlertPolicyConditions(
      displayName: .literal('uptime check failing'),
      conditionThreshold: .new(
        filter: .literal(
          'metric.type="monitoring.googleapis.com/uptime_check/check_passed" AND resource.type="uptime_url" AND metric.labels.check_id="\${google_monitoring_uptime_check_config.coffee_uptime.uptime_check_id}"',
        ),
        comparison: .literal(.lessThan),
        thresholdValue: .literal(1),
        duration: .literal('60s'),
        aggregations: [
          .new(
            alignmentPeriod: .literal('60s'),
            perSeriesAligner: .literal(.alignNextOlder),
          ),
        ],
      ),
    ),
  ],
  notificationChannels: .literal([
    '\${google_monitoring_notification_channel.email_channel.name}',
  ]),
);
