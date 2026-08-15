// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_service_networking_peered_dns_domain`.
const Set<String> _googleServiceNetworkingPeeredDnsDomainSensitive = <String>{};

/// Factory wrapper for `google_service_networking_peered_dns_domain`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleServiceNetworkingPeeredDnsDomain extends Data {
  static const String tfType = 'google_service_networking_peered_dns_domain';

  DataGoogleServiceNetworkingPeeredDnsDomain({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> name,
    required TfArg<String> network,
    required TfArg<String> project,
    required TfArg<String> service,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'name': name,
           'network': network,
           'project': project,
           'service': service,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleServiceNetworkingPeeredDnsDomainSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dns_suffix` attribute.
  TfRef<String> get dnsSuffix => TfRef.attribute<String>(this, 'dns_suffix');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');
}
