// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_analysis_services_server`.
const Set<String> _azurermAnalysisServicesServerSensitive = <String>{
  'backup_blob_container_uri',
};

/// Analysis Services Server Querypool Connection enum for `querypool_connection_mode`.
extension type const AnalysisServicesServerQuerypoolConnectionMode._(
  TfArg<String> _
) implements TfArg<String> {
  AnalysisServicesServerQuerypoolConnectionMode.variable(String name)
    : this._(TfArg.variable(name));
  AnalysisServicesServerQuerypoolConnectionMode.expression(String template)
    : this._(TfArg.expression(template));
  const AnalysisServicesServerQuerypoolConnectionMode.arg(TfArg<String> arg)
    : this._(arg);

  static const all = AnalysisServicesServerQuerypoolConnectionMode._(
    TfArgLiteral('All'),
  );
  static const readonly = AnalysisServicesServerQuerypoolConnectionMode._(
    TfArgLiteral('ReadOnly'),
  );

  static const List<AnalysisServicesServerQuerypoolConnectionMode> values = [
    all,
    readonly,
  ];
}

/// Analysis Services Server enum for `sku`.
extension type const AnalysisServicesServerSku._(TfArg<String> _)
    implements TfArg<String> {
  AnalysisServicesServerSku.variable(String name)
    : this._(TfArg.variable(name));
  AnalysisServicesServerSku.expression(String template)
    : this._(TfArg.expression(template));
  const AnalysisServicesServerSku.arg(TfArg<String> arg) : this._(arg);

  static const d1 = AnalysisServicesServerSku._(TfArgLiteral('D1'));
  static const b1 = AnalysisServicesServerSku._(TfArgLiteral('B1'));
  static const b2 = AnalysisServicesServerSku._(TfArgLiteral('B2'));
  static const s0 = AnalysisServicesServerSku._(TfArgLiteral('S0'));
  static const s1 = AnalysisServicesServerSku._(TfArgLiteral('S1'));
  static const s2 = AnalysisServicesServerSku._(TfArgLiteral('S2'));
  static const s4 = AnalysisServicesServerSku._(TfArgLiteral('S4'));
  static const s8 = AnalysisServicesServerSku._(TfArgLiteral('S8'));
  static const s9 = AnalysisServicesServerSku._(TfArgLiteral('S9'));
  static const s8v2 = AnalysisServicesServerSku._(TfArgLiteral('S8v2'));
  static const s9v2 = AnalysisServicesServerSku._(TfArgLiteral('S9v2'));

  static const List<AnalysisServicesServerSku> values = [
    d1,
    b1,
    b2,
    s0,
    s1,
    s2,
    s4,
    s8,
    s9,
    s8v2,
    s9v2,
  ];
}

/// Typed helper for the `ipv4_firewall_rule` block of
/// `azurerm_analysis_services_server` (derived from provider schema).
@immutable
final class AnalysisServicesServerIpv4FirewallRule {
  const AnalysisServicesServerIpv4FirewallRule({
    required this.name,
    required this.rangeEnd,
    required this.rangeStart,
  });

  final TfArg<String> name;

  final TfArg<String> rangeEnd;

  final TfArg<String> rangeStart;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'range_end': rangeEnd.toTfJson(),
    'range_start': rangeStart.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_analysis_services_server`.
final class AzurermAnalysisServicesServer extends Resource {
  static const String tfType = 'azurerm_analysis_services_server';

  AzurermAnalysisServicesServer(
    super.localName, {
    TfArg<List<String>>? adminUsers,
    Sensitive<String>? backupBlobContainerUri,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<bool>? powerBiServiceEnabled,
    AnalysisServicesServerQuerypoolConnectionMode? querypoolConnectionMode,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required AnalysisServicesServerSku sku,
    TfArg<Map<String, String>>? tags,
    List<AnalysisServicesServerIpv4FirewallRule>? ipv4FirewallRule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'admin_users': ?adminUsers,
           'backup_blob_container_uri': ?backupBlobContainerUri,
           'location': location,
           'name': name,
           'power_bi_service_enabled': ?powerBiServiceEnabled,
           'querypool_connection_mode': ?querypoolConnectionMode,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku': sku,
           'tags': ?tags,
           if (ipv4FirewallRule != null)
             'ipv4_firewall_rule': TfArg.literal([
               for (final e in ipv4FirewallRule) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAnalysisServicesServerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAnalysisServicesServer>`.
  RefTo<AzurermAnalysisServicesServer> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `server_full_name` attribute.
  TfRef<String> get serverFullName =>
      TfRef.attribute<String>(this, 'server_full_name');

  /// Reference to `admin_users` attribute.
  TfRef<List<String>> get adminUsers =>
      TfRef.attribute<List<String>>(this, 'admin_users');

  /// Reference to `backup_blob_container_uri` attribute.
  TfRef<String> get backupBlobContainerUri =>
      TfRef.attribute<String>(this, 'backup_blob_container_uri');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `power_bi_service_enabled` attribute.
  TfRef<bool> get powerBiServiceEnabled =>
      TfRef.attribute<bool>(this, 'power_bi_service_enabled');

  /// Reference to `querypool_connection_mode` attribute.
  TfRef<String> get querypoolConnectionMode =>
      TfRef.attribute<String>(this, 'querypool_connection_mode');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
