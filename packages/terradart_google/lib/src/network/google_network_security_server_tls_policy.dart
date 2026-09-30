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

  final TfArg<NetworkSecurityServerTlsPolicyMtlsPolicyClientValidationMode>?
  clientValidationMode;

  final TfArg<String>? clientValidationTrustConfig;

  final List<NetworkSecurityServerTlsPolicyMtlsPolicyClientValidationCa>?
  clientValidationCa;

  Map<String, Object?> encode() => {
    'client_validation_mode': ?clientValidationMode?.toTfJson(),
    'client_validation_trust_config': ?clientValidationTrustConfig?.toTfJson(),
    if (clientValidationCa != null)
      'client_validation_ca': [for (final e in clientValidationCa!) e.encode()],
  };
}

/// `client_validation_mode` — derived from the provider schema description.
enum NetworkSecurityServerTlsPolicyMtlsPolicyClientValidationMode
    implements TerraformEnum {
  clientValidationModeUnspecified('CLIENT_VALIDATION_MODE_UNSPECIFIED'),
  allowInvalidOrMissingClientCert('ALLOW_INVALID_OR_MISSING_CLIENT_CERT'),
  rejectInvalid('REJECT_INVALID');

  const NetworkSecurityServerTlsPolicyMtlsPolicyClientValidationMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Exactly one of `grpc_endpoint`, `certificate_provider_instance` on the `mtls_policy.client_validation_ca` block of `google_network_security_server_tls_policy`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.grpcEndpoint(...)`.
sealed class NetworkSecurityServerTlsPolicyMtlsPolicyClientValidationCa {
  const NetworkSecurityServerTlsPolicyMtlsPolicyClientValidationCa();

  /// Sets `grpc_endpoint`.
  const factory NetworkSecurityServerTlsPolicyMtlsPolicyClientValidationCa.grpcEndpoint(
    NetworkSecurityServerTlsPolicyMtlsPolicyClientValidationCaGrpcEndpoint
    grpcEndpoint,
  ) = NetworkSecurityServerTlsPolicyMtlsPolicyClientValidationCaGrpcEndpointChoice;

  /// Sets `certificate_provider_instance`.
  const factory NetworkSecurityServerTlsPolicyMtlsPolicyClientValidationCa.certificateProviderInstance(
    NetworkSecurityServerTlsPolicyMtlsPolicyClientValidationCaCertificateProviderInstance
    certificateProviderInstance,
  ) = NetworkSecurityServerTlsPolicyMtlsPolicyClientValidationCaCertificateProviderInstanceChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [NetworkSecurityServerTlsPolicyMtlsPolicyClientValidationCa.grpcEndpoint] choice: sets `grpc_endpoint`.
final class NetworkSecurityServerTlsPolicyMtlsPolicyClientValidationCaGrpcEndpointChoice
    extends NetworkSecurityServerTlsPolicyMtlsPolicyClientValidationCa {
  const NetworkSecurityServerTlsPolicyMtlsPolicyClientValidationCaGrpcEndpointChoice(
    this.grpcEndpoint,
  );

  final NetworkSecurityServerTlsPolicyMtlsPolicyClientValidationCaGrpcEndpoint
  grpcEndpoint;

  @override
  String get blockKey => 'grpc_endpoint';

  @override
  Map<String, Object?> encode() => {'grpc_endpoint': grpcEndpoint.encode()};
}

/// The [NetworkSecurityServerTlsPolicyMtlsPolicyClientValidationCa.certificateProviderInstance] choice: sets `certificate_provider_instance`.
final class NetworkSecurityServerTlsPolicyMtlsPolicyClientValidationCaCertificateProviderInstanceChoice
    extends NetworkSecurityServerTlsPolicyMtlsPolicyClientValidationCa {
  const NetworkSecurityServerTlsPolicyMtlsPolicyClientValidationCaCertificateProviderInstanceChoice(
    this.certificateProviderInstance,
  );

  final NetworkSecurityServerTlsPolicyMtlsPolicyClientValidationCaCertificateProviderInstance
  certificateProviderInstance;

  @override
  String get blockKey => 'certificate_provider_instance';

  @override
  Map<String, Object?> encode() => {
    'certificate_provider_instance': certificateProviderInstance.encode(),
  };
}

/// Typed helper for the `mtls_policy.client_validation_ca.certificate_provider_instance` block of
/// `google_network_security_server_tls_policy` (derived from provider schema).
@immutable
final class NetworkSecurityServerTlsPolicyMtlsPolicyClientValidationCaCertificateProviderInstance {
  const NetworkSecurityServerTlsPolicyMtlsPolicyClientValidationCaCertificateProviderInstance({
    required this.pluginInstance,
  });

  final TfArg<String> pluginInstance;

  Map<String, Object?> encode() => {
    'plugin_instance': pluginInstance.toTfJson(),
  };
}

/// Typed helper for the `mtls_policy.client_validation_ca.grpc_endpoint` block of
/// `google_network_security_server_tls_policy` (derived from provider schema).
@immutable
final class NetworkSecurityServerTlsPolicyMtlsPolicyClientValidationCaGrpcEndpoint {
  const NetworkSecurityServerTlsPolicyMtlsPolicyClientValidationCaGrpcEndpoint({
    required this.targetUri,
  });

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
    NetworkSecurityServerTlsPolicyServerCertificateGrpcEndpoint grpcEndpoint,
  ) = NetworkSecurityServerTlsPolicyServerCertificateGrpcEndpointChoice;

  /// Sets `certificate_provider_instance`.
  const factory NetworkSecurityServerTlsPolicyServerCertificate.certificateProviderInstance(
    NetworkSecurityServerTlsPolicyServerCertificateCertificateProviderInstance
    certificateProviderInstance,
  ) = NetworkSecurityServerTlsPolicyServerCertificateProviderInstance;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [NetworkSecurityServerTlsPolicyServerCertificate.grpcEndpoint] choice: sets `grpc_endpoint`.
final class NetworkSecurityServerTlsPolicyServerCertificateGrpcEndpointChoice
    extends NetworkSecurityServerTlsPolicyServerCertificate {
  const NetworkSecurityServerTlsPolicyServerCertificateGrpcEndpointChoice(
    this.grpcEndpoint,
  );

  final NetworkSecurityServerTlsPolicyServerCertificateGrpcEndpoint
  grpcEndpoint;

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

  final NetworkSecurityServerTlsPolicyServerCertificateCertificateProviderInstance
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
@immutable
final class NetworkSecurityServerTlsPolicyServerCertificateCertificateProviderInstance {
  const NetworkSecurityServerTlsPolicyServerCertificateCertificateProviderInstance({
    required this.pluginInstance,
  });

  final TfArg<String> pluginInstance;

  Map<String, Object?> encode() => {
    'plugin_instance': pluginInstance.toTfJson(),
  };
}

/// Typed helper for the `server_certificate.grpc_endpoint` block of
/// `google_network_security_server_tls_policy` (derived from provider schema).
@immutable
final class NetworkSecurityServerTlsPolicyServerCertificateGrpcEndpoint {
  const NetworkSecurityServerTlsPolicyServerCertificateGrpcEndpoint({
    required this.targetUri,
  });

  final TfArg<String> targetUri;

  Map<String, Object?> encode() => {'target_uri': targetUri.toTfJson()};
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
