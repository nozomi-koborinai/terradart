// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ram_permission`.
const Set<String> _awsRamPermissionSensitive = <String>{};

/// Factory wrapper for `aws_ram_permission`.
final class AwsRamPermission extends Resource {
  static const String tfType = 'aws_ram_permission';

  AwsRamPermission(
    super.localName, {
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
           'region': ?region,
           'resource_type': resourceType,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRamPermissionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRamPermission>`.
  RefTo<AwsRamPermission> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `policy_template` attribute.
  TfRef<String> get policyTemplate =>
      TfRef.attribute<String>(this, 'policy_template');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceType =>
      TfRef.attribute<String>(this, 'resource_type');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
