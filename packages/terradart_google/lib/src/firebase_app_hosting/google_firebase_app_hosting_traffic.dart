// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../firebase_app_hosting/google_firebase_app_hosting_backend.dart'
    show GoogleFirebaseAppHostingBackend;
import '../firebase_app_hosting/google_firebase_app_hosting_build.dart'
    show GoogleFirebaseAppHostingBuild;

/// Sensitive field paths for `google_firebase_app_hosting_traffic`.
const Set<String> _googleFirebaseAppHostingTrafficSensitive = <String>{};

// ===========================================================================
// target block (max_items=1) + splits (min_items=1)
// ===========================================================================

/// `target` block. Manually pin the desired traffic split across builds.
/// The state's `current` field eventually reconverges to this value.
/// Split percentages must sum to 100, and per the provider's current
/// schema each individual entry must be exactly 0 or 100 (so today this
/// behaves as "single live build" rather than a true weighted split).
@immutable
class FirebaseAppHostingTrafficTarget {
  const FirebaseAppHostingTrafficTarget({required this.splits})
    : assert(
        splits.length >= 1,
        'FirebaseAppHostingTrafficTarget.splits must have at least one entry '
        '(schema enforces min_items=1)',
      );

  /// At least one [FirebaseAppHostingTrafficSplit] per the schema's `min_items=1`.
  final List<FirebaseAppHostingTrafficSplit> splits;

  Map<String, Object?> toArgMap() => {
    'splits': splits.map((s) => s.toArgMap()).toList(),
  };
}

/// One entry in `target.splits`. Pairs a build with the percentage of
/// traffic it should receive.
@immutable
class FirebaseAppHostingTrafficSplit {
  const FirebaseAppHostingTrafficSplit({
    required this.build,
    required this.percent,
  });

  /// The target build; emits its `build_id`.
  final RefTo<GoogleFirebaseAppHostingBuild> build;

  /// Percentage of traffic to direct at [build]. Provider currently
  /// requires this to be exactly 0 or 100; the split list as a whole
  /// must sum to 100.
  final TfArg<int> percent;

  Map<String, Object?> toArgMap() => {
    'build': build.encodeAs('build_id').toTfJson(),
    'percent': percent.toTfJson(),
  };
}

// ===========================================================================
// rollout_policy block (max_items=1)
// ===========================================================================

/// `rollout_policy` block. Drives automated builds and rollouts off a
/// git branch in the backend's linked Developer Connect repository.
/// When omitted, the backend never auto-rolls out -- builds are
/// triggered exclusively by explicit [GoogleFirebaseAppHostingBuild]
/// resources.
@immutable
class FirebaseAppHostingTrafficRolloutPolicy {
  const FirebaseAppHostingTrafficRolloutPolicy({
    this.codebaseBranch,
    this.disabled,
  });

  /// Branch to watch. New commits on this branch trigger a build +
  /// rollout. When null, no automatic rollouts happen.
  final TfArg<String>? codebaseBranch;

  /// If `true`, suspends new rollouts via this policy. The state
  /// surfaces `disabled_time` once a pause takes effect.
  final TfArg<bool>? disabled;

  Map<String, Object?> toArgMap() => {
    if (codebaseBranch != null) 'codebase_branch': codebaseBranch!.toTfJson(),
    if (disabled != null) 'disabled': disabled!.toTfJson(),
  };
}

/// Exactly one of `rollout_policy`, `target` on `google_firebase_app_hosting_traffic`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.rolloutPolicy(...)`.
sealed class FirebaseAppHostingTrafficRouting {
  const FirebaseAppHostingTrafficRouting();

  /// Sets `rollout_policy`.
  const factory FirebaseAppHostingTrafficRouting.rolloutPolicy(
    FirebaseAppHostingTrafficRolloutPolicy rolloutPolicy,
  ) = FirebaseAppHostingTrafficRoutingRolloutPolicy;

  /// Sets `target`.
  const factory FirebaseAppHostingTrafficRouting.target(
    FirebaseAppHostingTrafficTarget target,
  ) = FirebaseAppHostingTrafficRoutingTarget;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [FirebaseAppHostingTrafficRouting.rolloutPolicy] choice: sets `rollout_policy`.
final class FirebaseAppHostingTrafficRoutingRolloutPolicy
    extends FirebaseAppHostingTrafficRouting {
  const FirebaseAppHostingTrafficRoutingRolloutPolicy(this.rolloutPolicy);

  final FirebaseAppHostingTrafficRolloutPolicy rolloutPolicy;

  @override
  String get blockKey => 'rollout_policy';

  @override
  Map<String, Object?> encode() => {
    'rollout_policy': [rolloutPolicy.toArgMap()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'rollout_policy': TfArg.literal([rolloutPolicy.toArgMap()]),
  };
}

/// The [FirebaseAppHostingTrafficRouting.target] choice: sets `target`.
final class FirebaseAppHostingTrafficRoutingTarget
    extends FirebaseAppHostingTrafficRouting {
  const FirebaseAppHostingTrafficRoutingTarget(this.target);

  final FirebaseAppHostingTrafficTarget target;

  @override
  String get blockKey => 'target';

  @override
  Map<String, Object?> encode() => {
    'target': [target.toArgMap()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'target': TfArg.literal([target.toArgMap()]),
  };
}

/// Factory wrapper for `google_firebase_app_hosting_traffic`.
///
/// Controls traffic configuration for a backend.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_firebase_app_hosting_traffic.`).
/// - `backend`: ID of the backend whose traffic this resource configures.
///   Typically `backend.backendId` where `backend` is a
///   [GoogleFirebaseAppHostingBackend].
/// - `location`: GCP region of the backend.
///
/// The required [routing] argument picks exactly one of
/// `.target(...)` (manually pin which build gets traffic) or
/// `.rolloutPolicy(...)` (automatic builds on commits to a branch).
///
/// Example (manual pin: 100% to one build):
/// ```dart
/// final traffic = GoogleFirebaseAppHostingTraffic(
///   'main',
///   backend: backend.ref,
///   location: TfArg.literal('us-central1'),
///   routing: .target(
///     .new(
///       splits: [
///         .new(
///           build: build.ref,
///           percent: TfArg.literal(100),
///         ),
///       ],
///     ),
///   ),
/// );
/// ```
///
/// Example (automatic rollouts off the `main` branch):
/// ```dart
/// final traffic = GoogleFirebaseAppHostingTraffic(
///   'main',
///   backend: backend.ref,
///   location: TfArg.literal('us-central1'),
///   routing: .rolloutPolicy(
///     .new(
///       codebaseBranch: TfArg.literal('main'),
///     ),
///   ),
/// );
/// ```
///
/// Manages traffic shaping + rollout policy for an App Hosting backend.
/// The `target` block lets you manually steer traffic across builds (with
/// the provider currently restricting split percentages to 0 or 100);
/// the `rollout_policy` block hooks builds into a git branch so commits
/// trigger automatic redeploys.
final class GoogleFirebaseAppHostingTraffic extends Resource {
  static const String tfType = 'google_firebase_app_hosting_traffic';

  GoogleFirebaseAppHostingTraffic(
    super.localName, {
    required RefTo<GoogleFirebaseAppHostingBackend> backend,
    required TfArg<String> location,
    required FirebaseAppHostingTrafficRouting routing,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backend': backend.encodeAs('backend_id'),
           'location': location,
           ...routing.argMap,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirebaseAppHostingTrafficSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFirebaseAppHostingTraffic>`.
  RefTo<GoogleFirebaseAppHostingTraffic> get ref => RefTo.of(this);

  /// Reference to `name` attribute (full resource path
  /// `projects/{project}/locations/{location}/backends/{backend}/traffic`).
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute. Same as `name` for this resource.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `uid` (server-assigned unique identifier).
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `etag` (used for optimistic concurrency).
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
