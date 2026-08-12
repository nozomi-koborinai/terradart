// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_https_health_check`.
const Set<String> _googleComputeHttpsHealthCheckSensitive = <String>{};

/// Factory wrapper for `google_compute_https_health_check`.
///
/// An HttpsHealthCheck resource. This resource defines a template for how
/// individual VMs should be checked for health, via HTTPS.
///
/// ~> **Note:** google_compute_https_health_check is a legacy health check. The
/// newer
/// [google_compute_health_check](/docs/providers/google/r/compute_health_check.html)
/// should be preferred for all uses except [Network Load
/// Balancers](https://cloud.google.com/compute/docs/load-balancing/network/)
/// which still require the legacy version.
///
/// Legacy HTTPS health check (TLS port/path probe). Prefer
/// [GoogleComputeHealthCheck] / [GoogleComputeRegionHealthCheck] for new
/// stacks; this factory covers the classic
/// `google_compute_https_health_check` surface still used by some target
/// pools and older backends.
final class GoogleComputeHttpsHealthCheck extends Resource {
  static const String tfType = 'google_compute_https_health_check';

  GoogleComputeHttpsHealthCheck({
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (requestPath != null) 'request_path': requestPath,
           if (port != null) 'port': port,
           if (host != null) 'host': host,
           if (checkIntervalSec != null) 'check_interval_sec': checkIntervalSec,
           if (timeoutSec != null) 'timeout_sec': timeoutSec,
           if (healthyThreshold != null) 'healthy_threshold': healthyThreshold,
           if (unhealthyThreshold != null)
             'unhealthy_threshold': unhealthyThreshold,
           if (description != null) 'description': description,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeHttpsHealthCheckSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
