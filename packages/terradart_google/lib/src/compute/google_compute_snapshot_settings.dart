// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_snapshot_settings`.
const Set<String> _googleComputeSnapshotSettingsSensitive = <String>{};

/// Typed helper for the `storage_location` block of
/// `google_compute_snapshot_settings` (derived from provider schema).
@immutable
final class ComputeSnapshotSettingsStorageLocation {
  const ComputeSnapshotSettingsStorageLocation({
    required this.policy,
    this.locations,
  });

  final ComputeSnapshotSettingsPolicy policy;

  final List<ComputeSnapshotSettingsLocations>? locations;

  Map<String, Object?> encode() => {
    'policy': policy.toTfJson(),
    if (locations != null)
      'locations': [for (final e in locations!) e.encode()],
  };
}

/// `policy` — derived from the provider schema description.
extension type const ComputeSnapshotSettingsPolicy._(TfArg<String> _)
    implements TfArg<String> {
  ComputeSnapshotSettingsPolicy.variable(String name)
    : this._(TfArg.variable(name));
  ComputeSnapshotSettingsPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeSnapshotSettingsPolicy.arg(TfArg<String> arg) : this._(arg);

  static const nearestMultiRegion = ComputeSnapshotSettingsPolicy._(
    TfArgLiteral('NEAREST_MULTI_REGION'),
  );
  static const localRegion = ComputeSnapshotSettingsPolicy._(
    TfArgLiteral('LOCAL_REGION'),
  );
  static const specificLocations = ComputeSnapshotSettingsPolicy._(
    TfArgLiteral('SPECIFIC_LOCATIONS'),
  );

  static const List<ComputeSnapshotSettingsPolicy> values = [
    nearestMultiRegion,
    localRegion,
    specificLocations,
  ];
}

/// Typed helper for the `storage_location.locations` block of
/// `google_compute_snapshot_settings` (derived from provider schema).
@immutable
final class ComputeSnapshotSettingsLocations {
  const ComputeSnapshotSettingsLocations({
    required this.location,
    required this.name,
  });

  final TfArg<String> location;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'location': location.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_snapshot_settings`.
///
/// Updates your project's snapshot settings and sets a new default storage
/// location for snapshots.
///
/// Project-level **Compute Engine snapshot settings** — default storage
/// location policy for new snapshots (a project singleton).
///
/// Terraform create/update use `PATCH`; destroy is a state-only remove
/// (`exclude_delete` upstream) and leaves the GCP settings in place.
/// Prefer [ComputeSnapshotSettingsPolicy.localRegion] for
/// cheap, region-local defaults in smoke stacks.
///
/// Enable `compute.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleComputeSnapshotSettings(
///   'defaults',
///   storageLocation: ComputeSnapshotSettingsStorageLocation(
///     policy: ComputeSnapshotSettingsPolicy.localRegion,
///   ),
/// );
/// ```
final class GoogleComputeSnapshotSettings extends Resource {
  static const String tfType = 'google_compute_snapshot_settings';

  GoogleComputeSnapshotSettings(
    super.localName, {
    required ComputeSnapshotSettingsStorageLocation storageLocation,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'storage_location': TfArg.literal(storageLocation.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeSnapshotSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeSnapshotSettings>`.
  RefTo<GoogleComputeSnapshotSettings> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
