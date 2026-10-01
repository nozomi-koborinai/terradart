// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_resiliencehubv2_system`.
const Set<String> _awsResiliencehubv2SystemSensitive = <String>{};

/// Factory wrapper for `aws_resiliencehubv2_system`.
final class AwsResiliencehubv2System extends Resource {
  static const String tfType = 'aws_resiliencehubv2_system';

  AwsResiliencehubv2System({
    required super.localName,
    TfArg<String>? description,
    RefTo<AwsKmsKey>? kmsKeyId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<bool>? sharingEnabled,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'name': name,
           'region': ?region,
           'sharing_enabled': ?sharingEnabled,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsResiliencehubv2SystemSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsResiliencehubv2System>`.
  RefTo<AwsResiliencehubv2System> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `organization_id` attribute.
  TfRef<String> get organizationId =>
      TfRef.attribute<String>(this, 'organization_id');

  /// Reference to `ou_id` attribute.
  TfRef<String> get ouId => TfRef.attribute<String>(this, 'ou_id');

  /// Reference to `system_id` attribute.
  TfRef<String> get systemId => TfRef.attribute<String>(this, 'system_id');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `sharing_enabled` attribute.
  TfRef<bool> get sharingEnabled =>
      TfRef.attribute<bool>(this, 'sharing_enabled');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
