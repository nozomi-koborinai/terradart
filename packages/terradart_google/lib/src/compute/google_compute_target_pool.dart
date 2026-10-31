// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_target_pool`.
const Set<String> _googleComputeTargetPoolSensitive = <String>{};

/// Compute Target Pool Session enum for `session_affinity`.
extension type const ComputeTargetPoolSessionAffinity._(TfArg<String> _)
    implements TfArg<String> {
  ComputeTargetPoolSessionAffinity.variable(String name)
    : this._(TfArg.variable(name));
  ComputeTargetPoolSessionAffinity.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeTargetPoolSessionAffinity.arg(TfArg<String> arg) : this._(arg);

  static const clientIp = ComputeTargetPoolSessionAffinity._(
    TfArgLiteral('CLIENT_IP'),
  );
  static const clientIpNoDestination = ComputeTargetPoolSessionAffinity._(
    TfArgLiteral('CLIENT_IP_NO_DESTINATION'),
  );
  static const clientIpPortProto = ComputeTargetPoolSessionAffinity._(
    TfArgLiteral('CLIENT_IP_PORT_PROTO'),
  );
  static const clientIpProto = ComputeTargetPoolSessionAffinity._(
    TfArgLiteral('CLIENT_IP_PROTO'),
  );
  static const generatedCookie = ComputeTargetPoolSessionAffinity._(
    TfArgLiteral('GENERATED_COOKIE'),
  );
  static const headerField = ComputeTargetPoolSessionAffinity._(
    TfArgLiteral('HEADER_FIELD'),
  );
  static const httpCookie = ComputeTargetPoolSessionAffinity._(
    TfArgLiteral('HTTP_COOKIE'),
  );
  static const none = ComputeTargetPoolSessionAffinity._(TfArgLiteral('NONE'));
  static const strongCookieAffinity = ComputeTargetPoolSessionAffinity._(
    TfArgLiteral('STRONG_COOKIE_AFFINITY'),
  );

  static const List<ComputeTargetPoolSessionAffinity> values = [
    clientIp,
    clientIpNoDestination,
    clientIpPortProto,
    clientIpProto,
    generatedCookie,
    headerField,
    httpCookie,
    none,
    strongCookieAffinity,
  ];
}

/// Factory wrapper for `google_compute_target_pool`.
///
/// Legacy Network Load Balancer target pool. Optional [healthChecks] accept
/// only a legacy [GoogleComputeHttpHealthCheck] (not the newer health-check
/// resources). Prefer backend services for new HTTP(S) load balancers.
final class GoogleComputeTargetPool extends Resource {
  static const String tfType = 'google_compute_target_pool';

  GoogleComputeTargetPool(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? description,
    TfArg<List<String>>? instances,
    TfArg<List<String>>? healthChecks,
    ComputeTargetPoolSessionAffinity? sessionAffinity,
    TfArg<String>? backupPool,
    TfArg<num>? failoverRatio,
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
           'region': ?region,
           'description': ?description,
           'instances': ?instances,
           'health_checks': ?healthChecks,
           'session_affinity': ?sessionAffinity,
           'backup_pool': ?backupPool,
           'failover_ratio': ?failoverRatio,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeTargetPoolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeTargetPool>`.
  RefTo<GoogleComputeTargetPool> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backup_pool` attribute.
  TfRef<String> get backupPool => TfRef.attribute<String>(this, 'backup_pool');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `failover_ratio` attribute.
  TfRef<num> get failoverRatio => TfRef.attribute<num>(this, 'failover_ratio');

  /// Reference to `health_checks` attribute.
  TfRef<List<String>> get healthChecks =>
      TfRef.attribute<List<String>>(this, 'health_checks');

  /// Reference to `instances` attribute.
  TfRef<List<String>> get instances =>
      TfRef.attribute<List<String>>(this, 'instances');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `session_affinity` attribute.
  TfRef<String> get sessionAffinity =>
      TfRef.attribute<String>(this, 'session_affinity');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
