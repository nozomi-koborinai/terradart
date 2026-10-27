// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_mssql_server_dns_alias`.
const Set<String> _azurermMssqlServerDnsAliasSensitive = <String>{};

/// Factory wrapper for `azurerm_mssql_server_dns_alias`.
final class AzurermMssqlServerDnsAlias extends Resource {
  static const String tfType = 'azurerm_mssql_server_dns_alias';

  AzurermMssqlServerDnsAlias(
    super.localName, {
    required TfArg<String> mssqlServerId,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'mssql_server_id': mssqlServerId, 'name': name},
       );

  @override
  Set<String> get sensitiveFields => _azurermMssqlServerDnsAliasSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMssqlServerDnsAlias>`.
  RefTo<AzurermMssqlServerDnsAlias> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dns_record` attribute.
  TfRef<String> get dnsRecord => TfRef.attribute<String>(this, 'dns_record');

  /// Reference to `mssql_server_id` attribute.
  TfRef<String> get mssqlServerId =>
      TfRef.attribute<String>(this, 'mssql_server_id');
}
