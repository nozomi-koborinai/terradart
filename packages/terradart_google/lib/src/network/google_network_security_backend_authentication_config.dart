// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_backend_authentication_config`.
const Set<String> _googleNetworkSecurityBackendAuthenticationConfigSensitive =
    <String>{};

/// Network Security Backend Authentication Config Well Known enum for `well_known_roots`.
enum NetworkSecurityBackendAuthenticationConfigWellKnownRoots
    implements TerraformEnum {
  none('NONE'),
  publicRoots('PUBLIC_ROOTS');

  const NetworkSecurityBackendAuthenticationConfigWellKnownRoots(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_network_security_backend_authentication_config`.
///
/// BackendAuthenticationConfig groups the TrustConfig together with other
/// settings that control how the load balancer authenticates, and expresses its
/// identity to the backend.
///
/// Network Security **backend authentication config** — how a load balancer
/// authenticates to backends (backend mTLS / trust roots).
///
/// Creating a config alone does not attach it to a BackendService or bill
/// Network Security data-plane SKUs. Prefer [wellKnownRoots]
/// `PUBLIC_ROOTS` when you do not need a Certificate Manager TrustConfig.
///
/// Enable `networksecurity.googleapis.com` via [GoogleProjectService]
/// before apply. Location defaults to `global`.
///
/// Example:
/// ```dart
/// GoogleNetworkSecurityBackendAuthenticationConfig(
///   localName: 'backend_auth',
///   name: TfArg.literal('terradart-backend-auth'),
///   location: TfArg.literal('global'),
///   description: TfArg.literal('TerraDart smoke backend authentication'),
///   wellKnownRoots: TfArg.literal(
///     NetworkSecurityBackendAuthenticationConfigWellKnownRoots.publicRoots,
///   ),
/// );
/// ```
final class GoogleNetworkSecurityBackendAuthenticationConfig extends Resource {
  static const String tfType =
      'google_network_security_backend_authentication_config';

  GoogleNetworkSecurityBackendAuthenticationConfig({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? location,
    TfArg<String>? description,
    TfArg<NetworkSecurityBackendAuthenticationConfigWellKnownRoots>?
    wellKnownRoots,
    TfArg<String>? trustConfig,
    TfArg<String>? clientCertificate,
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
           if (wellKnownRoots != null) 'well_known_roots': wellKnownRoots,
           if (trustConfig != null) 'trust_config': trustConfig,
           if (clientCertificate != null)
             'client_certificate': clientCertificate,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityBackendAuthenticationConfigSensitive;

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
