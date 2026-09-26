// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_model_card`.
const Set<String> _awsSagemakerModelCardSensitive = <String>{};

/// Typed helper for the `security_config` block of
/// `aws_sagemaker_model_card` (derived from provider schema).
@immutable
final class SagemakerModelCardSecurityConfig {
  const SagemakerModelCardSecurityConfig({required this.kmsKeyId});

  final TfArg<String> kmsKeyId;

  Map<String, Object?> encode() => {'kms_key_id': kmsKeyId.toTfJson()};
}

/// Factory wrapper for `aws_sagemaker_model_card`.
final class AwsSagemakerModelCard extends Resource {
  static const String tfType = 'aws_sagemaker_model_card';

  AwsSagemakerModelCard({
    required super.localName,
    required TfArg<String> content,
    required TfArg<String> modelCardName,
    required TfArg<String> modelCardStatus,
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
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (securityConfig != null)
             'security_config': TfArg.literal([
               for (final e in securityConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerModelCardSensitive;

  /// Reference to `model_card_arn` attribute.
  TfRef<String> get modelCardArn =>
      TfRef.attribute<String>(this, 'model_card_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
