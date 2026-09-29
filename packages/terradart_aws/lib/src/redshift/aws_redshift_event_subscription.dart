// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../sns/aws_sns_topic.dart' show AwsSnsTopic;

/// Sensitive field paths for `aws_redshift_event_subscription`.
const Set<String> _awsRedshiftEventSubscriptionSensitive = <String>{};

/// Redshift Event Subscription Event enum for `event_categories`.
enum RedshiftEventSubscriptionEventCategories implements TerraformEnum {
  configuration('configuration'),
  management('management'),
  monitoring('monitoring'),
  security('security'),
  pending('pending');

  const RedshiftEventSubscriptionEventCategories(this.terraformValue);
  @override
  final String terraformValue;
}

/// Redshift Event Subscription enum for `severity`.
enum RedshiftEventSubscriptionSeverity implements TerraformEnum {
  error('ERROR'),
  info('INFO');

  const RedshiftEventSubscriptionSeverity(this.terraformValue);
  @override
  final String terraformValue;
}

/// Redshift Event Subscription Source enum for `source_type`.
enum RedshiftEventSubscriptionSourceType implements TerraformEnum {
  cluster('cluster'),
  clusterParameterGroup('cluster-parameter-group'),
  clusterSecurityGroup('cluster-security-group'),
  clusterSnapshot('cluster-snapshot'),
  scheduledAction('scheduled-action');

  const RedshiftEventSubscriptionSourceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_redshift_event_subscription`.
final class AwsRedshiftEventSubscription extends Resource {
  static const String tfType = 'aws_redshift_event_subscription';

  AwsRedshiftEventSubscription({
    required super.localName,
    TfArg<bool>? enabled,
    List<TfArg<RedshiftEventSubscriptionEventCategories>>? eventCategories,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<RedshiftEventSubscriptionSeverity>? severity,
    required RefTo<AwsSnsTopic> snsTopicArn,
    TfArg<List<String>>? sourceIds,
    TfArg<RedshiftEventSubscriptionSourceType>? sourceType,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enabled': ?enabled,
           if (eventCategories != null)
             'event_categories': TfArg.literal([
               for (final e in eventCategories) e.toTfJson(),
             ]),
           'name': name,
           'region': ?region,
           'severity': ?severity,
           'sns_topic_arn': snsTopicArn.encodeAs('arn'),
           'source_ids': ?sourceIds,
           'source_type': ?sourceType,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftEventSubscriptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRedshiftEventSubscription>`.
  RefTo<AwsRedshiftEventSubscription> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `customer_aws_id` attribute.
  TfRef<String> get customerAwsId =>
      TfRef.attribute<String>(this, 'customer_aws_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
