// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagentcore_api_key_credential_provider`.
const Set<String> _awsBedrockagentcoreApiKeyCredentialProviderSensitive =
    <String>{'api_key', 'api_key_wo'};

/// Typed helper for the `api_key_secret_config` block of
/// `aws_bedrockagentcore_api_key_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreApiKeyCredentialProviderApiKeySecretConfig {
  const BedrockagentcoreApiKeyCredentialProviderApiKeySecretConfig({
    required this.jsonKey,
    required this.secretId,
  });

  final TfArg<String> jsonKey;

  final TfArg<String> secretId;

  Map<String, Object?> encode() => {
    'json_key': jsonKey.toTfJson(),
    'secret_id': secretId.toTfJson(),
  };
}

/// Factory wrapper for `aws_bedrockagentcore_api_key_credential_provider`.
final class AwsBedrockagentcoreApiKeyCredentialProvider extends Resource {
  static const String tfType =
      'aws_bedrockagentcore_api_key_credential_provider';

  AwsBedrockagentcoreApiKeyCredentialProvider({
    required super.localName,
    TfArg<String>? apiKey,
    TfArg<String>? apiKeySecretSource,
    TfArg<String>? apiKeyWo,
    TfArg<num>? apiKeyWoVersion,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<BedrockagentcoreApiKeyCredentialProviderApiKeySecretConfig>?
    apiKeySecretConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (apiKey != null) 'api_key': apiKey,
           if (apiKeySecretSource != null)
             'api_key_secret_source': apiKeySecretSource,
           if (apiKeyWo != null) 'api_key_wo': apiKeyWo,
           if (apiKeyWoVersion != null) 'api_key_wo_version': apiKeyWoVersion,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (apiKeySecretConfig != null)
             'api_key_secret_config': TfArg.literal([
               for (final e in apiKeySecretConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsBedrockagentcoreApiKeyCredentialProviderSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `api_key_secret_arn` attribute.
  TfRef<List<Map<String, Object?>>> get apiKeySecretArn =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'api_key_secret_arn');

  /// Reference to `credential_provider_arn` attribute.
  TfRef<String> get credentialProviderArn =>
      TfRef.attribute<String>(this, 'credential_provider_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
