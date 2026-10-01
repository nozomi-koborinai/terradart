// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../bigtable/google_bigtable_instance.dart' show GoogleBigtableInstance;

/// Sensitive field paths for `google_bigtable_app_profile`.
const Set<String> _googleBigtableAppProfileSensitive = <String>{};

/// `compute_billing_owner` on `data_boost_isolation_read_only`.
extension type const BigtableAppProfileComputeBillingOwner._(TfArg<String> _)
    implements TfArg<String> {
  BigtableAppProfileComputeBillingOwner.variable(String name)
    : this._(TfArg.variable(name));
  BigtableAppProfileComputeBillingOwner.expression(String template)
    : this._(TfArg.expression(template));
  const BigtableAppProfileComputeBillingOwner.arg(TfArg<String> arg)
    : this._(arg);

  static const hostPays = BigtableAppProfileComputeBillingOwner._(
    TfArgLiteral('HOST_PAYS'),
  );

  static const List<BigtableAppProfileComputeBillingOwner> values = [hostPays];
}

/// Exactly one of `single_cluster_routing`, `multi_cluster_routing_use_any` on `google_bigtable_app_profile`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.singleClusterRouting(...)`.
sealed class BigtableAppProfileRouting {
  const BigtableAppProfileRouting();

  /// Sets `single_cluster_routing`.
  const factory BigtableAppProfileRouting.singleClusterRouting(
    BigtableAppProfileSingleClusterRouting singleClusterRouting,
  ) = BigtableAppProfileSingleClusterRoutingChoice;

  /// Sets `multi_cluster_routing_use_any`.
  const factory BigtableAppProfileRouting.multiClusterRoutingUseAny(
    TfArg<bool> multiClusterRoutingUseAny,
  ) = BigtableAppProfileRoutingMultiClusterRoutingUseAny;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [BigtableAppProfileRouting.singleClusterRouting] choice: sets `single_cluster_routing`.
final class BigtableAppProfileSingleClusterRoutingChoice
    extends BigtableAppProfileRouting {
  const BigtableAppProfileSingleClusterRoutingChoice(this.singleClusterRouting);

  final BigtableAppProfileSingleClusterRouting singleClusterRouting;

  @override
  String get blockKey => 'single_cluster_routing';

  @override
  Map<String, Object?> encode() => {
    'single_cluster_routing': singleClusterRouting.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'single_cluster_routing': TfArg.literal(singleClusterRouting.encode()),
  };
}

/// The [BigtableAppProfileRouting.multiClusterRoutingUseAny] choice: sets `multi_cluster_routing_use_any`.
final class BigtableAppProfileRoutingMultiClusterRoutingUseAny
    extends BigtableAppProfileRouting {
  const BigtableAppProfileRoutingMultiClusterRoutingUseAny(
    this.multiClusterRoutingUseAny,
  );

  final TfArg<bool> multiClusterRoutingUseAny;

  @override
  String get blockKey => 'multi_cluster_routing_use_any';

  @override
  Map<String, Object?> encode() => {
    'multi_cluster_routing_use_any': multiClusterRoutingUseAny.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'multi_cluster_routing_use_any': multiClusterRoutingUseAny,
  };
}

/// At most one of `standard_isolation`, `data_boost_isolation_read_only` on `google_bigtable_app_profile`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.standardIsolation(...)`.
sealed class BigtableAppProfileIsolation {
  const BigtableAppProfileIsolation();

  /// Sets `standard_isolation`.
  const factory BigtableAppProfileIsolation.standardIsolation(
    BigtableAppProfileStandardIsolation standardIsolation,
  ) = BigtableAppProfileStandardIsolationChoice;

  /// Sets `data_boost_isolation_read_only`.
  const factory BigtableAppProfileIsolation.dataBoostIsolationReadOnly(
    BigtableAppProfileDataBoostIsolationReadOnly dataBoostIsolationReadOnly,
  ) = BigtableAppProfileIsolationDataBoostIsolationReadOnly;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [BigtableAppProfileIsolation.standardIsolation] choice: sets `standard_isolation`.
final class BigtableAppProfileStandardIsolationChoice
    extends BigtableAppProfileIsolation {
  const BigtableAppProfileStandardIsolationChoice(this.standardIsolation);

  final BigtableAppProfileStandardIsolation standardIsolation;

  @override
  String get blockKey => 'standard_isolation';

  @override
  Map<String, Object?> encode() => {
    'standard_isolation': standardIsolation.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'standard_isolation': TfArg.literal(standardIsolation.encode()),
  };
}

/// The [BigtableAppProfileIsolation.dataBoostIsolationReadOnly] choice: sets `data_boost_isolation_read_only`.
final class BigtableAppProfileIsolationDataBoostIsolationReadOnly
    extends BigtableAppProfileIsolation {
  const BigtableAppProfileIsolationDataBoostIsolationReadOnly(
    this.dataBoostIsolationReadOnly,
  );

  final BigtableAppProfileDataBoostIsolationReadOnly dataBoostIsolationReadOnly;

  @override
  String get blockKey => 'data_boost_isolation_read_only';

  @override
  Map<String, Object?> encode() => {
    'data_boost_isolation_read_only': dataBoostIsolationReadOnly.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'data_boost_isolation_read_only': TfArg.literal(
      dataBoostIsolationReadOnly.encode(),
    ),
  };
}

/// Typed helper for the `data_boost_isolation_read_only` block of
/// `google_bigtable_app_profile` (derived from provider schema).
@immutable
final class BigtableAppProfileDataBoostIsolationReadOnly {
  const BigtableAppProfileDataBoostIsolationReadOnly({
    required this.computeBillingOwner,
  });

  final BigtableAppProfileComputeBillingOwner computeBillingOwner;

  Map<String, Object?> encode() => {
    'compute_billing_owner': computeBillingOwner.toTfJson(),
  };
}

/// Typed helper for the `single_cluster_routing` block of
/// `google_bigtable_app_profile` (derived from provider schema).
@immutable
final class BigtableAppProfileSingleClusterRouting {
  const BigtableAppProfileSingleClusterRouting({
    this.allowTransactionalWrites,
    required this.clusterId,
  });

  final TfArg<bool>? allowTransactionalWrites;

  final TfArg<String> clusterId;

  Map<String, Object?> encode() => {
    'allow_transactional_writes': ?allowTransactionalWrites?.toTfJson(),
    'cluster_id': clusterId.toTfJson(),
  };
}

/// Typed helper for the `standard_isolation` block of
/// `google_bigtable_app_profile` (derived from provider schema).
@immutable
final class BigtableAppProfileStandardIsolation {
  const BigtableAppProfileStandardIsolation({required this.priority});

  final BigtableAppProfilePriority priority;

  Map<String, Object?> encode() => {'priority': priority.toTfJson()};
}

/// `priority` — derived from the provider schema description.
extension type const BigtableAppProfilePriority._(TfArg<String> _)
    implements TfArg<String> {
  BigtableAppProfilePriority.variable(String name)
    : this._(TfArg.variable(name));
  BigtableAppProfilePriority.expression(String template)
    : this._(TfArg.expression(template));
  const BigtableAppProfilePriority.arg(TfArg<String> arg) : this._(arg);

  static const priorityLow = BigtableAppProfilePriority._(
    TfArgLiteral('PRIORITY_LOW'),
  );
  static const priorityMedium = BigtableAppProfilePriority._(
    TfArgLiteral('PRIORITY_MEDIUM'),
  );
  static const priorityHigh = BigtableAppProfilePriority._(
    TfArgLiteral('PRIORITY_HIGH'),
  );

  static const List<BigtableAppProfilePriority> values = [
    priorityLow,
    priorityMedium,
    priorityHigh,
  ];
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
/// - [instance]: parent instance — pass `instance.name`.
/// - [routing]: pick exactly one [BigtableAppProfileRouting] variant
///   (single-cluster, or multi-cluster across
///   [multiClusterRoutingClusterIds]). [isolation] optionally picks
///   standard or Data Boost isolation.
///
/// Example (single-cluster routing):
/// ```dart
/// GoogleBigtableAppProfile(
///   'default',
///   appProfileId: TfArg.literal('default'),
///   instance: instance.ref,
///   routing: .singleClusterRouting(
///     .new(
///       clusterId: TfArg.literal('events-c1'),
///     ),
///   ),
/// );
/// ```
final class GoogleBigtableAppProfile extends Resource {
  static const String tfType = 'google_bigtable_app_profile';

  GoogleBigtableAppProfile(
    super.localName, {
    required TfArg<String> appProfileId,
    RefTo<GoogleBigtableInstance>? instance,
    required BigtableAppProfileRouting routing,
    TfArg<List<String>>? multiClusterRoutingClusterIds,
    BigtableAppProfileIsolation? isolation,
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
           'instance': ?instance?.encodeAs('name'),
           ...routing.argMap,
           'multi_cluster_routing_cluster_ids': ?multiClusterRoutingClusterIds,
           ...?isolation?.argMap,
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

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `app_profile_id` attribute.
  TfRef<String> get appProfileId =>
      TfRef.attribute<String>(this, 'app_profile_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `ignore_warnings` attribute.
  TfRef<bool> get ignoreWarnings =>
      TfRef.attribute<bool>(this, 'ignore_warnings');

  /// Reference to `instance` attribute.
  TfRef<String> get instance => TfRef.attribute<String>(this, 'instance');

  /// Reference to `multi_cluster_routing_cluster_ids` attribute.
  TfRef<List<String>> get multiClusterRoutingClusterIds =>
      TfRef.attribute<List<String>>(this, 'multi_cluster_routing_cluster_ids');

  /// Reference to `multi_cluster_routing_use_any` attribute.
  TfRef<bool> get multiClusterRoutingUseAny =>
      TfRef.attribute<bool>(this, 'multi_cluster_routing_use_any');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `row_affinity` attribute.
  TfRef<bool> get rowAffinity => TfRef.attribute<bool>(this, 'row_affinity');
}
