// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_postgresql_flexible_server_configuration`.
const Set<String> _azurermPostgresqlFlexibleServerConfigurationSensitive =
    <String>{};

/// Factory wrapper for `azurerm_postgresql_flexible_server_configuration`.
final class AzurermPostgresqlFlexibleServerConfiguration extends Resource {
  static const String tfType =
      'azurerm_postgresql_flexible_server_configuration';

  AzurermPostgresqlFlexibleServerConfiguration(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> serverId,
    required TfArg<String> value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'server_id': serverId, 'value': value},
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermPostgresqlFlexibleServerConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPostgresqlFlexibleServerConfiguration>`.
  RefTo<AzurermPostgresqlFlexibleServerConfiguration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `server_id` attribute.
  TfRef<String> get serverId => TfRef.attribute<String>(this, 'server_id');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}
