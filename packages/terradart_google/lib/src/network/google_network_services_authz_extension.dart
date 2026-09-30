// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_services_authz_extension`.
const Set<String> _googleNetworkServicesAuthzExtensionSensitive = <String>{};

/// Network Services Authz Extension Load Balancing enum for `load_balancing_scheme`.
enum NetworkServicesAuthzExtensionLoadBalancingScheme implements TerraformEnum {
  internalManaged('INTERNAL_MANAGED'),
  externalManaged('EXTERNAL_MANAGED');

  const NetworkServicesAuthzExtensionLoadBalancingScheme(this.terraformValue);
  @override
  final String terraformValue;
}

/// Network Services Authz Extension Wire enum for `wire_format`.
enum NetworkServicesAuthzExtensionWireFormat implements TerraformEnum {
  wireFormatUnspecified('WIRE_FORMAT_UNSPECIFIED'),
  extProcGrpc('EXT_PROC_GRPC'),
  extAuthzGrpc('EXT_AUTHZ_GRPC');

  const NetworkServicesAuthzExtensionWireFormat(this.terraformValue);
  @override
  final String terraformValue;
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

  GoogleNetworkServicesAuthzExtension({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> service,
    required TfArg<String> timeout,
    TfArg<NetworkServicesAuthzExtensionLoadBalancingScheme>?
    loadBalancingScheme,
    TfArg<String>? authority,
    TfArg<bool>? failOpen,
    TfArg<List<String>>? forwardHeaders,
    TfArg<Map<String, String>>? metadata,
    TfArg<NetworkServicesAuthzExtensionWireFormat>? wireFormat,
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
  TfRef<String> get authorityRef => TfRef.attribute<String>(this, 'authority');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `fail_open` attribute.
  TfRef<bool> get failOpenRef => TfRef.attribute<bool>(this, 'fail_open');

  /// Reference to `forward_attributes` attribute.
  TfRef<List<String>> get forwardAttributesRef =>
      TfRef.attribute<List<String>>(this, 'forward_attributes');

  /// Reference to `forward_headers` attribute.
  TfRef<List<String>> get forwardHeadersRef =>
      TfRef.attribute<List<String>>(this, 'forward_headers');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `load_balancing_scheme` attribute.
  TfRef<String> get loadBalancingSchemeRef =>
      TfRef.attribute<String>(this, 'load_balancing_scheme');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadataRef =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `service` attribute.
  TfRef<String> get serviceRef => TfRef.attribute<String>(this, 'service');

  /// Reference to `timeout` attribute.
  TfRef<String> get timeoutRef => TfRef.attribute<String>(this, 'timeout');

  /// Reference to `wire_format` attribute.
  TfRef<String> get wireFormatRef =>
      TfRef.attribute<String>(this, 'wire_format');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
