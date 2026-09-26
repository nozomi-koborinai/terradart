// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_shield_protection_group`.
const Set<String> _awsShieldProtectionGroupSensitive = <String>{};

/// Factory wrapper for `aws_shield_protection_group`.
final class AwsShieldProtectionGroup extends Resource {
  static const String tfType = 'aws_shield_protection_group';

  AwsShieldProtectionGroup({
    required super.localName,
    required TfArg<String> aggregation,
    TfArg<List<String>>? members,
    required TfArg<String> pattern,
    required TfArg<String> protectionGroupId,
    TfArg<String>? resourceType,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aggregation': aggregation,
           if (members != null) 'members': members,
           'pattern': pattern,
           'protection_group_id': protectionGroupId,
           if (resourceType != null) 'resource_type': resourceType,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsShieldProtectionGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `protection_group_arn` attribute.
  TfRef<String> get protectionGroupArn =>
      TfRef.attribute<String>(this, 'protection_group_arn');
}
