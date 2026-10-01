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

  AwsRedshiftEventSubscription(
    super.localName, {
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `customer_aws_id` attribute.
  TfRef<String> get customerAwsId =>
      TfRef.attribute<String>(this, 'customer_aws_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `event_categories` attribute.
  TfRef<List<String>> get eventCategories =>
      TfRef.attribute<List<String>>(this, 'event_categories');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `severity` attribute.
  TfRef<String> get severity => TfRef.attribute<String>(this, 'severity');

  /// Reference to `sns_topic_arn` attribute.
  TfRef<String> get snsTopicArn =>
      TfRef.attribute<String>(this, 'sns_topic_arn');

  /// Reference to `source_ids` attribute.
  TfRef<List<String>> get sourceIds =>
      TfRef.attribute<List<String>>(this, 'source_ids');

  /// Reference to `source_type` attribute.
  TfRef<String> get sourceType => TfRef.attribute<String>(this, 'source_type');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
