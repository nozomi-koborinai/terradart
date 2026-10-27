// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_dns_soa_record`.
const Set<String> _azurermDnsSoaRecordSensitive = <String>{};

/// Factory wrapper for `azurerm_dns_soa_record`.
final class DataAzurermDnsSoaRecord extends Data {
  static const String tfType = 'azurerm_dns_soa_record';

  DataAzurermDnsSoaRecord(
    super.localName, {
    TfArg<String>? name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> zoneName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': ?name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'zone_name': zoneName,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDnsSoaRecordSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `expire_time` attribute.
  TfRef<num> get expireTime => TfRef.attribute<num>(this, 'expire_time');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdn => TfRef.attribute<String>(this, 'fqdn');

  /// Reference to `host_name` attribute.
  TfRef<String> get hostName => TfRef.attribute<String>(this, 'host_name');

  /// Reference to `minimum_ttl` attribute.
  TfRef<num> get minimumTtl => TfRef.attribute<num>(this, 'minimum_ttl');

  /// Reference to `refresh_time` attribute.
  TfRef<num> get refreshTime => TfRef.attribute<num>(this, 'refresh_time');

  /// Reference to `retry_time` attribute.
  TfRef<num> get retryTime => TfRef.attribute<num>(this, 'retry_time');

  /// Reference to `serial_number` attribute.
  TfRef<num> get serialNumber => TfRef.attribute<num>(this, 'serial_number');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `ttl` attribute.
  TfRef<num> get ttl => TfRef.attribute<num>(this, 'ttl');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `zone_name` attribute.
  TfRef<String> get zoneName => TfRef.attribute<String>(this, 'zone_name');
}
