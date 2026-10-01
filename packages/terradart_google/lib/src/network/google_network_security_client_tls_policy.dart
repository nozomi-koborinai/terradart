// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_client_tls_policy`.
const Set<String> _googleNetworkSecurityClientTlsPolicySensitive = <String>{};

/// Exactly one of `grpc_endpoint`, `certificate_provider_instance` on the `client_certificate` block of `google_network_security_client_tls_policy`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.grpcEndpoint(...)`.
sealed class NetworkSecurityClientTlsPolicyClientCertificate {
  const NetworkSecurityClientTlsPolicyClientCertificate();

  /// Sets `grpc_endpoint`.
  const factory NetworkSecurityClientTlsPolicyClientCertificate.grpcEndpoint(
    NetworkSecurityClientTlsPolicyGrpcEndpoint grpcEndpoint,
  ) = NetworkSecurityClientTlsPolicyClientCertificateGrpcEndpoint;

  /// Sets `certificate_provider_instance`.
  const factory NetworkSecurityClientTlsPolicyClientCertificate.certificateProviderInstance(
    NetworkSecurityClientTlsPolicyCertificateProviderInstance
    certificateProviderInstance,
  ) = NetworkSecurityClientTlsPolicyClientCertificateProviderInstance;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [NetworkSecurityClientTlsPolicyClientCertificate.grpcEndpoint] choice: sets `grpc_endpoint`.
final class NetworkSecurityClientTlsPolicyClientCertificateGrpcEndpoint
    extends NetworkSecurityClientTlsPolicyClientCertificate {
  const NetworkSecurityClientTlsPolicyClientCertificateGrpcEndpoint(
    this.grpcEndpoint,
  );

  final NetworkSecurityClientTlsPolicyGrpcEndpoint grpcEndpoint;

  @override
  String get blockKey => 'grpc_endpoint';

  @override
  Map<String, Object?> encode() => {'grpc_endpoint': grpcEndpoint.encode()};
}

/// The [NetworkSecurityClientTlsPolicyClientCertificate.certificateProviderInstance] choice: sets `certificate_provider_instance`.
final class NetworkSecurityClientTlsPolicyClientCertificateProviderInstance
    extends NetworkSecurityClientTlsPolicyClientCertificate {
  const NetworkSecurityClientTlsPolicyClientCertificateProviderInstance(
    this.certificateProviderInstance,
  );

  final NetworkSecurityClientTlsPolicyCertificateProviderInstance
  certificateProviderInstance;

  @override
  String get blockKey => 'certificate_provider_instance';

  @override
  Map<String, Object?> encode() => {
    'certificate_provider_instance': certificateProviderInstance.encode(),
  };
}

/// Typed helper for the `client_certificate.certificate_provider_instance` block of
/// `google_network_security_client_tls_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class NetworkSecurityClientTlsPolicyCertificateProviderInstance {
  const NetworkSecurityClientTlsPolicyCertificateProviderInstance({
    required this.pluginInstance,
  });

  final TfArg<String> pluginInstance;

  Map<String, Object?> encode() => {
    'plugin_instance': pluginInstance.toTfJson(),
  };
}

/// Typed helper for the `client_certificate.grpc_endpoint` block of
/// `google_network_security_client_tls_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class NetworkSecurityClientTlsPolicyGrpcEndpoint {
  const NetworkSecurityClientTlsPolicyGrpcEndpoint({required this.targetUri});

  final TfArg<String> targetUri;

  Map<String, Object?> encode() => {'target_uri': targetUri.toTfJson()};
}

/// Exactly one of `grpc_endpoint`, `certificate_provider_instance` on the `server_validation_ca` block of `google_network_security_client_tls_policy`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.grpcEndpoint(...)`.
sealed class NetworkSecurityClientTlsPolicyServerValidationCa {
  const NetworkSecurityClientTlsPolicyServerValidationCa();

  /// Sets `grpc_endpoint`.
  const factory NetworkSecurityClientTlsPolicyServerValidationCa.grpcEndpoint(
    NetworkSecurityClientTlsPolicyGrpcEndpoint grpcEndpoint,
  ) = NetworkSecurityClientTlsPolicyServerValidationCaGrpcEndpoint;

  /// Sets `certificate_provider_instance`.
  const factory NetworkSecurityClientTlsPolicyServerValidationCa.certificateProviderInstance(
    NetworkSecurityClientTlsPolicyCertificateProviderInstance
    certificateProviderInstance,
  ) = NetworkSecurityClientTlsPolicyServerValidationCaCertificateProviderInstance;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [NetworkSecurityClientTlsPolicyServerValidationCa.grpcEndpoint] choice: sets `grpc_endpoint`.
final class NetworkSecurityClientTlsPolicyServerValidationCaGrpcEndpoint
    extends NetworkSecurityClientTlsPolicyServerValidationCa {
  const NetworkSecurityClientTlsPolicyServerValidationCaGrpcEndpoint(
    this.grpcEndpoint,
  );

  final NetworkSecurityClientTlsPolicyGrpcEndpoint grpcEndpoint;

  @override
  String get blockKey => 'grpc_endpoint';

  @override
  Map<String, Object?> encode() => {'grpc_endpoint': grpcEndpoint.encode()};
}

/// The [NetworkSecurityClientTlsPolicyServerValidationCa.certificateProviderInstance] choice: sets `certificate_provider_instance`.
final class NetworkSecurityClientTlsPolicyServerValidationCaCertificateProviderInstance
    extends NetworkSecurityClientTlsPolicyServerValidationCa {
  const NetworkSecurityClientTlsPolicyServerValidationCaCertificateProviderInstance(
    this.certificateProviderInstance,
  );

  final NetworkSecurityClientTlsPolicyCertificateProviderInstance
  certificateProviderInstance;

  @override
  String get blockKey => 'certificate_provider_instance';

  @override
  Map<String, Object?> encode() => {
    'certificate_provider_instance': certificateProviderInstance.encode(),
  };
}

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
    NetworkSecurityClientTlsPolicyClientCertificate? clientCertificate,
    List<NetworkSecurityClientTlsPolicyServerValidationCa>? serverValidationCa,
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
           'sni': ?sni,
           if (clientCertificate != null)
             'client_certificate': TfArg.literal(clientCertificate.encode()),
           if (serverValidationCa != null)
             'server_validation_ca': TfArg.literal([
               for (final e in serverValidationCa) e.encode(),
             ]),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityClientTlsPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkSecurityClientTlsPolicy>`.
  RefTo<GoogleNetworkSecurityClientTlsPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `sni` attribute.
  TfRef<String> get sni => TfRef.attribute<String>(this, 'sni');
}
