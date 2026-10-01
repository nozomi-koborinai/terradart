// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_workmail_organization`.
const Set<String> _awsWorkmailOrganizationSensitive = <String>{};

/// Factory wrapper for `aws_workmail_organization`.
final class AwsWorkmailOrganization extends Resource {
  static const String tfType = 'aws_workmail_organization';

  AwsWorkmailOrganization(
    super.localName, {
    TfArg<bool>? deleteDirectory,
    TfArg<bool>? deleteIdentityCenterApplication,
    TfArg<String>? directoryId,
    TfArg<bool>? interoperabilityEnabled,
    RefTo<AwsKmsKey>? kmsKeyArn,
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
           'delete_directory': ?deleteDirectory,
           'delete_identity_center_application':
               ?deleteIdentityCenterApplication,
           'directory_id': ?directoryId,
           'interoperability_enabled': ?interoperabilityEnabled,
           'kms_key_arn': ?kmsKeyArn?.encodeAs('arn'),
           'organization_alias': organizationAlias,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWorkmailOrganizationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWorkmailOrganization>`.
  RefTo<AwsWorkmailOrganization> get ref => RefTo.of(this);

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

  /// Reference to `delete_directory` attribute.
  TfRef<bool> get deleteDirectory =>
      TfRef.attribute<bool>(this, 'delete_directory');

  /// Reference to `delete_identity_center_application` attribute.
  TfRef<bool> get deleteIdentityCenterApplication =>
      TfRef.attribute<bool>(this, 'delete_identity_center_application');

  /// Reference to `directory_id` attribute.
  TfRef<String> get directoryId =>
      TfRef.attribute<String>(this, 'directory_id');

  /// Reference to `interoperability_enabled` attribute.
  TfRef<bool> get interoperabilityEnabled =>
      TfRef.attribute<bool>(this, 'interoperability_enabled');

  /// Reference to `kms_key_arn` attribute.
  TfRef<String> get kmsKeyArn => TfRef.attribute<String>(this, 'kms_key_arn');

  /// Reference to `organization_alias` attribute.
  TfRef<String> get organizationAlias =>
      TfRef.attribute<String>(this, 'organization_alias');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
