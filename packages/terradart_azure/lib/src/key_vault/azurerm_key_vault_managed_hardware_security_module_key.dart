// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_key_vault_managed_hardware_security_module_key`.
const Set<String> _azurermKeyVaultManagedHardwareSecurityModuleKeySensitive =
    <String>{};

/// Key Vault Managed Hardware Security Module Key enum for `curve`.
extension type const KeyVaultManagedHardwareSecurityModuleKeyCurve._(
  TfArg<String> _
) implements TfArg<String> {
  KeyVaultManagedHardwareSecurityModuleKeyCurve.variable(String name)
    : this._(TfArg.variable(name));
  KeyVaultManagedHardwareSecurityModuleKeyCurve.expression(String template)
    : this._(TfArg.expression(template));
  const KeyVaultManagedHardwareSecurityModuleKeyCurve.arg(TfArg<String> arg)
    : this._(arg);

  static const p256 = KeyVaultManagedHardwareSecurityModuleKeyCurve._(
    TfArgLiteral('P-256'),
  );
  static const p256k = KeyVaultManagedHardwareSecurityModuleKeyCurve._(
    TfArgLiteral('P-256K'),
  );
  static const p384 = KeyVaultManagedHardwareSecurityModuleKeyCurve._(
    TfArgLiteral('P-384'),
  );
  static const p521 = KeyVaultManagedHardwareSecurityModuleKeyCurve._(
    TfArgLiteral('P-521'),
  );

  static const List<KeyVaultManagedHardwareSecurityModuleKeyCurve> values = [
    p256,
    p256k,
    p384,
    p521,
  ];
}

/// Key Vault Managed Hardware Security Module Key enum for `key_opts`.
extension type const KeyVaultManagedHardwareSecurityModuleKeyOpts._(
  TfArg<String> _
) implements TfArg<String> {
  KeyVaultManagedHardwareSecurityModuleKeyOpts.variable(String name)
    : this._(TfArg.variable(name));
  KeyVaultManagedHardwareSecurityModuleKeyOpts.expression(String template)
    : this._(TfArg.expression(template));
  const KeyVaultManagedHardwareSecurityModuleKeyOpts.arg(TfArg<String> arg)
    : this._(arg);

  static const decrypt = KeyVaultManagedHardwareSecurityModuleKeyOpts._(
    TfArgLiteral('decrypt'),
  );
  static const encrypt = KeyVaultManagedHardwareSecurityModuleKeyOpts._(
    TfArgLiteral('encrypt'),
  );
  static const sign = KeyVaultManagedHardwareSecurityModuleKeyOpts._(
    TfArgLiteral('sign'),
  );
  static const unwrapkey = KeyVaultManagedHardwareSecurityModuleKeyOpts._(
    TfArgLiteral('unwrapKey'),
  );
  static const verify = KeyVaultManagedHardwareSecurityModuleKeyOpts._(
    TfArgLiteral('verify'),
  );
  static const wrapkey = KeyVaultManagedHardwareSecurityModuleKeyOpts._(
    TfArgLiteral('wrapKey'),
  );
  static const import = KeyVaultManagedHardwareSecurityModuleKeyOpts._(
    TfArgLiteral('import'),
  );

  static const List<KeyVaultManagedHardwareSecurityModuleKeyOpts> values = [
    decrypt,
    encrypt,
    sign,
    unwrapkey,
    verify,
    wrapkey,
    import,
  ];
}

/// Key Vault Managed Hardware Security Module Key enum for `key_type`.
extension type const KeyVaultManagedHardwareSecurityModuleKeyType._(
  TfArg<String> _
) implements TfArg<String> {
  KeyVaultManagedHardwareSecurityModuleKeyType.variable(String name)
    : this._(TfArg.variable(name));
  KeyVaultManagedHardwareSecurityModuleKeyType.expression(String template)
    : this._(TfArg.expression(template));
  const KeyVaultManagedHardwareSecurityModuleKeyType.arg(TfArg<String> arg)
    : this._(arg);

  static const ecHsm = KeyVaultManagedHardwareSecurityModuleKeyType._(
    TfArgLiteral('EC-HSM'),
  );
  static const octHsm = KeyVaultManagedHardwareSecurityModuleKeyType._(
    TfArgLiteral('oct-HSM'),
  );
  static const rsaHsm = KeyVaultManagedHardwareSecurityModuleKeyType._(
    TfArgLiteral('RSA-HSM'),
  );

  static const List<KeyVaultManagedHardwareSecurityModuleKeyType> values = [
    ecHsm,
    octHsm,
    rsaHsm,
  ];
}

/// Factory wrapper for `azurerm_key_vault_managed_hardware_security_module_key`.
final class AzurermKeyVaultManagedHardwareSecurityModuleKey extends Resource {
  static const String tfType =
      'azurerm_key_vault_managed_hardware_security_module_key';

  AzurermKeyVaultManagedHardwareSecurityModuleKey(
    super.localName, {
    KeyVaultManagedHardwareSecurityModuleKeyCurve? curve,
    TfArg<String>? expirationDate,
    required EnumList<KeyVaultManagedHardwareSecurityModuleKeyOpts> keyOpts,
    TfArg<num>? keySize,
    required KeyVaultManagedHardwareSecurityModuleKeyType keyType,
    required TfArg<String> managedHsmId,
    required TfArg<String> name,
    TfArg<String>? notBeforeDate,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'curve': ?curve,
           'expiration_date': ?expirationDate,
           'key_opts': keyOpts,
           'key_size': ?keySize,
           'key_type': keyType,
           'managed_hsm_id': managedHsmId,
           'name': name,
           'not_before_date': ?notBeforeDate,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermKeyVaultManagedHardwareSecurityModuleKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKeyVaultManagedHardwareSecurityModuleKey>`.
  RefTo<AzurermKeyVaultManagedHardwareSecurityModuleKey> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `versioned_id` attribute.
  TfRef<String> get versionedId =>
      TfRef.attribute<String>(this, 'versioned_id');

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

  /// Reference to `managed_hsm_id` attribute.
  TfRef<String> get managedHsmId =>
      TfRef.attribute<String>(this, 'managed_hsm_id');

  /// Reference to `not_before_date` attribute.
  TfRef<String> get notBeforeDate =>
      TfRef.attribute<String>(this, 'not_before_date');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
