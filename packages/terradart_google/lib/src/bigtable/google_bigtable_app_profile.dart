// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigtable_app_profile`.
const Set<String> _googleBigtableAppProfileSensitive = <String>{};

/// Routing strategy for `google_bigtable_app_profile` — exactly one variant.
sealed class BigtableAppProfileRouting {
  const BigtableAppProfileRouting();

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
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_profile_id': appProfileId,
           if (instance != null) 'instance': instance,
           routing.blockKey: TfArg.literal([routing.encode()]),
           if (description != null) 'description': description,
           if (ignoreWarnings != null) 'ignore_warnings': ignoreWarnings,
           if (rowAffinity != null) 'row_affinity': rowAffinity,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigtableAppProfileSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
