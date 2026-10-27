// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_private_dns_aaaa_record`.
const Set<String> _azurermPrivateDnsAaaaRecordSensitive = <String>{};

/// Factory wrapper for `azurerm_private_dns_aaaa_record`.
final class AzurermPrivateDnsAaaaRecord extends Resource {
  static const String tfType = 'azurerm_private_dns_aaaa_record';

  AzurermPrivateDnsAaaaRecord(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> privateDnsZoneId,
    required TfArg<List<String>> records,
    TfArg<Map<String, String>>? tags,
    required TfArg<num> ttl,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'private_dns_zone_id': privateDnsZoneId,
           'records': records,
           'tags': ?tags,
           'ttl': ttl,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermPrivateDnsAaaaRecordSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPrivateDnsAaaaRecord>`.
  RefTo<AzurermPrivateDnsAaaaRecord> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdn => TfRef.attribute<String>(this, 'fqdn');

  /// Reference to `private_dns_zone_id` attribute.
  TfRef<String> get privateDnsZoneId =>
      TfRef.attribute<String>(this, 'private_dns_zone_id');

  /// Reference to `records` attribute.
  TfRef<List<String>> get records =>
      TfRef.attribute<List<String>>(this, 'records');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `ttl` attribute.
  TfRef<num> get ttl => TfRef.attribute<num>(this, 'ttl');
}
