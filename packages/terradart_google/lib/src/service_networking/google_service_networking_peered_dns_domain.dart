// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

/// Sensitive field paths for `google_service_networking_peered_dns_domain`.
const Set<String> _googleServiceNetworkingPeeredDnsDomainSensitive = <String>{};

/// Factory wrapper for `google_service_networking_peered_dns_domain`.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleServiceNetworkingPeeredDnsDomain extends Resource {
  static const String tfType = 'google_service_networking_peered_dns_domain';

  GoogleServiceNetworkingPeeredDnsDomain({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> dnsSuffix,
    required TfArg<String> name,
    required RefTo<GoogleComputeNetwork> network,
    TfArg<String>? project,
    TfArg<String>? service,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'dns_suffix': dnsSuffix,
           'name': name,
           'network': network.encodeAs('name'),
           'project': ?project,
           'service': ?service,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleServiceNetworkingPeeredDnsDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleServiceNetworkingPeeredDnsDomain>`.
  RefTo<GoogleServiceNetworkingPeeredDnsDomain> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `dns_suffix` attribute.
  TfRef<String> get dnsSuffix => TfRef.attribute<String>(this, 'dns_suffix');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `service` attribute.
  TfRef<String> get service => TfRef.attribute<String>(this, 'service');
}
