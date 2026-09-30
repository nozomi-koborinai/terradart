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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': ?location,
           'description': ?description,
           'well_known_roots': ?wellKnownRoots,
           'trust_config': ?trustConfig,
           'client_certificate': ?clientCertificate,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityBackendAuthenticationConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkSecurityBackendAuthenticationConfig>`.
  RefTo<GoogleNetworkSecurityBackendAuthenticationConfig> get ref =>
      RefTo.of(this);

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

  /// Reference to `client_certificate` attribute.
  TfRef<String> get clientCertificateRef =>
      TfRef.attribute<String>(this, 'client_certificate');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `trust_config` attribute.
  TfRef<String> get trustConfigRef =>
      TfRef.attribute<String>(this, 'trust_config');

  /// Reference to `well_known_roots` attribute.
  TfRef<String> get wellKnownRootsRef =>
      TfRef.attribute<String>(this, 'well_known_roots');
}
