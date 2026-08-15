// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> network,
    TfArg<String>? project,
    TfArg<String>? service,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'dns_suffix': dnsSuffix,
           'name': name,
           'network': network,
           if (project != null) 'project': project,
           if (service != null) 'service': service,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleServiceNetworkingPeeredDnsDomainSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');
}
