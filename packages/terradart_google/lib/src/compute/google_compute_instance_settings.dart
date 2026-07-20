// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_instance_settings`.
const Set<String> _googleComputeInstanceSettingsSensitive = <String>{};

/// Typed helper for the `metadata` block of
/// `google_compute_instance_settings` (derived from provider schema).
@immutable
final class ComputeInstanceSettingsMetadata {
  const ComputeInstanceSettingsMetadata({this.items});

  final TfArg<Map<String, String>>? items;

  Map<String, Object?> encode() => {
    if (items != null) 'items': items!.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_instance_settings`.
///
/// Represents an Instance Settings resource. Instance settings are centralized
/// configuration parameters that allow users to configure the default values
/// for specific VM parameters that are normally set using GCE instance API
/// methods.
///
/// Zonal **Compute Engine instance settings** — project-scoped defaults
/// for VM metadata applied to instances in a zone.
///
/// Sets key/value metadata items that act as zonal defaults (see
/// [custom project-zonal metadata](https://cloud.google.com/compute/docs/metadata/setting-custom-metadata#set-custom-project-zonal-metadata)).
/// Creating or updating settings alone does not provision VMs and has no
/// Compute Engine SKU (metadata config only).
///
/// Enable `compute.googleapis.com` via [GoogleProjectService] before apply.
/// [zone] is required. Terraform destroy clears the zonal settings via the
/// provider custom delete.
///
/// Example:
/// ```dart
/// GoogleComputeInstanceSettings(
///   localName: 'zonal',
///   zone: TfArg.literal('us-central1-a'),
///   metadata: ComputeInstanceSettingsMetadata(
///     items: TfArg.literal({'terradart-smoke': '1'}),
///   ),
/// );
/// ```
final class GoogleComputeInstanceSettings extends Resource {
  static const String tfType = 'google_compute_instance_settings';

  GoogleComputeInstanceSettings({
    required super.localName,
    required TfArg<String> zone,
    ComputeInstanceSettingsMetadata? metadata,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'zone': zone,
           if (metadata != null) 'metadata': TfArg.literal(metadata.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeInstanceSettingsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');
}
