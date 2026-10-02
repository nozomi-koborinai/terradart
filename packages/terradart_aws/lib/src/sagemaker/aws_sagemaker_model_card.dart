// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_sagemaker_model_card`.
const Set<String> _awsSagemakerModelCardSensitive = <String>{};

/// Sagemaker Model Card enum for `model_card_status`.
extension type const SagemakerModelCardStatus._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerModelCardStatus.variable(String name) : this._(TfArg.variable(name));
  SagemakerModelCardStatus.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerModelCardStatus.arg(TfArg<String> arg) : this._(arg);

  static const draft = SagemakerModelCardStatus._(TfArgLiteral('Draft'));
  static const pendingreview = SagemakerModelCardStatus._(
    TfArgLiteral('PendingReview'),
  );
  static const approved = SagemakerModelCardStatus._(TfArgLiteral('Approved'));
  static const archived = SagemakerModelCardStatus._(TfArgLiteral('Archived'));

  static const List<SagemakerModelCardStatus> values = [
    draft,
    pendingreview,
    approved,
    archived,
  ];
}

/// Typed helper for the `security_config` block of
/// `aws_sagemaker_model_card` (derived from provider schema).
@immutable
final class SagemakerModelCardSecurityConfig {
  const SagemakerModelCardSecurityConfig({required this.kmsKeyId});

  final RefTo<AwsKmsKey> kmsKeyId;

  @internal
  Map<String, Object?> encode() => {
    'kms_key_id': kmsKeyId.encodeAs('arn').toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_model_card`.
final class AwsSagemakerModelCard extends Resource {
  static const String tfType = 'aws_sagemaker_model_card';

  AwsSagemakerModelCard(
    super.localName, {
    required TfArg<String> content,
    required TfArg<String> modelCardName,
    required SagemakerModelCardStatus modelCardStatus,
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
  TfRef<String> get content => TfRef.attribute<String>(this, 'content');

  /// Reference to `model_card_name` attribute.
  TfRef<String> get modelCardName =>
      TfRef.attribute<String>(this, 'model_card_name');

  /// Reference to `model_card_status` attribute.
  TfRef<String> get modelCardStatus =>
      TfRef.attribute<String>(this, 'model_card_status');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
