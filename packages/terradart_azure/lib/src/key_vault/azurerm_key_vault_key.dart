// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../key_vault/azurerm_key_vault.dart' show AzurermKeyVault;

/// Sensitive field paths for `azurerm_key_vault_key`.
const Set<String> _azurermKeyVaultKeySensitive = <String>{};

/// Key Vault Key enum for `curve`.
extension type const KeyVaultKeyCurve._(TfArg<String> _)
    implements TfArg<String> {
  KeyVaultKeyCurve.variable(String name) : this._(TfArg.variable(name));
  KeyVaultKeyCurve.expression(String template)
    : this._(TfArg.expression(template));
  const KeyVaultKeyCurve.arg(TfArg<String> arg) : this._(arg);

  static const p256 = KeyVaultKeyCurve._(TfArgLiteral('P-256'));
  static const p256k = KeyVaultKeyCurve._(TfArgLiteral('P-256K'));
  static const p384 = KeyVaultKeyCurve._(TfArgLiteral('P-384'));
  static const p521 = KeyVaultKeyCurve._(TfArgLiteral('P-521'));

  static const List<KeyVaultKeyCurve> values = [p256, p256k, p384, p521];
}

/// Key Vault Key enum for `key_opts`.
extension type const KeyVaultKeyOpts._(TfArg<String> _)
    implements TfArg<String> {
  KeyVaultKeyOpts.variable(String name) : this._(TfArg.variable(name));
  KeyVaultKeyOpts.expression(String template)
    : this._(TfArg.expression(template));
  const KeyVaultKeyOpts.arg(TfArg<String> arg) : this._(arg);

  static const decrypt = KeyVaultKeyOpts._(TfArgLiteral('decrypt'));
  static const encrypt = KeyVaultKeyOpts._(TfArgLiteral('encrypt'));
  static const sign = KeyVaultKeyOpts._(TfArgLiteral('sign'));
  static const unwrapkey = KeyVaultKeyOpts._(TfArgLiteral('unwrapKey'));
  static const verify = KeyVaultKeyOpts._(TfArgLiteral('verify'));
  static const wrapkey = KeyVaultKeyOpts._(TfArgLiteral('wrapKey'));

  static const List<KeyVaultKeyOpts> values = [
    decrypt,
    encrypt,
    sign,
    unwrapkey,
    verify,
    wrapkey,
  ];
}

/// Key Vault Key enum for `key_type`.
extension type const KeyVaultKeyType._(TfArg<String> _)
    implements TfArg<String> {
  KeyVaultKeyType.variable(String name) : this._(TfArg.variable(name));
  KeyVaultKeyType.expression(String template)
    : this._(TfArg.expression(template));
  const KeyVaultKeyType.arg(TfArg<String> arg) : this._(arg);

  static const ec = KeyVaultKeyType._(TfArgLiteral('EC'));
  static const ecHsm = KeyVaultKeyType._(TfArgLiteral('EC-HSM'));
  static const rsa = KeyVaultKeyType._(TfArgLiteral('RSA'));
  static const rsaHsm = KeyVaultKeyType._(TfArgLiteral('RSA-HSM'));

  static const List<KeyVaultKeyType> values = [ec, ecHsm, rsa, rsaHsm];
}

/// At most one of `curve`, `key_size` on `azurerm_key_vault_key`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.curve(...)`.
sealed class KeyVaultKeyParameter {
  const KeyVaultKeyParameter();

  /// Sets `curve`.
  const factory KeyVaultKeyParameter.curve(KeyVaultKeyCurve curve) =
      KeyVaultKeyParameterCurve;

  /// Sets `key_size`.
  const factory KeyVaultKeyParameter.keySize(TfArg<num> keySize) =
      KeyVaultKeyParameterKeySize;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [KeyVaultKeyParameter.curve] choice: sets `curve`.
final class KeyVaultKeyParameterCurve extends KeyVaultKeyParameter {
  const KeyVaultKeyParameterCurve(this.curve);

  final KeyVaultKeyCurve curve;

  @internal
  @override
  String get blockKey => 'curve';

  @internal
  @override
  Map<String, Object?> encode() => {'curve': curve.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'curve': curve};
}

/// The [KeyVaultKeyParameter.keySize] choice: sets `key_size`.
final class KeyVaultKeyParameterKeySize extends KeyVaultKeyParameter {
  const KeyVaultKeyParameterKeySize(this.keySize);

  final TfArg<num> keySize;

  @internal
  @override
  String get blockKey => 'key_size';

  @internal
  @override
  Map<String, Object?> encode() => {'key_size': keySize.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'key_size': keySize};
}

/// Typed helper for the `release_policy` block of
/// `azurerm_key_vault_key` (derived from provider schema).
@immutable
final class KeyVaultKeyReleasePolicy {
  const KeyVaultKeyReleasePolicy({this.immutable, required this.json});

  final TfArg<bool>? immutable;

  final TfArg<String> json;

  @internal
  Map<String, Object?> encode() => {
    'immutable': ?immutable?.toTfJson(),
    'json': json.toTfJson(),
  };
}

/// Typed helper for the `rotation_policy` block of
/// `azurerm_key_vault_key` (derived from provider schema).
@immutable
final class KeyVaultKeyRotationPolicy {
  const KeyVaultKeyRotationPolicy({
    this.expireAfter,
    this.notifyBeforeExpiry,
    this.automatic,
  });

  final TfArg<String>? expireAfter;

  final TfArg<String>? notifyBeforeExpiry;

  final KeyVaultKeyAutomatic? automatic;

  @internal
  Map<String, Object?> encode() => {
    'expire_after': ?expireAfter?.toTfJson(),
    'notify_before_expiry': ?notifyBeforeExpiry?.toTfJson(),
    'automatic': ?automatic?.encode(),
  };
}

/// Typed helper for the `rotation_policy.automatic` block of
/// `azurerm_key_vault_key` (derived from provider schema).
@immutable
final class KeyVaultKeyAutomatic {
  const KeyVaultKeyAutomatic({this.timeAfterCreation, this.timeBeforeExpiry});

  final TfArg<String>? timeAfterCreation;

  final TfArg<String>? timeBeforeExpiry;

  @internal
  Map<String, Object?> encode() => {
    'time_after_creation': ?timeAfterCreation?.toTfJson(),
    'time_before_expiry': ?timeBeforeExpiry?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_key_vault_key`.
final class AzurermKeyVaultKey extends Resource {
  static const String tfType = 'azurerm_key_vault_key';

  AzurermKeyVaultKey(
    super.localName, {
    KeyVaultKeyParameter? keyParameter,
    TfArg<String>? expirationDate,
    required List<KeyVaultKeyOpts> keyOpts,
    required KeyVaultKeyType keyType,
    required RefTo<AzurermKeyVault> keyVaultId,
    required TfArg<String> name,
    TfArg<String>? notBeforeDate,
    TfArg<Map<String, String>>? tags,
    KeyVaultKeyReleasePolicy? releasePolicy,
    KeyVaultKeyRotationPolicy? rotationPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?keyParameter?.argMap,
           'expiration_date': ?expirationDate,
           'key_opts': TfArg.literal([for (final e in keyOpts) e.toTfJson()]),
           'key_type': keyType,
           'key_vault_id': keyVaultId.encodeAs('id'),
           'name': name,
           'not_before_date': ?notBeforeDate,
           'tags': ?tags,
           if (releasePolicy != null)
             'release_policy': TfArg.literal(releasePolicy.encode()),
           if (rotationPolicy != null)
             'rotation_policy': TfArg.literal(rotationPolicy.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermKeyVaultKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKeyVaultKey>`.
  RefTo<AzurermKeyVaultKey> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `e` attribute.
  TfRef<String> get e => TfRef.attribute<String>(this, 'e');

  /// Reference to `n` attribute.
  TfRef<String> get n => TfRef.attribute<String>(this, 'n');

  /// Reference to `public_key_openssh` attribute.
  TfRef<String> get publicKeyOpenssh =>
      TfRef.attribute<String>(this, 'public_key_openssh');

  /// Reference to `public_key_pem` attribute.
  TfRef<String> get publicKeyPem =>
      TfRef.attribute<String>(this, 'public_key_pem');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `resource_versionless_id` attribute.
  TfRef<String> get resourceVersionlessId =>
      TfRef.attribute<String>(this, 'resource_versionless_id');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `versionless_id` attribute.
  TfRef<String> get versionlessId =>
      TfRef.attribute<String>(this, 'versionless_id');

  /// Reference to `x` attribute.
  TfRef<String> get x => TfRef.attribute<String>(this, 'x');

  /// Reference to `y` attribute.
  TfRef<String> get y => TfRef.attribute<String>(this, 'y');

  /// Reference to `curve` attribute.
  TfRef<String> get curve => TfRef.attribute<String>(this, 'curve');

  /// Reference to `expiration_date` attribute.
  TfRef<String> get expirationDate =>
      TfRef.attribute<String>(this, 'expiration_date');

  /// Reference to `key_opts` attribute.
  TfRef<List<String>> get keyOpts =>
      TfRef.attribute<List<String>>(this, 'key_opts');

  /// Reference to `key_size` attribute.
  TfRef<num> get keySize => TfRef.attribute<num>(this, 'key_size');

  /// Reference to `key_type` attribute.
  TfRef<String> get keyType => TfRef.attribute<String>(this, 'key_type');

  /// Reference to `key_vault_id` attribute.
  TfRef<String> get keyVaultId => TfRef.attribute<String>(this, 'key_vault_id');

  /// Reference to `not_before_date` attribute.
  TfRef<String> get notBeforeDate =>
      TfRef.attribute<String>(this, 'not_before_date');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
