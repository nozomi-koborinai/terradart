// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_key_vault_encrypted_value`.
const Set<String> _azurermKeyVaultEncryptedValueSensitive = <String>{
  'decoded_plain_text_value',
  'encrypted_data',
  'plain_text_value',
};

/// Data Key Vault Encrypted Value enum for `algorithm`.
extension type const DataKeyVaultEncryptedValueAlgorithm._(TfArg<String> _)
    implements TfArg<String> {
  DataKeyVaultEncryptedValueAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  DataKeyVaultEncryptedValueAlgorithm.expression(String template)
    : this._(TfArg.expression(template));
  const DataKeyVaultEncryptedValueAlgorithm.arg(TfArg<String> arg)
    : this._(arg);

  static const rsa15 = DataKeyVaultEncryptedValueAlgorithm._(
    TfArgLiteral('RSA1_5'),
  );
  static const rsaOaep = DataKeyVaultEncryptedValueAlgorithm._(
    TfArgLiteral('RSA-OAEP'),
  );
  static const rsaOaep256 = DataKeyVaultEncryptedValueAlgorithm._(
    TfArgLiteral('RSA-OAEP-256'),
  );

  static const List<DataKeyVaultEncryptedValueAlgorithm> values = [
    rsa15,
    rsaOaep,
    rsaOaep256,
  ];
}

/// Factory wrapper for `azurerm_key_vault_encrypted_value`.
final class DataAzurermKeyVaultEncryptedValue extends Data {
  static const String tfType = 'azurerm_key_vault_encrypted_value';

  DataAzurermKeyVaultEncryptedValue(
    super.localName, {
    required DataKeyVaultEncryptedValueAlgorithm algorithm,
    Sensitive<String>? encryptedData,
    required TfArg<String> keyVaultKeyId,
    Sensitive<String>? plainTextValue,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'algorithm': algorithm,
           'encrypted_data': ?encryptedData,
           'key_vault_key_id': keyVaultKeyId,
           'plain_text_value': ?plainTextValue,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermKeyVaultEncryptedValueSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `decoded_plain_text_value` attribute.
  TfRef<String> get decodedPlainTextValue =>
      TfRef.attribute<String>(this, 'decoded_plain_text_value');

  /// Reference to `algorithm` attribute.
  TfRef<String> get algorithm => TfRef.attribute<String>(this, 'algorithm');

  /// Reference to `encrypted_data` attribute.
  TfRef<String> get encryptedData =>
      TfRef.attribute<String>(this, 'encrypted_data');

  /// Reference to `key_vault_key_id` attribute.
  TfRef<String> get keyVaultKeyId =>
      TfRef.attribute<String>(this, 'key_vault_key_id');

  /// Reference to `plain_text_value` attribute.
  TfRef<String> get plainTextValue =>
      TfRef.attribute<String>(this, 'plain_text_value');
}
