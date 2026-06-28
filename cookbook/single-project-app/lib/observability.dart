/// Tier 6: Pub/Sub eventing + Monitoring.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/cloud_run.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/monitoring.dart';
import 'package:terradart_google/pubsub.dart';

GooglePubsubTopic buildOrderTopic() => GooglePubsubTopic(
      localName: 'orders_topic',
      name: TfArg.literal('coffee-orders'),
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
}) =>
    GooglePubsubSubscription(
      localName: 'orders_subscription',
      name: TfArg.literal('coffee-orders-sub'),
      topic: TfArg.ref(orderTopic.id),
      pushConfig: PubsubSubscriptionPushConfig(
        pushEndpoint: TfArg.ref(coffeeService.uri),
        oidcToken: PubsubSubscriptionOidcToken(
          serviceAccountEmail: TfArg.ref(runSa.email),
        ),
      ),
    );

GoogleMonitoringNotificationChannel buildEmailChannel(String alertEmail) =>
    GoogleMonitoringNotificationChannel(
      localName: 'email_channel',
      displayName: TfArg.literal('Coffee Shop email'),
      type: TfArg.literal('email'),
      labels: TfArg.literal({'email_address': alertEmail}),
    );

GoogleMonitoringUptimeCheckConfig buildUptimeCheck(
  GoogleCloudRunV2Service coffeeService,
) =>
    GoogleMonitoringUptimeCheckConfig(
      localName: 'coffee_uptime',
      displayName: TfArg.literal('Coffee Shop uptime'),
      timeout: TfArg.literal('10s'),
      period: TfArg.literal('60s'),
      target: MonitoringUptimeCheckConfigMonitoredResource(
        type: TfArg.literal('uptime_url'),
        labels: {
          'host':
              '\${replace(replace(google_cloud_run_v2_service.coffee_service.uri, "https://", ""), "/", "")}',
        },
      ),
      httpCheck: MonitoringUptimeCheckConfigHttpCheck(
        path: TfArg.literal('/'),
        port: TfArg.literal(443),
        useSsl: TfArg.literal(true),
      ),
    );

GoogleMonitoringAlertPolicy buildDownAlert(
  GoogleMonitoringNotificationChannel emailChannel,
) =>
    GoogleMonitoringAlertPolicy(
      localName: 'coffee_down',
      displayName: TfArg.literal('Coffee Shop down'),
      combiner: TfArg.literal(AlertCombiner.or),
      conditions: [
        MonitoringAlertPolicyAlertCondition(
          displayName: TfArg.literal('uptime check failing'),
          conditionThreshold: MonitoringAlertPolicyConditionThreshold(
            filter: TfArg.literal(
              'metric.type="monitoring.googleapis.com/uptime_check/check_passed" AND resource.type="uptime_url" AND metric.labels.check_id="\${google_monitoring_uptime_check_config.coffee_uptime.uptime_check_id}"',
            ),
            comparison: TfArg.literal(Comparison.lessThan),
            thresholdValue: TfArg.literal(1),
            duration: TfArg.literal('60s'),
            aggregations: [
              MonitoringAlertPolicyAggregation(
                alignmentPeriod: TfArg.literal('60s'),
                perSeriesAligner: Aligner.alignNextOlder,
              ),
            ],
          ),
        ),
      ],
      notificationChannels: TfArg.literal([
        '\${google_monitoring_notification_channel.email_channel.name}',
      ]),
    );
