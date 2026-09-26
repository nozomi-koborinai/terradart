// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_resiliencehubv2_system`.
const Set<String> _awsResiliencehubv2SystemSensitive = <String>{};

/// Factory wrapper for `aws_resiliencehubv2_system`.
final class AwsResiliencehubv2System extends Resource {
  static const String tfType = 'aws_resiliencehubv2_system';

  AwsResiliencehubv2System({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? kmsKeyId,
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
           if (description != null) 'description': description,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           'name': name,
           if (region != null) 'region': region,
           if (sharingEnabled != null) 'sharing_enabled': sharingEnabled,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsResiliencehubv2SystemSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
