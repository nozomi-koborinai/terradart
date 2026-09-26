// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_event_subscription`.
const Set<String> _awsRedshiftEventSubscriptionSensitive = <String>{};

/// Factory wrapper for `aws_redshift_event_subscription`.
final class AwsRedshiftEventSubscription extends Resource {
  static const String tfType = 'aws_redshift_event_subscription';

  AwsRedshiftEventSubscription({
    required super.localName,
    TfArg<bool>? enabled,
    TfArg<List<String>>? eventCategories,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? severity,
    required TfArg<String> snsTopicArn,
    TfArg<List<String>>? sourceIds,
    TfArg<String>? sourceType,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (enabled != null) 'enabled': enabled,
           if (eventCategories != null) 'event_categories': eventCategories,
           'name': name,
           if (region != null) 'region': region,
           if (severity != null) 'severity': severity,
           'sns_topic_arn': snsTopicArn,
           if (sourceIds != null) 'source_ids': sourceIds,
           if (sourceType != null) 'source_type': sourceType,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftEventSubscriptionSensitive;

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
