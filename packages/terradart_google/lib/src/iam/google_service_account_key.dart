// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_service_account_key`.
const Set<String> _googleServiceAccountKeySensitive = <String>{'private_key'};

/// Signing algorithm for [GoogleServiceAccountKey.keyAlgorithm]. GCP
/// supports RSA-1024 (legacy) and RSA-2048 (default); `unspecified`
/// lets the API pick.
enum KeyAlgorithm {
  unspecified('KEY_ALG_UNSPECIFIED'),
  rsa1024('KEY_ALG_RSA_1024'),
  rsa2048('KEY_ALG_RSA_2048');

  const KeyAlgorithm(this.terraformValue);
  final String terraformValue;
}

/// Output format for the emitted private key
/// ([GoogleServiceAccountKey.privateKeyType]). `googleCredentialsFile`
/// (the default) returns a JSON credentials file matching what
/// `gcloud iam service-accounts keys create` emits; `pkcs12File`
/// returns a PKCS#12 keystore for systems that consume that format.
enum PrivateKeyType {
  unspecified('TYPE_UNSPECIFIED'),
  pkcs12File('TYPE_PKCS12_FILE'),
  googleCredentialsFile('TYPE_GOOGLE_CREDENTIALS_FILE');

  const PrivateKeyType(this.terraformValue);
  final String terraformValue;
}

/// Output format for the public key half
/// ([GoogleServiceAccountKey.publicKeyType]). `x509PemFile` is the most
/// portable choice; `rawPublicKey` returns just the key material.
enum PublicKeyType {
  none('TYPE_NONE'),
  x509PemFile('TYPE_X509_PEM_FILE'),
  rawPublicKey('TYPE_RAW_PUBLIC_KEY');

  const PublicKeyType(this.terraformValue);
  final String terraformValue;
}

/// Factory wrapper for `google_service_account_key`.
///
/// Generates a long-lived JSON service account key for a given SA. The
/// resulting private key material is exposed via the computed
/// `private_key` attribute — Terraform marks it **sensitive** and the
/// emitted [GoogleServiceAccountKey] adds it to `$sensitiveFields` so
/// stack synth masks it from any rendered Terraform JSON / app constants.
///
/// **Security note**: long-lived SA keys are a recurring source of
/// credential leaks. Prefer Workload Identity Federation
/// ([GoogleIamWorkloadIdentityPool] + a provider) or Workload Identity
/// (GKE) wherever possible. Reach for `service_account_key` only when
/// integrating with a legacy system that cannot accept short-lived
/// tokens.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - `serviceAccountId`: the parent SA. Accepts either the bare account
///   email/uniqueId (project is inferred from the provider) or the full
///   `projects/{project}/serviceAccounts/{email}` path. Passing
///   `TfArg.ref(sa.name)` is the canonical form.
///
/// Optional knobs:
/// - `keyAlgorithm`: signing algorithm ([KeyAlgorithm]).
/// - `privateKeyType`: output format for the emitted private key
///   ([PrivateKeyType]).
/// - `publicKeyType`: output format for the public key half
///   ([PublicKeyType]).
/// - `publicKeyData`: when set, **upload** an existing public key
///   (base64-encoded X509 PEM) instead of having GCP generate the keypair.
///   In that mode the `private_key` output is empty.
/// - `keepers`: arbitrary map whose value changes trigger key rotation.
///   Typical pattern: `keepers: TfArg.literal({'rotation': timestamp})`
///   refreshed by an external scheduler.
final class GoogleServiceAccountKey extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_service_account_key';

  GoogleServiceAccountKey({
    required super.localName,
    required TfArg<String> serviceAccountId,
    TfArg<KeyAlgorithm>? keyAlgorithm,
    TfArg<PrivateKeyType>? privateKeyType,
    TfArg<PublicKeyType>? publicKeyType,
    TfArg<String>? publicKeyData,
    TfArg<Map<String, String>>? keepers,
    super.lifecycle,
    super.dependsOn,
  }) : super(
          terraformType: $tfType,
          argMap: {
            'service_account_id': serviceAccountId,
            if (keyAlgorithm != null) 'key_algorithm': keyAlgorithm,
            if (privateKeyType != null) 'private_key_type': privateKeyType,
            if (publicKeyType != null) 'public_key_type': publicKeyType,
            if (publicKeyData != null) 'public_key_data': publicKeyData,
            if (keepers != null) 'keepers': keepers,
          },
        );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleServiceAccountKeySensitive;

  /// Reference to `name` attribute — full key path
  /// `projects/{project}/serviceAccounts/{email}/keys/{keyId}`.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to the base64-encoded private key payload. **Sensitive** —
  /// the synth pipeline masks this attribute in any rendered output, but
  /// downstream consumers (e.g. a Kubernetes secret) need to read it via
  /// this getter and route it through their own sensitive sink.
  TfRef<String> get privateKey => TfRef.attribute<String>(this, 'private_key');

  /// Reference to the base64-encoded public key half.
  TfRef<String> get publicKey => TfRef.attribute<String>(this, 'public_key');

  /// Reference to `valid_after` — RFC3339 timestamp when the key becomes
  /// usable (typically the moment it was created).
  TfRef<String> get validAfter => TfRef.attribute<String>(this, 'valid_after');

  /// Reference to `valid_before` — RFC3339 timestamp of natural key
  /// expiry.
  TfRef<String> get validBefore =>
      TfRef.attribute<String>(this, 'valid_before');
}
