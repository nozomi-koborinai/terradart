// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigtable_app_profile`.
const Set<String> _googleBigtableAppProfileSensitive = <String>{};

/// Routing strategy for `google_bigtable_app_profile` — exactly one variant.
sealed class BigtableAppProfileRouting {
  const BigtableAppProfileRouting();

  /// Route all traffic to one cluster.
  const factory BigtableAppProfileRouting.singleClusterRouting({
    required TfArg<String> clusterId,
    TfArg<bool>? allowTransactionalWrites,
  }) = BigtableAppProfileSingleClusterRouting;

  /// Multi-cluster routing with a priority tier.
  const factory BigtableAppProfileRouting.standardIsolation({
    required TfArg<BigtableAppProfileIsolationPriority> priority,
  }) = BigtableAppProfileStandardIsolation;

  /// Read-only Data Boost isolation.
  const factory BigtableAppProfileRouting.dataBoostIsolation({
    required TfArg<BigtableAppProfileComputeBillingOwner> computeBillingOwner,
  }) = BigtableAppProfileDataBoostIsolation;

  String get blockKey;
  Map<String, Object?> encode();
}

/// Route all traffic to one cluster.
final class BigtableAppProfileSingleClusterRouting
    extends BigtableAppProfileRouting {
  const BigtableAppProfileSingleClusterRouting({
    required this.clusterId,
    this.allowTransactionalWrites,
  });

  final TfArg<String> clusterId;
  final TfArg<bool>? allowTransactionalWrites;

  @override
  String get blockKey => 'single_cluster_routing';

  @override
  Map<String, Object?> encode() => {
    'cluster_id': clusterId.toTfJson(),
    if (allowTransactionalWrites != null)
      'allow_transactional_writes': allowTransactionalWrites!.toTfJson(),
  };
}

/// Multi-cluster routing with a priority tier.
final class BigtableAppProfileStandardIsolation
    extends BigtableAppProfileRouting {
  const BigtableAppProfileStandardIsolation({required this.priority});

  final TfArg<BigtableAppProfileIsolationPriority> priority;

  @override
  String get blockKey => 'standard_isolation';

  @override
  Map<String, Object?> encode() => {'priority': priority.toTfJson()};
}

/// Read-only Data Boost isolation.
final class BigtableAppProfileDataBoostIsolation
    extends BigtableAppProfileRouting {
  const BigtableAppProfileDataBoostIsolation({
    required this.computeBillingOwner,
  });

  final TfArg<BigtableAppProfileComputeBillingOwner> computeBillingOwner;

  @override
  String get blockKey => 'data_boost_isolation_read_only';

  @override
  Map<String, Object?> encode() => {
    'compute_billing_owner': computeBillingOwner.toTfJson(),
  };
}

/// `compute_billing_owner` on `data_boost_isolation_read_only`.
enum BigtableAppProfileComputeBillingOwner implements TerraformEnum {
  hostPays('HOST_PAYS');

  const BigtableAppProfileComputeBillingOwner(this.terraformValue);
  @override
  final String terraformValue;
}

/// `priority` on `standard_isolation`.
enum BigtableAppProfileIsolationPriority implements TerraformEnum {
  priorityUnspecified('PRIORITY_UNSPECIFIED'),
  priorityLow('PRIORITY_LOW'),
  priorityMedium('PRIORITY_MEDIUM'),
  priorityHigh('PRIORITY_HIGH');

  const BigtableAppProfileIsolationPriority(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_bigtable_app_profile`.
///
/// App profile is a configuration object describing how Cloud Bigtable should
/// treat traffic from a particular end user application.
///
/// Cloud Bigtable app profile — routes client traffic to clusters.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [appProfileId]: profile ID within the instance.
/// - [instance]: parent instance — pass `TfArg.ref(instance.nameRef)`.
/// - [routing]: pick exactly one [BigtableAppProfileRouting] variant.
///
/// Example (single-cluster routing):
/// ```dart
/// GoogleBigtableAppProfile(
///   localName: 'default',
///   appProfileId: TfArg.literal('default'),
///   instance: TfArg.ref(instance.nameRef),
///   routing: BigtableAppProfileSingleClusterRouting(
///     clusterId: TfArg.literal('events-c1'),
///   ),
/// );
/// ```
final class GoogleBigtableAppProfile extends Resource {
  static const String tfType = 'google_bigtable_app_profile';

  GoogleBigtableAppProfile({
    required super.localName,
    required TfArg<String> appProfileId,
    TfArg<String>? instance,
    required BigtableAppProfileRouting routing,
    TfArg<String>? description,
    TfArg<bool>? ignoreWarnings,
    TfArg<bool>? rowAffinity,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_profile_id': appProfileId,
           'instance': ?instance,
           routing.blockKey: TfArg.literal([routing.encode()]),
           'description': ?description,
           'ignore_warnings': ?ignoreWarnings,
           'row_affinity': ?rowAffinity,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigtableAppProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigtableAppProfile>`.
  RefTo<GoogleBigtableAppProfile> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `app_profile_id` attribute.
  TfRef<String> get appProfileIdRef =>
      TfRef.attribute<String>(this, 'app_profile_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `ignore_warnings` attribute.
  TfRef<bool> get ignoreWarningsRef =>
      TfRef.attribute<bool>(this, 'ignore_warnings');

  /// Reference to `instance` attribute.
  TfRef<String> get instanceRef => TfRef.attribute<String>(this, 'instance');

  /// Reference to `multi_cluster_routing_cluster_ids` attribute.
  TfRef<List<String>> get multiClusterRoutingClusterIdsRef =>
      TfRef.attribute<List<String>>(this, 'multi_cluster_routing_cluster_ids');

  /// Reference to `multi_cluster_routing_use_any` attribute.
  TfRef<bool> get multiClusterRoutingUseAnyRef =>
      TfRef.attribute<bool>(this, 'multi_cluster_routing_use_any');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `row_affinity` attribute.
  TfRef<bool> get rowAffinityRef => TfRef.attribute<bool>(this, 'row_affinity');

  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
