// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../key_vault/azurerm_key_vault.dart' show AzurermKeyVault;

/// Sensitive field paths for `azurerm_key_vault_secret`.
const Set<String> _azurermKeyVaultSecretSensitive = <String>{'value'};

/// Exactly one of `value`, `value_wo` on `azurerm_key_vault_secret`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.value(...)`.
sealed class KeyVaultSecretValue {
  const KeyVaultSecretValue();

  /// Sets `value`.
  const factory KeyVaultSecretValue.value(Sensitive<String> value) =
      KeyVaultSecretValueChoice;

  /// Sets `value_wo`.
  const factory KeyVaultSecretValue.valueWo(TfArg<String> valueWo) =
      KeyVaultSecretValueWo;

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

/// The [KeyVaultSecretValue.value] choice: sets `value`.
final class KeyVaultSecretValueChoice extends KeyVaultSecretValue {
  const KeyVaultSecretValueChoice(this.value);

  final Sensitive<String> value;

  @internal
  @override
  String get blockKey => 'value';

  @internal
  @override
  Map<String, Object?> encode() => {'value': value.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'value': value};
}

/// The [KeyVaultSecretValue.valueWo] choice: sets `value_wo`.
final class KeyVaultSecretValueWo extends KeyVaultSecretValue {
  const KeyVaultSecretValueWo(this.valueWo);

  final TfArg<String> valueWo;

  @internal
  @override
  String get blockKey => 'value_wo';

  @internal
  @override
  Map<String, Object?> encode() => {'value_wo': valueWo.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'value_wo': valueWo};
}

/// Factory wrapper for `azurerm_key_vault_secret`.
final class AzurermKeyVaultSecret extends Resource {
  static const String tfType = 'azurerm_key_vault_secret';

  AzurermKeyVaultSecret(
    super.localName, {
    TfArg<String>? contentType,
    TfArg<String>? expirationDate,
    required RefTo<AzurermKeyVault> keyVaultId,
    required TfArg<String> name,
    TfArg<String>? notBeforeDate,
    TfArg<Map<String, String>>? tags,
    required KeyVaultSecretValue value,
    TfArg<num>? valueWoVersion,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'content_type': ?contentType,
           'expiration_date': ?expirationDate,
           'key_vault_id': keyVaultId.encodeAs('id'),
           'name': name,
           'not_before_date': ?notBeforeDate,
           'tags': ?tags,
           ...value.argMap,
           'value_wo_version': ?valueWoVersion,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermKeyVaultSecretSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKeyVaultSecret>`.
  RefTo<AzurermKeyVaultSecret> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

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

  /// Reference to `content_type` attribute.
  TfRef<String> get contentType =>
      TfRef.attribute<String>(this, 'content_type');

  /// Reference to `expiration_date` attribute.
  TfRef<String> get expirationDate =>
      TfRef.attribute<String>(this, 'expiration_date');

  /// Reference to `key_vault_id` attribute.
  TfRef<String> get keyVaultId => TfRef.attribute<String>(this, 'key_vault_id');

  /// Reference to `not_before_date` attribute.
  TfRef<String> get notBeforeDate =>
      TfRef.attribute<String>(this, 'not_before_date');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');

  /// Reference to `value_wo_version` attribute.
  TfRef<num> get valueWoVersion =>
      TfRef.attribute<num>(this, 'value_wo_version');
}
