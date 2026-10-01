// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_datazone_domain`.
const Set<String> _awsDatazoneDomainSensitive = <String>{};

/// Datazone Domain enum for `domain_version`.
enum DatazoneDomainVersion implements TerraformEnum {
  v1('V1'),
  v2('V2');

  const DatazoneDomainVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `single_sign_on` block of
/// `aws_datazone_domain` (derived from provider schema).
@immutable
final class DatazoneDomainSingleSignOn {
  const DatazoneDomainSingleSignOn({this.type, this.userAssignment});

  final TfArg<String>? type;

  final TfArg<DatazoneDomainUserAssignment>? userAssignment;

  Map<String, Object?> encode() => {
    'type': ?type?.toTfJson(),
    'user_assignment': ?userAssignment?.toTfJson(),
  };
}

/// `user_assignment` — derived from the provider schema description.
enum DatazoneDomainUserAssignment implements TerraformEnum {
  automatic('AUTOMATIC'),
  manual('MANUAL');

  const DatazoneDomainUserAssignment(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_datazone_domain`.
final class AwsDatazoneDomain extends Resource {
  static const String tfType = 'aws_datazone_domain';

  AwsDatazoneDomain({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> domainExecutionRole,
    TfArg<DatazoneDomainVersion>? domainVersion,
    RefTo<AwsKmsKey>? kmsKeyIdentifier,
    required TfArg<String> name,
    TfArg<String>? region,
    RefTo<AwsIamRole>? serviceRole,
    TfArg<bool>? skipDeletionCheck,
    TfArg<Map<String, String>>? tags,
    List<DatazoneDomainSingleSignOn>? singleSignOn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'domain_execution_role': domainExecutionRole,
           'domain_version': ?domainVersion,
           'kms_key_identifier': ?kmsKeyIdentifier?.encodeAs('arn'),
           'name': name,
           'region': ?region,
           'service_role': ?serviceRole?.encodeAs('arn'),
           'skip_deletion_check': ?skipDeletionCheck,
           'tags': ?tags,
           if (singleSignOn != null)
             'single_sign_on': TfArg.literal([
               for (final e in singleSignOn) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatazoneDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDatazoneDomain>`.
  RefTo<AwsDatazoneDomain> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `portal_url` attribute.
  TfRef<String> get portalUrl => TfRef.attribute<String>(this, 'portal_url');

  /// Reference to `root_domain_unit_id` attribute.
  TfRef<String> get rootDomainUnitId =>
      TfRef.attribute<String>(this, 'root_domain_unit_id');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `domain_execution_role` attribute.
  TfRef<String> get domainExecutionRoleRef =>
      TfRef.attribute<String>(this, 'domain_execution_role');

  /// Reference to `domain_version` attribute.
  TfRef<String> get domainVersionRef =>
      TfRef.attribute<String>(this, 'domain_version');

  /// Reference to `kms_key_identifier` attribute.
  TfRef<String> get kmsKeyIdentifierRef =>
      TfRef.attribute<String>(this, 'kms_key_identifier');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `service_role` attribute.
  TfRef<String> get serviceRoleRef =>
      TfRef.attribute<String>(this, 'service_role');

  /// Reference to `skip_deletion_check` attribute.
  TfRef<bool> get skipDeletionCheckRef =>
      TfRef.attribute<bool>(this, 'skip_deletion_check');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
