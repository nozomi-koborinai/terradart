// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_qbusiness_application`.
const Set<String> _awsQbusinessApplicationSensitive = <String>{};

/// Typed helper for the `attachments_configuration` block of
/// `aws_qbusiness_application` (derived from provider schema).
@immutable
final class QbusinessApplicationAttachmentsConfiguration {
  const QbusinessApplicationAttachmentsConfiguration({
    required this.attachmentsControlMode,
  });

  final TfArg<QbusinessApplicationAttachmentsControlMode>
  attachmentsControlMode;

  Map<String, Object?> encode() => {
    'attachments_control_mode': attachmentsControlMode.toTfJson(),
  };
}

/// `attachments_control_mode` — derived from the provider schema description.
enum QbusinessApplicationAttachmentsControlMode implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const QbusinessApplicationAttachmentsControlMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `encryption_configuration` block of
/// `aws_qbusiness_application` (derived from provider schema).
@immutable
final class QbusinessApplicationEncryptionConfiguration {
  const QbusinessApplicationEncryptionConfiguration({required this.kmsKeyId});

  final RefTo<AwsKmsKey> kmsKeyId;

  Map<String, Object?> encode() => {
    'kms_key_id': kmsKeyId.encodeAs('arn').toTfJson(),
  };
}

/// Factory wrapper for `aws_qbusiness_application`.
final class AwsQbusinessApplication extends Resource {
  static const String tfType = 'aws_qbusiness_application';

  AwsQbusinessApplication({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> displayName,
    required RefTo<AwsIamRole> iamServiceRoleArn,
    required TfArg<String> identityCenterInstanceArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<QbusinessApplicationAttachmentsConfiguration>?
    attachmentsConfiguration,
    List<QbusinessApplicationEncryptionConfiguration>? encryptionConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'display_name': displayName,
           'iam_service_role_arn': iamServiceRoleArn.encodeAs('arn'),
           'identity_center_instance_arn': identityCenterInstanceArn,
           'region': ?region,
           'tags': ?tags,
           if (attachmentsConfiguration != null)
             'attachments_configuration': TfArg.literal([
               for (final e in attachmentsConfiguration) e.encode(),
             ]),
           if (encryptionConfiguration != null)
             'encryption_configuration': TfArg.literal([
               for (final e in encryptionConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQbusinessApplicationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsQbusinessApplication>`.
  RefTo<AwsQbusinessApplication> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `identity_center_application_arn` attribute.
  TfRef<String> get identityCenterApplicationArn =>
      TfRef.attribute<String>(this, 'identity_center_application_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `iam_service_role_arn` attribute.
  TfRef<String> get iamServiceRoleArnRef =>
      TfRef.attribute<String>(this, 'iam_service_role_arn');

  /// Reference to `identity_center_instance_arn` attribute.
  TfRef<String> get identityCenterInstanceArnRef =>
      TfRef.attribute<String>(this, 'identity_center_instance_arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
