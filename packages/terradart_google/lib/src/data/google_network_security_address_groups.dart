// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_address_groups`.
const Set<String> _googleNetworkSecurityAddressGroupsSensitive = <String>{};

/// Factory wrapper for `google_network_security_address_groups`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleNetworkSecurityAddressGroups extends Data {
  static const String tfType = 'google_network_security_address_groups';

  DataGoogleNetworkSecurityAddressGroups({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? parent,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           if (parent != null) 'parent': parent,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityAddressGroupsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `address_groups` attribute.
  TfRef<List<Map<String, Object?>>> get addressGroups =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'address_groups');
}
