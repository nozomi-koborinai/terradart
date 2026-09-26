// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_resourcegroups_resource`.
const Set<String> _awsResourcegroupsResourceSensitive = <String>{};

/// Factory wrapper for `aws_resourcegroups_resource`.
final class AwsResourcegroupsResource extends Resource {
  static const String tfType = 'aws_resourcegroups_resource';

  AwsResourcegroupsResource({
    required super.localName,
    required TfArg<String> groupArn,
    TfArg<String>? region,
    required TfArg<String> resourceArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'group_arn': groupArn,
           if (region != null) 'region': region,
           'resource_arn': resourceArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsResourcegroupsResourceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceType =>
      TfRef.attribute<String>(this, 'resource_type');
}
