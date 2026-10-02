// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appmesh_virtual_gateway`.
const Set<String> _awsAppmeshVirtualGatewaySensitive = <String>{};

/// Typed helper for the `spec` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewaySpec {
  const AppmeshVirtualGatewaySpec({
    this.backendDefaults,
    required this.listener,
    this.logging,
  });

  final AppmeshVirtualGatewayBackendDefaults? backendDefaults;

  final List<AppmeshVirtualGatewayListener> listener;

  final AppmeshVirtualGatewayLogging? logging;

  @internal
  Map<String, Object?> encode() => {
    'backend_defaults': ?backendDefaults?.encode(),
    'listener': [for (final e in listener) e.encode()],
    'logging': ?logging?.encode(),
  };
}

/// Typed helper for the `spec.backend_defaults` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewayBackendDefaults {
  const AppmeshVirtualGatewayBackendDefaults({this.clientPolicy});

  final AppmeshVirtualGatewayClientPolicy? clientPolicy;

  @internal
  Map<String, Object?> encode() => {'client_policy': ?clientPolicy?.encode()};
}

/// Typed helper for the `spec.backend_defaults.client_policy` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewayClientPolicy {
  const AppmeshVirtualGatewayClientPolicy({this.tls});

  final AppmeshVirtualGatewayClientPolicyTls? tls;

  @internal
  Map<String, Object?> encode() => {'tls': ?tls?.encode()};
}

/// Typed helper for the `spec.backend_defaults.client_policy.tls` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewayClientPolicyTls {
  const AppmeshVirtualGatewayClientPolicyTls({
    this.enforce,
    this.ports,
    this.certificate,
    required this.validation,
  });

  final TfArg<bool>? enforce;

  final TfArg<List<num>>? ports;

  final AppmeshVirtualGatewayTlsCertificate? certificate;

  final AppmeshVirtualGatewayTlsValidation validation;

  @internal
  Map<String, Object?> encode() => {
    'enforce': ?enforce?.toTfJson(),
    'ports': ?ports?.toTfJson(),
    'certificate': ?certificate?.encode(),
    'validation': validation.encode(),
  };
}

/// Exactly one of `file`, `sds` on the `spec.backend_defaults.client_policy.tls.certificate` block of `aws_appmesh_virtual_gateway`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.file(...)`.
sealed class AppmeshVirtualGatewayTlsCertificate {
  const AppmeshVirtualGatewayTlsCertificate();

  /// Sets `file`.
  const factory AppmeshVirtualGatewayTlsCertificate.file(
    AppmeshVirtualGatewayCertificateFile file,
  ) = AppmeshVirtualGatewayTlsCertificateFile;

  /// Sets `sds`.
  const factory AppmeshVirtualGatewayTlsCertificate.sds(
    AppmeshVirtualGatewaySds sds,
  ) = AppmeshVirtualGatewayTlsCertificateSds;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [AppmeshVirtualGatewayTlsCertificate.file] choice: sets `file`.
final class AppmeshVirtualGatewayTlsCertificateFile
    extends AppmeshVirtualGatewayTlsCertificate {
  const AppmeshVirtualGatewayTlsCertificateFile(this.file);

  final AppmeshVirtualGatewayCertificateFile file;

  @internal
  @override
  String get blockKey => 'file';

  @internal
  @override
  Map<String, Object?> encode() => {'file': file.encode()};
}

/// The [AppmeshVirtualGatewayTlsCertificate.sds] choice: sets `sds`.
final class AppmeshVirtualGatewayTlsCertificateSds
    extends AppmeshVirtualGatewayTlsCertificate {
  const AppmeshVirtualGatewayTlsCertificateSds(this.sds);

  final AppmeshVirtualGatewaySds sds;

  @internal
  @override
  String get blockKey => 'sds';

  @internal
  @override
  Map<String, Object?> encode() => {'sds': sds.encode()};
}

/// Typed helper for the `spec.listener.tls.certificate.file` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshVirtualGatewayCertificateFile {
  const AppmeshVirtualGatewayCertificateFile({
    required this.certificateChain,
    required this.privateKey,
  });

  final TfArg<String> certificateChain;

  final TfArg<String> privateKey;

  @internal
  Map<String, Object?> encode() => {
    'certificate_chain': certificateChain.toTfJson(),
    'private_key': privateKey.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.tls.certificate.sds` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshVirtualGatewaySds {
  const AppmeshVirtualGatewaySds({required this.secretName});

  final TfArg<String> secretName;

  @internal
  Map<String, Object?> encode() => {'secret_name': secretName.toTfJson()};
}

/// Typed helper for the `spec.backend_defaults.client_policy.tls.validation` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewayTlsValidation {
  const AppmeshVirtualGatewayTlsValidation({
    this.subjectAlternativeNames,
    required this.trust,
  });

  final AppmeshVirtualGatewaySubjectAlternativeNames? subjectAlternativeNames;

  final AppmeshVirtualGatewayValidationTrust trust;

  @internal
  Map<String, Object?> encode() => {
    'subject_alternative_names': ?subjectAlternativeNames?.encode(),
    'trust': trust.encode(),
  };
}

/// Typed helper for the `spec.listener.tls.validation.subject_alternative_names` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshVirtualGatewaySubjectAlternativeNames {
  const AppmeshVirtualGatewaySubjectAlternativeNames({required this.match});

  final AppmeshVirtualGatewayMatch match;

  @internal
  Map<String, Object?> encode() => {'match': match.encode()};
}

/// Typed helper for the `spec.listener.tls.validation.subject_alternative_names.match` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshVirtualGatewayMatch {
  const AppmeshVirtualGatewayMatch({required this.exact});

  final TfArg<List<String>> exact;

  @internal
  Map<String, Object?> encode() => {'exact': exact.toTfJson()};
}

/// Exactly one of `acm`, `file`, `sds` on the `spec.backend_defaults.client_policy.tls.validation.trust` block of `aws_appmesh_virtual_gateway`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.acm(...)`.
sealed class AppmeshVirtualGatewayValidationTrust {
  const AppmeshVirtualGatewayValidationTrust();

  /// Sets `acm`.
  const factory AppmeshVirtualGatewayValidationTrust.acm(
    AppmeshVirtualGatewayTrustAcm acm,
  ) = AppmeshVirtualGatewayValidationTrustAcm;

  /// Sets `file`.
  const factory AppmeshVirtualGatewayValidationTrust.file(
    AppmeshVirtualGatewayTrustFile file,
  ) = AppmeshVirtualGatewayValidationTrustFile;

  /// Sets `sds`.
  const factory AppmeshVirtualGatewayValidationTrust.sds(
    AppmeshVirtualGatewaySds sds,
  ) = AppmeshVirtualGatewayValidationTrustSds;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [AppmeshVirtualGatewayValidationTrust.acm] choice: sets `acm`.
final class AppmeshVirtualGatewayValidationTrustAcm
    extends AppmeshVirtualGatewayValidationTrust {
  const AppmeshVirtualGatewayValidationTrustAcm(this.acm);

  final AppmeshVirtualGatewayTrustAcm acm;

  @internal
  @override
  String get blockKey => 'acm';

  @internal
  @override
  Map<String, Object?> encode() => {'acm': acm.encode()};
}

/// The [AppmeshVirtualGatewayValidationTrust.file] choice: sets `file`.
final class AppmeshVirtualGatewayValidationTrustFile
    extends AppmeshVirtualGatewayValidationTrust {
  const AppmeshVirtualGatewayValidationTrustFile(this.file);

  final AppmeshVirtualGatewayTrustFile file;

  @internal
  @override
  String get blockKey => 'file';

  @internal
  @override
  Map<String, Object?> encode() => {'file': file.encode()};
}

/// The [AppmeshVirtualGatewayValidationTrust.sds] choice: sets `sds`.
final class AppmeshVirtualGatewayValidationTrustSds
    extends AppmeshVirtualGatewayValidationTrust {
  const AppmeshVirtualGatewayValidationTrustSds(this.sds);

  final AppmeshVirtualGatewaySds sds;

  @internal
  @override
  String get blockKey => 'sds';

  @internal
  @override
  Map<String, Object?> encode() => {'sds': sds.encode()};
}

/// Typed helper for the `spec.backend_defaults.client_policy.tls.validation.trust.acm` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewayTrustAcm {
  const AppmeshVirtualGatewayTrustAcm({required this.certificateAuthorityArns});

  final TfArg<List<String>> certificateAuthorityArns;

  @internal
  Map<String, Object?> encode() => {
    'certificate_authority_arns': certificateAuthorityArns.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.tls.validation.trust.file` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppmeshVirtualGatewayTrustFile {
  const AppmeshVirtualGatewayTrustFile({required this.certificateChain});

  final TfArg<String> certificateChain;

  @internal
  Map<String, Object?> encode() => {
    'certificate_chain': certificateChain.toTfJson(),
  };
}

/// Typed helper for the `spec.listener` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewayListener {
  const AppmeshVirtualGatewayListener({
    this.connectionPool,
    this.healthCheck,
    required this.portMapping,
    this.tls,
  });

  final AppmeshVirtualGatewayConnectionPool? connectionPool;

  final AppmeshVirtualGatewayHealthCheck? healthCheck;

  final AppmeshVirtualGatewayPortMapping portMapping;

  final AppmeshVirtualGatewayTls? tls;

  @internal
  Map<String, Object?> encode() => {
    'connection_pool': ?connectionPool?.encode(),
    'health_check': ?healthCheck?.encode(),
    'port_mapping': portMapping.encode(),
    'tls': ?tls?.encode(),
  };
}

/// Typed helper for the `spec.listener.connection_pool` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewayConnectionPool {
  const AppmeshVirtualGatewayConnectionPool({this.grpc, this.http, this.http2});

  final AppmeshVirtualGatewayGrpc? grpc;

  final AppmeshVirtualGatewayHttp? http;

  final AppmeshVirtualGatewayHttp2? http2;

  @internal
  Map<String, Object?> encode() => {
    'grpc': ?grpc?.encode(),
    'http': ?http?.encode(),
    'http2': ?http2?.encode(),
  };
}

/// Typed helper for the `spec.listener.connection_pool.grpc` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewayGrpc {
  const AppmeshVirtualGatewayGrpc({required this.maxRequests});

  final TfArg<num> maxRequests;

  @internal
  Map<String, Object?> encode() => {'max_requests': maxRequests.toTfJson()};
}

/// Typed helper for the `spec.listener.connection_pool.http` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewayHttp {
  const AppmeshVirtualGatewayHttp({
    required this.maxConnections,
    this.maxPendingRequests,
  });

  final TfArg<num> maxConnections;

  final TfArg<num>? maxPendingRequests;

  @internal
  Map<String, Object?> encode() => {
    'max_connections': maxConnections.toTfJson(),
    'max_pending_requests': ?maxPendingRequests?.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.connection_pool.http2` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewayHttp2 {
  const AppmeshVirtualGatewayHttp2({required this.maxRequests});

  final TfArg<num> maxRequests;

  @internal
  Map<String, Object?> encode() => {'max_requests': maxRequests.toTfJson()};
}

/// Typed helper for the `spec.listener.health_check` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewayHealthCheck {
  const AppmeshVirtualGatewayHealthCheck({
    required this.healthyThreshold,
    required this.intervalMillis,
    this.path,
    this.port,
    required this.protocol,
    required this.timeoutMillis,
    required this.unhealthyThreshold,
  });

  final TfArg<num> healthyThreshold;

  final TfArg<num> intervalMillis;

  final TfArg<String>? path;

  final TfArg<num>? port;

  final AppmeshVirtualGatewayProtocol protocol;

  final TfArg<num> timeoutMillis;

  final TfArg<num> unhealthyThreshold;

  @internal
  Map<String, Object?> encode() => {
    'healthy_threshold': healthyThreshold.toTfJson(),
    'interval_millis': intervalMillis.toTfJson(),
    'path': ?path?.toTfJson(),
    'port': ?port?.toTfJson(),
    'protocol': protocol.toTfJson(),
    'timeout_millis': timeoutMillis.toTfJson(),
    'unhealthy_threshold': unhealthyThreshold.toTfJson(),
  };
}

/// `protocol` — derived from the provider schema description.
extension type const AppmeshVirtualGatewayProtocol._(TfArg<String> _)
    implements TfArg<String> {
  AppmeshVirtualGatewayProtocol.variable(String name)
    : this._(TfArg.variable(name));
  AppmeshVirtualGatewayProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const AppmeshVirtualGatewayProtocol.arg(TfArg<String> arg) : this._(arg);

  static const http = AppmeshVirtualGatewayProtocol._(TfArgLiteral('http'));
  static const http2 = AppmeshVirtualGatewayProtocol._(TfArgLiteral('http2'));
  static const grpc = AppmeshVirtualGatewayProtocol._(TfArgLiteral('grpc'));

  static const List<AppmeshVirtualGatewayProtocol> values = [http, http2, grpc];
}

/// Typed helper for the `spec.listener.port_mapping` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewayPortMapping {
  const AppmeshVirtualGatewayPortMapping({
    required this.port,
    required this.protocol,
  });

  final TfArg<num> port;

  final AppmeshVirtualGatewayProtocol protocol;

  @internal
  Map<String, Object?> encode() => {
    'port': port.toTfJson(),
    'protocol': protocol.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.tls` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewayTls {
  const AppmeshVirtualGatewayTls({
    required this.mode,
    required this.certificate,
    this.validation,
  });

  final AppmeshVirtualGatewayMode mode;

  final AppmeshVirtualGatewayCertificate certificate;

  final AppmeshVirtualGatewayValidation? validation;

  @internal
  Map<String, Object?> encode() => {
    'mode': mode.toTfJson(),
    'certificate': certificate.encode(),
    'validation': ?validation?.encode(),
  };
}

/// `mode` — derived from the provider schema description.
extension type const AppmeshVirtualGatewayMode._(TfArg<String> _)
    implements TfArg<String> {
  AppmeshVirtualGatewayMode.variable(String name)
    : this._(TfArg.variable(name));
  AppmeshVirtualGatewayMode.expression(String template)
    : this._(TfArg.expression(template));
  const AppmeshVirtualGatewayMode.arg(TfArg<String> arg) : this._(arg);

  static const strict = AppmeshVirtualGatewayMode._(TfArgLiteral('STRICT'));
  static const permissive = AppmeshVirtualGatewayMode._(
    TfArgLiteral('PERMISSIVE'),
  );
  static const disabled = AppmeshVirtualGatewayMode._(TfArgLiteral('DISABLED'));

  static const List<AppmeshVirtualGatewayMode> values = [
    strict,
    permissive,
    disabled,
  ];
}

/// Typed helper for the `spec.listener.tls.certificate` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewayCertificate {
  const AppmeshVirtualGatewayCertificate({this.acm, this.file, this.sds});

  final AppmeshVirtualGatewayAcm? acm;

  final AppmeshVirtualGatewayCertificateFile? file;

  final AppmeshVirtualGatewaySds? sds;

  @internal
  Map<String, Object?> encode() => {
    'acm': ?acm?.encode(),
    'file': ?file?.encode(),
    'sds': ?sds?.encode(),
  };
}

/// Typed helper for the `spec.listener.tls.certificate.acm` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewayAcm {
  const AppmeshVirtualGatewayAcm({required this.certificateArn});

  final TfArg<String> certificateArn;

  @internal
  Map<String, Object?> encode() => {
    'certificate_arn': certificateArn.toTfJson(),
  };
}

/// Typed helper for the `spec.listener.tls.validation` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewayValidation {
  const AppmeshVirtualGatewayValidation({
    this.subjectAlternativeNames,
    required this.trust,
  });

  final AppmeshVirtualGatewaySubjectAlternativeNames? subjectAlternativeNames;

  final AppmeshVirtualGatewayTrust trust;

  @internal
  Map<String, Object?> encode() => {
    'subject_alternative_names': ?subjectAlternativeNames?.encode(),
    'trust': trust.encode(),
  };
}

/// Typed helper for the `spec.listener.tls.validation.trust` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewayTrust {
  const AppmeshVirtualGatewayTrust({this.file, this.sds});

  final AppmeshVirtualGatewayTrustFile? file;

  final AppmeshVirtualGatewaySds? sds;

  @internal
  Map<String, Object?> encode() => {
    'file': ?file?.encode(),
    'sds': ?sds?.encode(),
  };
}

/// Typed helper for the `spec.logging` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewayLogging {
  const AppmeshVirtualGatewayLogging({this.accessLog});

  final AppmeshVirtualGatewayAccessLog? accessLog;

  @internal
  Map<String, Object?> encode() => {'access_log': ?accessLog?.encode()};
}

/// Typed helper for the `spec.logging.access_log` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewayAccessLog {
  const AppmeshVirtualGatewayAccessLog({this.file});

  final AppmeshVirtualGatewayFile? file;

  @internal
  Map<String, Object?> encode() => {'file': ?file?.encode()};
}

/// Typed helper for the `spec.logging.access_log.file` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewayFile {
  const AppmeshVirtualGatewayFile({required this.path, this.format});

  final TfArg<String> path;

  final AppmeshVirtualGatewayFormat? format;

  @internal
  Map<String, Object?> encode() => {
    'path': path.toTfJson(),
    'format': ?format?.encode(),
  };
}

/// Typed helper for the `spec.logging.access_log.file.format` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewayFormat {
  const AppmeshVirtualGatewayFormat({this.text, this.json});

  final TfArg<String>? text;

  final List<AppmeshVirtualGatewayJson>? json;

  @internal
  Map<String, Object?> encode() => {
    'text': ?text?.toTfJson(),
    if (json != null) 'json': [for (final e in json!) e.encode()],
  };
}

/// Typed helper for the `spec.logging.access_log.file.format.json` block of
/// `aws_appmesh_virtual_gateway` (derived from provider schema).
@immutable
final class AppmeshVirtualGatewayJson {
  const AppmeshVirtualGatewayJson({required this.key, required this.value});

  final TfArg<String> key;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_appmesh_virtual_gateway`.
final class AwsAppmeshVirtualGateway extends Resource {
  static const String tfType = 'aws_appmesh_virtual_gateway';

  AwsAppmeshVirtualGateway(
    super.localName, {
    required TfArg<String> meshName,
    TfArg<String>? meshOwner,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required AppmeshVirtualGatewaySpec spec,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'mesh_name': meshName,
           'mesh_owner': ?meshOwner,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           'spec': TfArg.literal(spec.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppmeshVirtualGatewaySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppmeshVirtualGateway>`.
  RefTo<AwsAppmeshVirtualGateway> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `last_updated_date` attribute.
  TfRef<String> get lastUpdatedDate =>
      TfRef.attribute<String>(this, 'last_updated_date');

  /// Reference to `resource_owner` attribute.
  TfRef<String> get resourceOwner =>
      TfRef.attribute<String>(this, 'resource_owner');

  /// Reference to `mesh_name` attribute.
  TfRef<String> get meshName => TfRef.attribute<String>(this, 'mesh_name');

  /// Reference to `mesh_owner` attribute.
  TfRef<String> get meshOwner => TfRef.attribute<String>(this, 'mesh_owner');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
