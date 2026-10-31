// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_app_configuration_key`.
const Set<String> _azurermAppConfigurationKeySensitive = <String>{};

/// App Configuration Key enum for `type`.
extension type const AppConfigurationKeyType._(TfArg<String> _)
    implements TfArg<String> {
  AppConfigurationKeyType.variable(String name) : this._(TfArg.variable(name));
  AppConfigurationKeyType.expression(String template)
    : this._(TfArg.expression(template));
  const AppConfigurationKeyType.arg(TfArg<String> arg) : this._(arg);

  static const vault = AppConfigurationKeyType._(TfArgLiteral('vault'));
  static const kv = AppConfigurationKeyType._(TfArgLiteral('kv'));

  static const List<AppConfigurationKeyType> values = [vault, kv];
}

/// At most one of `value`, `vault_key_reference` on `azurerm_app_configuration_key`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.value(...)`.
sealed class AppConfigurationKeySource {
  const AppConfigurationKeySource();

  /// Sets `value`.
  const factory AppConfigurationKeySource.value(TfArg<String> value) =
      AppConfigurationKeySourceValue;

  /// Sets `vault_key_reference`.
  const factory AppConfigurationKeySource.vaultKeyReference(
    TfArg<String> vaultKeyReference,
  ) = AppConfigurationKeySourceVaultKeyReference;

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

/// The [AppConfigurationKeySource.value] choice: sets `value`.
final class AppConfigurationKeySourceValue extends AppConfigurationKeySource {
  const AppConfigurationKeySourceValue(this.value);

  final TfArg<String> value;

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

/// The [AppConfigurationKeySource.vaultKeyReference] choice: sets `vault_key_reference`.
final class AppConfigurationKeySourceVaultKeyReference
    extends AppConfigurationKeySource {
  const AppConfigurationKeySourceVaultKeyReference(this.vaultKeyReference);

  final TfArg<String> vaultKeyReference;

  @internal
  @override
  String get blockKey => 'vault_key_reference';

  @internal
  @override
  Map<String, Object?> encode() => {
    'vault_key_reference': vaultKeyReference.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'vault_key_reference': vaultKeyReference,
  };
}

/// Factory wrapper for `azurerm_app_configuration_key`.
final class AzurermAppConfigurationKey extends Resource {
  static const String tfType = 'azurerm_app_configuration_key';

  AzurermAppConfigurationKey(
    super.localName, {
    required TfArg<String> configurationStoreId,
    TfArg<String>? contentType,
    TfArg<String>? etag,
    required TfArg<String> key,
    TfArg<String>? label,
    TfArg<bool>? locked,
    TfArg<Map<String, String>>? tags,
    AppConfigurationKeyType? type,
    AppConfigurationKeySource? source,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'configuration_store_id': configurationStoreId,
           'content_type': ?contentType,
           'etag': ?etag,
           'key': key,
           'label': ?label,
           'locked': ?locked,
           'tags': ?tags,
           'type': ?type,
           ...?source?.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAppConfigurationKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAppConfigurationKey>`.
  RefTo<AzurermAppConfigurationKey> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `configuration_store_id` attribute.
  TfRef<String> get configurationStoreId =>
      TfRef.attribute<String>(this, 'configuration_store_id');

  /// Reference to `content_type` attribute.
  TfRef<String> get contentType =>
      TfRef.attribute<String>(this, 'content_type');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `key` attribute.
  TfRef<String> get key => TfRef.attribute<String>(this, 'key');

  /// Reference to `label` attribute.
  TfRef<String> get label => TfRef.attribute<String>(this, 'label');

  /// Reference to `locked` attribute.
  TfRef<bool> get locked => TfRef.attribute<bool>(this, 'locked');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');

  /// Reference to `vault_key_reference` attribute.
  TfRef<String> get vaultKeyReference =>
      TfRef.attribute<String>(this, 'vault_key_reference');
}
