// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_services_authz_extension`.
const Set<String> _googleNetworkServicesAuthzExtensionSensitive = <String>{};

/// Network Services Authz Extension Load Balancing enum for `load_balancing_scheme`.
extension type const NetworkServicesAuthzExtensionLoadBalancingScheme._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkServicesAuthzExtensionLoadBalancingScheme.variable(String name)
    : this._(TfArg.variable(name));
  NetworkServicesAuthzExtensionLoadBalancingScheme.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkServicesAuthzExtensionLoadBalancingScheme.arg(TfArg<String> arg)
    : this._(arg);

  static const internalManaged =
      NetworkServicesAuthzExtensionLoadBalancingScheme._(
        TfArgLiteral('INTERNAL_MANAGED'),
      );
  static const externalManaged =
      NetworkServicesAuthzExtensionLoadBalancingScheme._(
        TfArgLiteral('EXTERNAL_MANAGED'),
      );

  static const List<NetworkServicesAuthzExtensionLoadBalancingScheme> values = [
    internalManaged,
    externalManaged,
  ];
}

/// Network Services Authz Extension Wire enum for `wire_format`.
extension type const NetworkServicesAuthzExtensionWireFormat._(TfArg<String> _)
    implements TfArg<String> {
  NetworkServicesAuthzExtensionWireFormat.variable(String name)
    : this._(TfArg.variable(name));
  NetworkServicesAuthzExtensionWireFormat.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkServicesAuthzExtensionWireFormat.arg(TfArg<String> arg)
    : this._(arg);

  static const wireFormatUnspecified =
      NetworkServicesAuthzExtensionWireFormat._(
        TfArgLiteral('WIRE_FORMAT_UNSPECIFIED'),
      );
  static const extProcGrpc = NetworkServicesAuthzExtensionWireFormat._(
    TfArgLiteral('EXT_PROC_GRPC'),
  );
  static const extAuthzGrpc = NetworkServicesAuthzExtensionWireFormat._(
    TfArgLiteral('EXT_AUTHZ_GRPC'),
  );

  static const List<NetworkServicesAuthzExtensionWireFormat> values = [
    wireFormatUnspecified,
    extProcGrpc,
    extAuthzGrpc,
  ];
}

/// Factory wrapper for `google_network_services_authz_extension`.
///
/// AuthzExtension is a resource that allows traffic forwarding to a callout
/// backend service to make an authorization decision.
///
/// Service Extensions **AuthzExtension** — callout that makes an
/// authorization decision from the load-balancing data path.
///
/// `service` is a Compute BackendService URI, `iap.googleapis.com`
/// (`REQUEST_AUTHZ`), or `modelarmor.<region>.rep.googleapis.com`
/// (`CONTENT_AUTHZ`). Attaching a BackendService (or an Application
/// LB forwarding rule) is out of scope for apply-smoke: Cloud LB
/// Forwarding Rule Minimum (Iowa `8295-248B-132F`) is **$0.025/h**.
///
/// **Cost:** gcp-cost: Networking `E505-1604-58F8` Service Extensions
/// Load Balancer Callouts `3C5D-59B9-2035` **$0.10/count** (per million
/// invocations). billing-behavior: the extension object is
/// invocation-metered — no existence/hourly charge until attached LB
/// traffic invokes it. Enable `networkservices.googleapis.com` before
/// apply.
final class GoogleNetworkServicesAuthzExtension extends Resource {
  static const String tfType = 'google_network_services_authz_extension';

  GoogleNetworkServicesAuthzExtension(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> service,
    required TfArg<String> timeout,
    NetworkServicesAuthzExtensionLoadBalancingScheme? loadBalancingScheme,
    TfArg<String>? authority,
    TfArg<bool>? failOpen,
    TfArg<List<String>>? forwardHeaders,
    TfArg<Map<String, String>>? metadata,
    NetworkServicesAuthzExtensionWireFormat? wireFormat,
    TfArg<String>? description,
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
           'location': location,
           'service': service,
           'timeout': timeout,
           'load_balancing_scheme': ?loadBalancingScheme,
           'authority': ?authority,
           'fail_open': ?failOpen,
           'forward_headers': ?forwardHeaders,
           'metadata': ?metadata,
           'wire_format': ?wireFormat,
           'description': ?description,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkServicesAuthzExtensionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkServicesAuthzExtension>`.
  RefTo<GoogleNetworkServicesAuthzExtension> get ref => RefTo.of(this);

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

  /// Reference to `authority` attribute.
  TfRef<String> get authority => TfRef.attribute<String>(this, 'authority');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `fail_open` attribute.
  TfRef<bool> get failOpen => TfRef.attribute<bool>(this, 'fail_open');

  /// Reference to `forward_attributes` attribute.
  TfRef<List<String>> get forwardAttributes =>
      TfRef.attribute<List<String>>(this, 'forward_attributes');

  /// Reference to `forward_headers` attribute.
  TfRef<List<String>> get forwardHeaders =>
      TfRef.attribute<List<String>>(this, 'forward_headers');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `load_balancing_scheme` attribute.
  TfRef<String> get loadBalancingScheme =>
      TfRef.attribute<String>(this, 'load_balancing_scheme');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `service` attribute.
  TfRef<String> get service => TfRef.attribute<String>(this, 'service');

  /// Reference to `timeout` attribute.
  TfRef<String> get timeout => TfRef.attribute<String>(this, 'timeout');

  /// Reference to `wire_format` attribute.
  TfRef<String> get wireFormat => TfRef.attribute<String>(this, 'wire_format');
}
