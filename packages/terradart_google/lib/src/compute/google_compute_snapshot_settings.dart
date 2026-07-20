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

  final TfArg<ComputeSnapshotSettingsStorageLocationPolicy> policy;

  final List<ComputeSnapshotSettingsStorageLocationLocations>? locations;

  Map<String, Object?> encode() => {
    'policy': policy.toTfJson(),
    if (locations != null)
      'locations': [for (final e in locations!) e.encode()],
  };
}

/// `policy` — derived from the provider schema description.
enum ComputeSnapshotSettingsStorageLocationPolicy implements TerraformEnum {
  nearestMultiRegion('NEAREST_MULTI_REGION'),
  localRegion('LOCAL_REGION'),
  specificLocations('SPECIFIC_LOCATIONS');

  const ComputeSnapshotSettingsStorageLocationPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `storage_location.locations` block of
/// `google_compute_snapshot_settings` (derived from provider schema).
@immutable
final class ComputeSnapshotSettingsStorageLocationLocations {
  const ComputeSnapshotSettingsStorageLocationLocations({
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
/// Prefer [ComputeSnapshotSettingsStorageLocationPolicy.localRegion] for
/// cheap, region-local defaults in smoke stacks.
///
/// Enable `compute.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleComputeSnapshotSettings(
///   localName: 'defaults',
///   storageLocation: ComputeSnapshotSettingsStorageLocation(
///     policy: TfArg.literal(
///       ComputeSnapshotSettingsStorageLocationPolicy.localRegion,
///     ),
///   ),
/// );
/// ```
final class GoogleComputeSnapshotSettings extends Resource {
  static const String tfType = 'google_compute_snapshot_settings';

  GoogleComputeSnapshotSettings({
    required super.localName,
    required ComputeSnapshotSettingsStorageLocation storageLocation,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'storage_location': TfArg.literal(storageLocation.encode()),
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeSnapshotSettingsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
