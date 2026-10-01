// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_http_health_check`.
const Set<String> _googleComputeHttpHealthCheckSensitive = <String>{};

/// Factory wrapper for `google_compute_http_health_check`.
///
/// An HttpHealthCheck resource. This resource defines a template for how
/// individual VMs should be checked for health, via HTTP.
///
/// ~> **Note:** google_compute_http_health_check is a legacy health check. The
/// newer
/// [google_compute_health_check](/docs/providers/google/r/compute_health_check.html)
/// should be preferred for all uses except [Network Load
/// Balancers](https://cloud.google.com/compute/docs/load-balancing/network/)
/// which still require the legacy version.
///
/// Legacy HTTP health check (port/path probe). Prefer
/// [GoogleComputeHealthCheck] / [GoogleComputeRegionHealthCheck] for new
/// stacks; this factory covers the classic `google_compute_http_health_check`
/// surface still used by some target pools and older backends.
final class GoogleComputeHttpHealthCheck extends Resource {
  static const String tfType = 'google_compute_http_health_check';

  GoogleComputeHttpHealthCheck({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? requestPath,
    TfArg<num>? port,
    TfArg<String>? host,
    TfArg<num>? checkIntervalSec,
    TfArg<num>? timeoutSec,
    TfArg<num>? healthyThreshold,
    TfArg<num>? unhealthyThreshold,
    TfArg<String>? description,
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
           'request_path': ?requestPath,
           'port': ?port,
           'host': ?host,
           'check_interval_sec': ?checkIntervalSec,
           'timeout_sec': ?timeoutSec,
           'healthy_threshold': ?healthyThreshold,
           'unhealthy_threshold': ?unhealthyThreshold,
           'description': ?description,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeHttpHealthCheckSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeHttpHealthCheck>`.
  RefTo<GoogleComputeHttpHealthCheck> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `check_interval_sec` attribute.
  TfRef<num> get checkIntervalSec =>
      TfRef.attribute<num>(this, 'check_interval_sec');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `healthy_threshold` attribute.
  TfRef<num> get healthyThreshold =>
      TfRef.attribute<num>(this, 'healthy_threshold');

  /// Reference to `host` attribute.
  TfRef<String> get host => TfRef.attribute<String>(this, 'host');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `request_path` attribute.
  TfRef<String> get requestPath =>
      TfRef.attribute<String>(this, 'request_path');

  /// Reference to `timeout_sec` attribute.
  TfRef<num> get timeoutSec => TfRef.attribute<num>(this, 'timeout_sec');

  /// Reference to `unhealthy_threshold` attribute.
  TfRef<num> get unhealthyThreshold =>
      TfRef.attribute<num>(this, 'unhealthy_threshold');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
