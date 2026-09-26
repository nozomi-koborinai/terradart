// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_qbusiness_application`.
const Set<String> _awsQbusinessApplicationSensitive = <String>{};

/// Typed helper for the `attachments_configuration` block of
/// `aws_qbusiness_application` (derived from provider schema).
@immutable
final class QbusinessApplicationAttachmentsConfiguration {
  const QbusinessApplicationAttachmentsConfiguration({
    required this.attachmentsControlMode,
  });

  final TfArg<String> attachmentsControlMode;

  Map<String, Object?> encode() => {
    'attachments_control_mode': attachmentsControlMode.toTfJson(),
  };
}

/// Typed helper for the `encryption_configuration` block of
/// `aws_qbusiness_application` (derived from provider schema).
@immutable
final class QbusinessApplicationEncryptionConfiguration {
  const QbusinessApplicationEncryptionConfiguration({required this.kmsKeyId});

  final TfArg<String> kmsKeyId;

  Map<String, Object?> encode() => {'kms_key_id': kmsKeyId.toTfJson()};
}

/// Factory wrapper for `aws_qbusiness_application`.
final class AwsQbusinessApplication extends Resource {
  static const String tfType = 'aws_qbusiness_application';

  AwsQbusinessApplication({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> displayName,
    required TfArg<String> iamServiceRoleArn,
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
           if (description != null) 'description': description,
           'display_name': displayName,
           'iam_service_role_arn': iamServiceRoleArn,
           'identity_center_instance_arn': identityCenterInstanceArn,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
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
}
