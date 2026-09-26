// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_inspector_resource_group`.
const Set<String> _awsInspectorResourceGroupSensitive = <String>{};

/// Factory wrapper for `aws_inspector_resource_group`.
final class AwsInspectorResourceGroup extends Resource {
  static const String tfType = 'aws_inspector_resource_group';

  AwsInspectorResourceGroup({
    required super.localName,
    TfArg<String>? region,
    required TfArg<Map<String, String>> tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region, 'tags': tags},
       );

  @override
  Set<String> get sensitiveFields => _awsInspectorResourceGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
