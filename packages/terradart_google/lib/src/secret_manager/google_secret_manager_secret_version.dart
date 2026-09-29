// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_secret_manager_secret_version`.
const Set<String> _googleSecretManagerSecretVersionSensitive = <String>{
  'secret_data',
};

/// Secret data of `google_secret_manager_secret_version`. Sealed so the
/// provider's `secret_data` / `secret_data_wo` ExactlyOneOf, and the
/// `secret_data_wo_version` that `secret_data_wo` requires, hold at
/// compile time.
sealed class SecretManagerSecretVersionPayload {
  const SecretManagerSecretVersionPayload();

  /// Write-only secret data (Terraform 1.11+): the provider sends [secretDataWo] to Secret Manager but never stores it in state.
  const factory SecretManagerSecretVersionPayload.writeOnly({
    required TfArg<String> secretDataWo,
    required TfArg<String> secretDataWoVersion,
  }) = SecretManagerSecretVersionWriteOnlyPayload;

  const factory SecretManagerSecretVersionPayload.plaintext({
    required TfArg<String> secretData,
  }) = SecretManagerSecretVersionPlaintextPayload;

  /// The key that tells the variants apart (`'secret_data_wo'` or
  /// `'secret_data'`).
  String get blockKey;

  /// Wire-format arguments this payload writes on the resource.
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], kept as the caller's [TfArg]s
  /// so synth still checks sensitive literals and variable references.
  Map<String, TfArg<Object?>> get argMap;
}

/// Write-only secret data (Terraform 1.11+): the provider sends
/// [secretDataWo] to Secret Manager but never stores it in state.
/// Changing [secretDataWoVersion] (`'1'` → `'2'`) makes Terraform write
/// the current [secretDataWo]; changing the data alone does nothing.
final class SecretManagerSecretVersionWriteOnlyPayload
    extends SecretManagerSecretVersionPayload {
  const SecretManagerSecretVersionWriteOnlyPayload({
    required this.secretDataWo,
    required this.secretDataWoVersion,
  });

  final TfArg<String> secretDataWo;

  /// Non-empty version tag of [secretDataWo]; `'0'` counts as unset.
  final TfArg<String> secretDataWoVersion;

  @override
  String get blockKey => 'secret_data_wo';

  @override
  Map<String, Object?> encode() => {
    'secret_data_wo': secretDataWo.toTfJson(),
    'secret_data_wo_version': secretDataWoVersion.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'secret_data_wo': secretDataWo,
    'secret_data_wo_version': secretDataWoVersion,
  };
}

/// Plaintext secret data. The provider marks it sensitive, so plans
/// redact it, but it is stored in Terraform state — prefer
/// [SecretManagerSecretVersionWriteOnlyPayload]. Changing it replaces the
/// version.
@Deprecated(
  'Use SecretManagerSecretVersionWriteOnlyPayload for state safety (§10.4)',
)
final class SecretManagerSecretVersionPlaintextPayload
    extends SecretManagerSecretVersionPayload {
  const SecretManagerSecretVersionPlaintextPayload({required this.secretData});

  final TfArg<String> secretData;

  @override
  String get blockKey => 'secret_data';

  @override
  Map<String, Object?> encode() => {'secret_data': secretData.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'secret_data': secretData};
}

/// Destroy behaviour for `google_secret_manager_secret_version`.
enum SecretManagerSecretVersionDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  disable('DISABLE'),
  abandon('ABANDON');

  const SecretManagerSecretVersionDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_secret_manager_secret_version`.
///
/// A secret version resource.
///
/// `payload`: the secret data — choose exactly one of:
/// - [SecretManagerSecretVersionWriteOnlyPayload] — `secret_data_wo` with
///   its required `secret_data_wo_version` (Terraform 1.11+); the data
///   never lands in Terraform state. Bump the version (`'1'` → `'2'`) to
///   write new data.
/// - [SecretManagerSecretVersionPlaintextPayload] — `secret_data`, stored
///   in Terraform state (deprecated by TerraDart policy).
///
/// ```dart
/// GoogleSecretManagerSecretVersion(
///   localName: 'api_key_v1',
///   secret: TfArg.ref(apiKey.id),
///   payload: SecretManagerSecretVersionWriteOnlyPayload(
///     secretDataWo: TfArg.literal(apiKeyValue),
///     secretDataWoVersion: TfArg.literal('1'),
///   ),
/// );
/// ```
final class GoogleSecretManagerSecretVersion extends Resource {
  static const String tfType = 'google_secret_manager_secret_version';

  GoogleSecretManagerSecretVersion({
    required super.localName,
    required TfArg<String> secret,
    required SecretManagerSecretVersionPayload payload,
    TfArg<bool>? enabled,
    TfArg<bool>? isSecretDataBase64,
    TfArg<SecretManagerSecretVersionDeletionPolicy>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'secret': secret,
           ...payload.argMap,
           'enabled': ?enabled,
           'is_secret_data_base64': ?isSecretDataBase64,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSecretManagerSecretVersionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSecretManagerSecretVersion>`.
  RefTo<GoogleSecretManagerSecretVersion> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `destroy_time` attribute.
  TfRef<String> get destroyTime =>
      TfRef.attribute<String>(this, 'destroy_time');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
