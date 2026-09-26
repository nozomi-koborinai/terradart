// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workmail_organization`.
const Set<String> _awsWorkmailOrganizationSensitive = <String>{};

/// Factory wrapper for `aws_workmail_organization`.
final class AwsWorkmailOrganization extends Resource {
  static const String tfType = 'aws_workmail_organization';

  AwsWorkmailOrganization({
    required super.localName,
    TfArg<bool>? deleteDirectory,
    TfArg<bool>? deleteIdentityCenterApplication,
    TfArg<String>? directoryId,
    TfArg<bool>? interoperabilityEnabled,
    TfArg<String>? kmsKeyArn,
    required TfArg<String> organizationAlias,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deleteDirectory != null) 'delete_directory': deleteDirectory,
           if (deleteIdentityCenterApplication != null)
             'delete_identity_center_application':
                 deleteIdentityCenterApplication,
           if (directoryId != null) 'directory_id': directoryId,
           if (interoperabilityEnabled != null)
             'interoperability_enabled': interoperabilityEnabled,
           if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn,
           'organization_alias': organizationAlias,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWorkmailOrganizationSensitive;

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `completed_date` attribute.
  TfRef<String> get completedDate =>
      TfRef.attribute<String>(this, 'completed_date');

  /// Reference to `default_mail_domain` attribute.
  TfRef<String> get defaultMailDomain =>
      TfRef.attribute<String>(this, 'default_mail_domain');

  /// Reference to `directory_type` attribute.
  TfRef<String> get directoryType =>
      TfRef.attribute<String>(this, 'directory_type');

  /// Reference to `migration_admin` attribute.
  TfRef<String> get migrationAdmin =>
      TfRef.attribute<String>(this, 'migration_admin');

  /// Reference to `organization_id` attribute.
  TfRef<String> get organizationId =>
      TfRef.attribute<String>(this, 'organization_id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
