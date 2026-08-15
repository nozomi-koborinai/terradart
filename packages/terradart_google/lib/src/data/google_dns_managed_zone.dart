// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dns_managed_zone`.
const Set<String> _googleDnsManagedZoneSensitive = <String>{};

/// Factory wrapper for `google_dns_managed_zone`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleDnsManagedZone extends Data {
  static const String tfType = 'google_dns_managed_zone';

  DataGoogleDnsManagedZone({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, if (project != null) 'project': project},
       );

  @override
  Set<String> get sensitiveFields => _googleDnsManagedZoneSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `dns_name` attribute.
  TfRef<String> get dnsName => TfRef.attribute<String>(this, 'dns_name');

  /// Reference to `managed_zone_id` attribute.
  TfRef<num> get managedZoneId => TfRef.attribute<num>(this, 'managed_zone_id');

  /// Reference to `name_servers` attribute.
  TfRef<List<String>> get nameServers =>
      TfRef.attribute<List<String>>(this, 'name_servers');

  /// Reference to `visibility` attribute.
  TfRef<String> get visibility => TfRef.attribute<String>(this, 'visibility');
}
