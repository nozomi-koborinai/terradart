// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_postgresql_flexible_server_virtual_endpoint`.
const Set<String> _azurermPostgresqlFlexibleServerVirtualEndpointSensitive =
    <String>{};

/// Factory wrapper for `azurerm_postgresql_flexible_server_virtual_endpoint`.
final class AzurermPostgresqlFlexibleServerVirtualEndpoint extends Resource {
  static const String tfType =
      'azurerm_postgresql_flexible_server_virtual_endpoint';

  AzurermPostgresqlFlexibleServerVirtualEndpoint(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> replicaServerId,
    required TfArg<String> sourceServerId,
    required TfArg<String> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'replica_server_id': replicaServerId,
           'source_server_id': sourceServerId,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermPostgresqlFlexibleServerVirtualEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPostgresqlFlexibleServerVirtualEndpoint>`.
  RefTo<AzurermPostgresqlFlexibleServerVirtualEndpoint> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `replica_server_id` attribute.
  TfRef<String> get replicaServerId =>
      TfRef.attribute<String>(this, 'replica_server_id');

  /// Reference to `source_server_id` attribute.
  TfRef<String> get sourceServerId =>
      TfRef.attribute<String>(this, 'source_server_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
