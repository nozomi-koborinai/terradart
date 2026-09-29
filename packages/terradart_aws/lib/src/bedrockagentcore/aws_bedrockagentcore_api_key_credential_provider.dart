// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagentcore_api_key_credential_provider`.
const Set<String> _awsBedrockagentcoreApiKeyCredentialProviderSensitive =
    <String>{'api_key', 'api_key_wo'};

/// Bedrockagentcore Api Key Credential Provider Api Key Secret enum for `api_key_secret_source`.
enum BedrockagentcoreApiKeyCredentialProviderApiKeySecretSource
    implements TerraformEnum {
  managed('MANAGED'),
  external('EXTERNAL');

  const BedrockagentcoreApiKeyCredentialProviderApiKeySecretSource(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Exactly one of `api_key`, `api_key_secret_config`, `api_key_wo` on `aws_bedrockagentcore_api_key_credential_provider`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.apiKey(...)`.
sealed class BedrockagentcoreApiKeyCredentialProviderApiKeyOrApiKeySecretConfigOrApiKeyWo {
  const BedrockagentcoreApiKeyCredentialProviderApiKeyOrApiKeySecretConfigOrApiKeyWo();

  /// Sets `api_key`.
  const factory BedrockagentcoreApiKeyCredentialProviderApiKeyOrApiKeySecretConfigOrApiKeyWo.apiKey(
    TfArg<String> apiKey,
  ) = BedrockagentcoreApiKeyCredentialProviderApiKeyOrApiKeySecretConfigOrApiKeyWoApiKey;

  /// Sets `api_key_secret_config`.
  const factory BedrockagentcoreApiKeyCredentialProviderApiKeyOrApiKeySecretConfigOrApiKeyWo.apiKeySecretConfig(
    List<BedrockagentcoreApiKeyCredentialProviderApiKeySecretConfig>
    apiKeySecretConfig,
  ) = BedrockagentcoreApiKeyCredentialProviderApiKeyOrApiKeySecretConfigOrApiKeyWoApiKeySecretConfig;

  /// Sets `api_key_wo`.
  const factory BedrockagentcoreApiKeyCredentialProviderApiKeyOrApiKeySecretConfigOrApiKeyWo.apiKeyWo(
    TfArg<String> apiKeyWo,
  ) = BedrockagentcoreApiKeyCredentialProviderApiKeyOrApiKeySecretConfigOrApiKeyWoApiKeyWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [BedrockagentcoreApiKeyCredentialProviderApiKeyOrApiKeySecretConfigOrApiKeyWo.apiKey] choice: sets `api_key`.
final class BedrockagentcoreApiKeyCredentialProviderApiKeyOrApiKeySecretConfigOrApiKeyWoApiKey
    extends
        BedrockagentcoreApiKeyCredentialProviderApiKeyOrApiKeySecretConfigOrApiKeyWo {
  const BedrockagentcoreApiKeyCredentialProviderApiKeyOrApiKeySecretConfigOrApiKeyWoApiKey(
    this.apiKey,
  );

  final TfArg<String> apiKey;

  @override
  String get blockKey => 'api_key';

  @override
  Map<String, Object?> encode() => {'api_key': apiKey.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'api_key': apiKey};
}

/// The [BedrockagentcoreApiKeyCredentialProviderApiKeyOrApiKeySecretConfigOrApiKeyWo.apiKeySecretConfig] choice: sets `api_key_secret_config`.
final class BedrockagentcoreApiKeyCredentialProviderApiKeyOrApiKeySecretConfigOrApiKeyWoApiKeySecretConfig
    extends
        BedrockagentcoreApiKeyCredentialProviderApiKeyOrApiKeySecretConfigOrApiKeyWo {
  const BedrockagentcoreApiKeyCredentialProviderApiKeyOrApiKeySecretConfigOrApiKeyWoApiKeySecretConfig(
    this.apiKeySecretConfig,
  );

  final List<BedrockagentcoreApiKeyCredentialProviderApiKeySecretConfig>
  apiKeySecretConfig;

  @override
  String get blockKey => 'api_key_secret_config';

  @override
  Map<String, Object?> encode() => {
    'api_key_secret_config': [for (final e in apiKeySecretConfig) e.encode()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'api_key_secret_config': TfArg.literal([
      for (final e in apiKeySecretConfig) e.encode(),
    ]),
  };
}

/// The [BedrockagentcoreApiKeyCredentialProviderApiKeyOrApiKeySecretConfigOrApiKeyWo.apiKeyWo] choice: sets `api_key_wo`.
final class BedrockagentcoreApiKeyCredentialProviderApiKeyOrApiKeySecretConfigOrApiKeyWoApiKeyWo
    extends
        BedrockagentcoreApiKeyCredentialProviderApiKeyOrApiKeySecretConfigOrApiKeyWo {
  const BedrockagentcoreApiKeyCredentialProviderApiKeyOrApiKeySecretConfigOrApiKeyWoApiKeyWo(
    this.apiKeyWo,
  );

  final TfArg<String> apiKeyWo;

  @override
  String get blockKey => 'api_key_wo';

  @override
  Map<String, Object?> encode() => {'api_key_wo': apiKeyWo.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'api_key_wo': apiKeyWo};
}

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
    required BedrockagentcoreApiKeyCredentialProviderApiKeyOrApiKeySecretConfigOrApiKeyWo
    apiKeyOrApiKeySecretConfigOrApiKeyWo,
    TfArg<BedrockagentcoreApiKeyCredentialProviderApiKeySecretSource>?
    apiKeySecretSource,
    TfArg<num>? apiKeyWoVersion,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...apiKeyOrApiKeySecretConfigOrApiKeyWo.argMap,
           if (apiKeySecretSource != null)
             'api_key_secret_source': apiKeySecretSource,
           if (apiKeyWoVersion != null) 'api_key_wo_version': apiKeyWoVersion,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsBedrockagentcoreApiKeyCredentialProviderSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockagentcoreApiKeyCredentialProvider>`.
  RefTo<AwsBedrockagentcoreApiKeyCredentialProvider> get ref => RefTo.of(this);

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
