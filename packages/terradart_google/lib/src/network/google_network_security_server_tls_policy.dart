// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_server_tls_policy`.
const Set<String> _googleNetworkSecurityServerTlsPolicySensitive = <String>{};

/// Typed helper for the `mtls_policy` block of
/// `google_network_security_server_tls_policy` (derived from provider schema).
@immutable
final class NetworkSecurityServerTlsPolicyMtlsPolicy {
  const NetworkSecurityServerTlsPolicyMtlsPolicy({
    this.clientValidationMode,
    this.clientValidationTrustConfig,
    this.clientValidationCa,
  });

  final TfArg<NetworkSecurityServerTlsPolicyClientValidationMode>?
  clientValidationMode;

  final TfArg<String>? clientValidationTrustConfig;

  final List<NetworkSecurityServerTlsPolicyClientValidationCa>?
  clientValidationCa;

  Map<String, Object?> encode() => {
    'client_validation_mode': ?clientValidationMode?.toTfJson(),
    'client_validation_trust_config': ?clientValidationTrustConfig?.toTfJson(),
    if (clientValidationCa != null)
      'client_validation_ca': [for (final e in clientValidationCa!) e.encode()],
  };
}

/// `client_validation_mode` — derived from the provider schema description.
enum NetworkSecurityServerTlsPolicyClientValidationMode
    implements TerraformEnum {
  clientValidationModeUnspecified('CLIENT_VALIDATION_MODE_UNSPECIFIED'),
  allowInvalidOrMissingClientCert('ALLOW_INVALID_OR_MISSING_CLIENT_CERT'),
  rejectInvalid('REJECT_INVALID');

  const NetworkSecurityServerTlsPolicyClientValidationMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `grpc_endpoint`, `certificate_provider_instance` on the `mtls_policy.client_validation_ca` block of `google_network_security_server_tls_policy`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.grpcEndpoint(...)`.
sealed class NetworkSecurityServerTlsPolicyClientValidationCa {
  const NetworkSecurityServerTlsPolicyClientValidationCa();

  /// Sets `grpc_endpoint`.
  const factory NetworkSecurityServerTlsPolicyClientValidationCa.grpcEndpoint(
    NetworkSecurityServerTlsPolicyGrpcEndpoint grpcEndpoint,
  ) = NetworkSecurityServerTlsPolicyClientValidationCaGrpcEndpoint;

  /// Sets `certificate_provider_instance`.
  const factory NetworkSecurityServerTlsPolicyClientValidationCa.certificateProviderInstance(
    NetworkSecurityServerTlsPolicyCertificateProviderInstance
    certificateProviderInstance,
  ) = NetworkSecurityServerTlsPolicyClientValidationCaCertificateProviderInstance;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [NetworkSecurityServerTlsPolicyClientValidationCa.grpcEndpoint] choice: sets `grpc_endpoint`.
final class NetworkSecurityServerTlsPolicyClientValidationCaGrpcEndpoint
    extends NetworkSecurityServerTlsPolicyClientValidationCa {
  const NetworkSecurityServerTlsPolicyClientValidationCaGrpcEndpoint(
    this.grpcEndpoint,
  );

  final NetworkSecurityServerTlsPolicyGrpcEndpoint grpcEndpoint;

  @override
  String get blockKey => 'grpc_endpoint';

  @override
  Map<String, Object?> encode() => {'grpc_endpoint': grpcEndpoint.encode()};
}

/// The [NetworkSecurityServerTlsPolicyClientValidationCa.certificateProviderInstance] choice: sets `certificate_provider_instance`.
final class NetworkSecurityServerTlsPolicyClientValidationCaCertificateProviderInstance
    extends NetworkSecurityServerTlsPolicyClientValidationCa {
  const NetworkSecurityServerTlsPolicyClientValidationCaCertificateProviderInstance(
    this.certificateProviderInstance,
  );

  final NetworkSecurityServerTlsPolicyCertificateProviderInstance
  certificateProviderInstance;

  @override
  String get blockKey => 'certificate_provider_instance';

  @override
  Map<String, Object?> encode() => {
    'certificate_provider_instance': certificateProviderInstance.encode(),
  };
}

/// Typed helper for the `server_certificate.certificate_provider_instance` block of
/// `google_network_security_server_tls_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class NetworkSecurityServerTlsPolicyCertificateProviderInstance {
  const NetworkSecurityServerTlsPolicyCertificateProviderInstance({
    required this.pluginInstance,
  });

  final TfArg<String> pluginInstance;

  Map<String, Object?> encode() => {
    'plugin_instance': pluginInstance.toTfJson(),
  };
}

/// Typed helper for the `server_certificate.grpc_endpoint` block of
/// `google_network_security_server_tls_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class NetworkSecurityServerTlsPolicyGrpcEndpoint {
  const NetworkSecurityServerTlsPolicyGrpcEndpoint({required this.targetUri});

  final TfArg<String> targetUri;

  Map<String, Object?> encode() => {'target_uri': targetUri.toTfJson()};
}

/// Exactly one of `grpc_endpoint`, `certificate_provider_instance` on the `server_certificate` block of `google_network_security_server_tls_policy`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.grpcEndpoint(...)`.
sealed class NetworkSecurityServerTlsPolicyServerCertificate {
  const NetworkSecurityServerTlsPolicyServerCertificate();

  /// Sets `grpc_endpoint`.
  const factory NetworkSecurityServerTlsPolicyServerCertificate.grpcEndpoint(
    NetworkSecurityServerTlsPolicyGrpcEndpoint grpcEndpoint,
  ) = NetworkSecurityServerTlsPolicyServerCertificateGrpcEndpoint;

  /// Sets `certificate_provider_instance`.
  const factory NetworkSecurityServerTlsPolicyServerCertificate.certificateProviderInstance(
    NetworkSecurityServerTlsPolicyCertificateProviderInstance
    certificateProviderInstance,
  ) = NetworkSecurityServerTlsPolicyServerCertificateProviderInstance;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [NetworkSecurityServerTlsPolicyServerCertificate.grpcEndpoint] choice: sets `grpc_endpoint`.
final class NetworkSecurityServerTlsPolicyServerCertificateGrpcEndpoint
    extends NetworkSecurityServerTlsPolicyServerCertificate {
  const NetworkSecurityServerTlsPolicyServerCertificateGrpcEndpoint(
    this.grpcEndpoint,
  );

  final NetworkSecurityServerTlsPolicyGrpcEndpoint grpcEndpoint;

  @override
  String get blockKey => 'grpc_endpoint';

  @override
  Map<String, Object?> encode() => {'grpc_endpoint': grpcEndpoint.encode()};
}

/// The [NetworkSecurityServerTlsPolicyServerCertificate.certificateProviderInstance] choice: sets `certificate_provider_instance`.
final class NetworkSecurityServerTlsPolicyServerCertificateProviderInstance
    extends NetworkSecurityServerTlsPolicyServerCertificate {
  const NetworkSecurityServerTlsPolicyServerCertificateProviderInstance(
    this.certificateProviderInstance,
  );

  final NetworkSecurityServerTlsPolicyCertificateProviderInstance
  certificateProviderInstance;

  @override
  String get blockKey => 'certificate_provider_instance';

  @override
  Map<String, Object?> encode() => {
    'certificate_provider_instance': certificateProviderInstance.encode(),
  };
}

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
    NetworkSecurityServerTlsPolicyServerCertificate? serverCertificate,
    NetworkSecurityServerTlsPolicyMtlsPolicy? mtlsPolicy,
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
           'allow_open': ?allowOpen,
           if (serverCertificate != null)
             'server_certificate': TfArg.literal(serverCertificate.encode()),
           if (mtlsPolicy != null)
             'mtls_policy': TfArg.literal(mtlsPolicy.encode()),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityServerTlsPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkSecurityServerTlsPolicy>`.
  RefTo<GoogleNetworkSecurityServerTlsPolicy> get ref => RefTo.of(this);

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

  /// Reference to `allow_open` attribute.
  TfRef<bool> get allowOpen => TfRef.attribute<bool>(this, 'allow_open');

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
}
