// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_server_tls_policy`.
const Set<String> _googleNetworkSecurityServerTlsPolicySensitive = <String>{};

/// Factory wrapper for `google_network_security_server_tls_policy`.
///
/// ServerTlsPolicy is a resource that specifies how a server should
/// authenticate incoming requests. This resource itself does not affect
/// configuration unless it is attached to a target HTTPS proxy or endpoint
/// config selector resource.
///
/// Network Security **server TLS policy** — how a server presents TLS to
/// clients (Traffic Director / service mesh). Creating a policy alone does
/// not attach it to a proxy or bill mesh SKUs.
///
/// Optional nested `serverCertificate` / `mtlsPolicy` blocks stay as maps
/// (cert-provider exactly_one_of is nested, not sealed here).
///
/// Enable `networksecurity.googleapis.com` via [GoogleProjectService]
/// before apply.
///
/// Example:
/// ```dart
/// GoogleNetworkSecurityServerTlsPolicy(
///   localName: 'frontend',
///   name: TfArg.literal('terradart-server-tls'),
///   location: TfArg.literal('global'),
///   description: TfArg.literal('TerraDart smoke server TLS policy'),
///   allowOpen: TfArg.literal(true),
/// );
/// ```
final class GoogleNetworkSecurityServerTlsPolicy extends Resource {
  static const String tfType = 'google_network_security_server_tls_policy';

  GoogleNetworkSecurityServerTlsPolicy({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? location,
    TfArg<String>? description,
    TfArg<bool>? allowOpen,
    TfArg<Map<String, dynamic>>? serverCertificate,
    TfArg<Map<String, dynamic>>? mtlsPolicy,
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
           if (allowOpen != null) 'allow_open': allowOpen,
           if (serverCertificate != null)
             'server_certificate': serverCertificate,
           if (mtlsPolicy != null) 'mtls_policy': mtlsPolicy,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityServerTlsPolicySensitive;

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
