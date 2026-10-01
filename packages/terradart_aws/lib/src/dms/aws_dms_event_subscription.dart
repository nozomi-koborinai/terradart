// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../sns/aws_sns_topic.dart' show AwsSnsTopic;

/// Sensitive field paths for `aws_dms_event_subscription`.
const Set<String> _awsDmsEventSubscriptionSensitive = <String>{};

/// Dms Event Subscription Source enum for `source_type`.
enum DmsEventSubscriptionSourceType implements TerraformEnum {
  replicationInstance('replication-instance'),
  replicationTask('replication-task');

  const DmsEventSubscriptionSourceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_dms_event_subscription`.
final class AwsDmsEventSubscription extends Resource {
  static const String tfType = 'aws_dms_event_subscription';

  AwsDmsEventSubscription({
    required super.localName,
    TfArg<bool>? enabled,
    required TfArg<List<String>> eventCategories,
    required TfArg<String> name,
    TfArg<String>? region,
    required RefTo<AwsSnsTopic> snsTopicArn,
    TfArg<List<String>>? sourceIds,
    required TfArg<DmsEventSubscriptionSourceType> sourceType,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enabled': ?enabled,
           'event_categories': eventCategories,
           'name': name,
           'region': ?region,
           'sns_topic_arn': snsTopicArn.encodeAs('arn'),
           'source_ids': ?sourceIds,
           'source_type': sourceType,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDmsEventSubscriptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDmsEventSubscription>`.
  RefTo<AwsDmsEventSubscription> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `event_categories` attribute.
  TfRef<List<String>> get eventCategories =>
      TfRef.attribute<List<String>>(this, 'event_categories');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

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
