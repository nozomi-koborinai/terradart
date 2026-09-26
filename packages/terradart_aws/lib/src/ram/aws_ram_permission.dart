// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ram_permission`.
const Set<String> _awsRamPermissionSensitive = <String>{};

/// Factory wrapper for `aws_ram_permission`.
final class AwsRamPermission extends Resource {
  static const String tfType = 'aws_ram_permission';

  AwsRamPermission({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> policyTemplate,
    TfArg<String>? region,
    required TfArg<String> resourceType,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'policy_template': policyTemplate,
           if (region != null) 'region': region,
           'resource_type': resourceType,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRamPermissionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `default_version` attribute.
  TfRef<bool> get defaultVersion =>
      TfRef.attribute<bool>(this, 'default_version');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
