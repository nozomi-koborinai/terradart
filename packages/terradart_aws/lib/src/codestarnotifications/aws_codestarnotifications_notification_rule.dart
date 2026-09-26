// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codestarnotifications_notification_rule`.
const Set<String> _awsCodestarnotificationsNotificationRuleSensitive =
    <String>{};

/// Typed helper for the `target` block of
/// `aws_codestarnotifications_notification_rule` (derived from provider schema).
@immutable
final class CodestarnotificationsNotificationRuleTarget {
  const CodestarnotificationsNotificationRuleTarget({
    required this.address,
    this.type,
  });

  final TfArg<String> address;

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    'address': address.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// Factory wrapper for `aws_codestarnotifications_notification_rule`.
final class AwsCodestarnotificationsNotificationRule extends Resource {
  static const String tfType = 'aws_codestarnotifications_notification_rule';

  AwsCodestarnotificationsNotificationRule({
    required super.localName,
    required TfArg<String> detailType,
    required TfArg<List<String>> eventTypeIds,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> resource,
    TfArg<String>? status,
    TfArg<Map<String, String>>? tags,
    List<CodestarnotificationsNotificationRuleTarget>? target,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'detail_type': detailType,
           'event_type_ids': eventTypeIds,
           'name': name,
           if (region != null) 'region': region,
           'resource': resource,
           if (status != null) 'status': status,
           if (tags != null) 'tags': tags,
           if (target != null)
             'target': TfArg.literal([for (final e in target) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCodestarnotificationsNotificationRuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
