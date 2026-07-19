// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_client_tls_policy`.
const Set<String> _googleNetworkSecurityClientTlsPolicySensitive = <String>{};

/// Factory wrapper for `google_network_security_client_tls_policy`.
///
/// ClientTlsPolicy is a resource that specifies how a client should
/// authenticate connections to backends of a service. This resource itself does
/// not affect configuration unless it is attached to a backend service
/// resource.
///
/// Network Security **client TLS policy** — how a client authenticates to
/// backends (Traffic Director / service mesh). Creating a policy alone does
/// not attach it to a backend or bill mesh SKUs.
///
/// Optional nested `clientCertificate` / `serverValidationCa` blocks stay
/// as maps (cert-provider exactly_one_of is nested, not sealed here).
///
/// Enable `networksecurity.googleapis.com` via [GoogleProjectService]
/// before apply.
///
/// Example:
/// ```dart
/// GoogleNetworkSecurityClientTlsPolicy(
///   localName: 'backend',
///   name: TfArg.literal('terradart-client-tls'),
///   location: TfArg.literal('global'),
///   description: TfArg.literal('TerraDart smoke client TLS policy'),
/// );
/// ```
final class GoogleNetworkSecurityClientTlsPolicy extends Resource {
  static const String tfType = 'google_network_security_client_tls_policy';

  GoogleNetworkSecurityClientTlsPolicy({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? location,
    TfArg<String>? description,
    TfArg<String>? sni,
    TfArg<Map<String, dynamic>>? clientCertificate,
    TfArg<List<Map<String, dynamic>>>? serverValidationCa,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (location != null) 'location': location,
           if (description != null) 'description': description,
           if (sni != null) 'sni': sni,
           if (clientCertificate != null)
             'client_certificate': clientCertificate,
           if (serverValidationCa != null)
             'server_validation_ca': serverValidationCa,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityClientTlsPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
