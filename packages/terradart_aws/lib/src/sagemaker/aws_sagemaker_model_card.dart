// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_sagemaker_model_card`.
const Set<String> _awsSagemakerModelCardSensitive = <String>{};

/// Sagemaker Model Card Model Card enum for `model_card_status`.
enum SagemakerModelCardModelCardStatus implements TerraformEnum {
  draft('Draft'),
  pendingreview('PendingReview'),
  approved('Approved'),
  archived('Archived');

  const SagemakerModelCardModelCardStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `security_config` block of
/// `aws_sagemaker_model_card` (derived from provider schema).
@immutable
final class SagemakerModelCardSecurityConfig {
  const SagemakerModelCardSecurityConfig({required this.kmsKeyId});

  final RefTo<AwsKmsKey> kmsKeyId;

  Map<String, Object?> encode() => {
    'kms_key_id': kmsKeyId.encodeAs('arn').toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_model_card`.
final class AwsSagemakerModelCard extends Resource {
  static const String tfType = 'aws_sagemaker_model_card';

  AwsSagemakerModelCard({
    required super.localName,
    required TfArg<String> content,
    required TfArg<String> modelCardName,
    required TfArg<SagemakerModelCardModelCardStatus> modelCardStatus,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<SagemakerModelCardSecurityConfig>? securityConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'content': content,
           'model_card_name': modelCardName,
           'model_card_status': modelCardStatus,
           'region': ?region,
           'tags': ?tags,
           if (securityConfig != null)
             'security_config': TfArg.literal([
               for (final e in securityConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerModelCardSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerModelCard>`.
  RefTo<AwsSagemakerModelCard> get ref => RefTo.of(this);

  /// Reference to `model_card_arn` attribute.
  TfRef<String> get modelCardArn =>
      TfRef.attribute<String>(this, 'model_card_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `content` attribute.
  TfRef<String> get contentRef => TfRef.attribute<String>(this, 'content');

  /// Reference to `model_card_name` attribute.
  TfRef<String> get modelCardNameRef =>
      TfRef.attribute<String>(this, 'model_card_name');

  /// Reference to `model_card_status` attribute.
  TfRef<String> get modelCardStatusRef =>
      TfRef.attribute<String>(this, 'model_card_status');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
