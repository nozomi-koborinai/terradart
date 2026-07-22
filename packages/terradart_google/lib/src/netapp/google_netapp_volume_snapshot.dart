// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_netapp_volume_snapshot`.
const Set<String> _googleNetappVolumeSnapshotSensitive = <String>{};

/// Factory wrapper for `google_netapp_volume_snapshot`.
///
/// NetApp Volumes helps you manage your data usage with snapshots that can
/// quickly restore lost data. Snapshots are point-in-time versions of your
/// volume's content. They are resources of volumes and are instant captures of
/// your data that consume space only for modified data. Because data changes
/// over time, snapshots usually consume more space as they get older. NetApp
/// Volumes volumes use just-in-time copy-on-write so that unmodified files in
/// snapshots don't consume any of the volume's capacity.
///
/// NetApp Volumes **volume snapshot**.
///
/// **Cost:** no dedicated snapshot SKU under NetApp Volumes
/// `FC86-5113-7C81` beyond pool/backup capacity lines — snapshot space
/// is consumed from the parent pool. Deferred with the pool (no
/// apply-smoke quickstart).
///
/// Example:
/// ```dart
/// GoogleNetappVolumeSnapshot(
///   localName: 'snap',
///   name: TfArg.literal('daily'),
///   location: TfArg.literal('us-central1'),
///   volumeName: TfArg.ref(vol.nameRef),
/// );
/// ```
final class GoogleNetappVolumeSnapshot extends Resource {
  static const String tfType = 'google_netapp_volume_snapshot';

  GoogleNetappVolumeSnapshot({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> volumeName,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'volume_name': volumeName,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetappVolumeSnapshotSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `used_bytes` attribute.
  TfRef<num> get usedBytes => TfRef.attribute<num>(this, 'used_bytes');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
