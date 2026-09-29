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

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
