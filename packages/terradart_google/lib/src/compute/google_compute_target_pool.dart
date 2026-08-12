// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_target_pool`.
const Set<String> _googleComputeTargetPoolSensitive = <String>{};

/// Factory wrapper for `google_compute_target_pool`.
///
/// Legacy Network Load Balancer target pool. Optional [healthChecks] accept
/// only a legacy [GoogleComputeHttpHealthCheck] (not the newer health-check
/// resources). Prefer backend services for new HTTP(S) load balancers.
final class GoogleComputeTargetPool extends Resource {
  static const String tfType = 'google_compute_target_pool';

  GoogleComputeTargetPool({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? description,
    TfArg<List<String>>? instances,
    TfArg<List<String>>? healthChecks,
    TfArg<String>? sessionAffinity,
    TfArg<String>? backupPool,
    TfArg<num>? failoverRatio,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (description != null) 'description': description,
           if (instances != null) 'instances': instances,
           if (healthChecks != null) 'health_checks': healthChecks,
           if (sessionAffinity != null) 'session_affinity': sessionAffinity,
           if (backupPool != null) 'backup_pool': backupPool,
           if (failoverRatio != null) 'failover_ratio': failoverRatio,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeTargetPoolSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
