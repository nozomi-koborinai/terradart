// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dms_event_subscription`.
const Set<String> _awsDmsEventSubscriptionSensitive = <String>{};

/// Factory wrapper for `aws_dms_event_subscription`.
final class AwsDmsEventSubscription extends Resource {
  static const String tfType = 'aws_dms_event_subscription';

  AwsDmsEventSubscription({
    required super.localName,
    TfArg<bool>? enabled,
    required TfArg<List<String>> eventCategories,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> snsTopicArn,
    TfArg<List<String>>? sourceIds,
    required TfArg<String> sourceType,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (enabled != null) 'enabled': enabled,
           'event_categories': eventCategories,
           'name': name,
           if (region != null) 'region': region,
           'sns_topic_arn': snsTopicArn,
           if (sourceIds != null) 'source_ids': sourceIds,
           'source_type': sourceType,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDmsEventSubscriptionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
