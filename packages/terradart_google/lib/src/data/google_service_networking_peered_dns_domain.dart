// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../service_networking/google_service_networking_peered_dns_domain.dart';
import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

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
    required RefTo<GoogleComputeNetwork> network,
    required TfArg<String> project,
    required TfArg<String> service,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'name': name,
           'network': network.encodeAs('name'),
           'project': project,
           'service': service,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleServiceNetworkingPeeredDnsDomainSensitive;

  /// A reference to the `google_service_networking_peered_dns_domain` this data source reads, for
  /// arguments typed `RefTo<GoogleServiceNetworkingPeeredDnsDomain>`.
  RefTo<GoogleServiceNetworkingPeeredDnsDomain> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dns_suffix` attribute.
  TfRef<String> get dnsSuffix => TfRef.attribute<String>(this, 'dns_suffix');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `service` attribute.
  TfRef<String> get service => TfRef.attribute<String>(this, 'service');
}
