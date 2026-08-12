// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_disk_resource_policy_attachment`.
const Set<String> _googleComputeRegionDiskResourcePolicyAttachmentSensitive =
    <String>{};

/// Factory wrapper for `google_compute_region_disk_resource_policy_attachment`.
///
/// Adds existing resource policies to a disk. You can only add one policy which
/// will be applied to this disk for scheduling snapshot creation.
///
/// ~> **Note:** This resource does not support zonal disks
/// (`google_compute_disk`). For zonal disks, please refer to
/// [`google_compute_disk_resource_policy_attachment`](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_disk_resource_policy_attachment)
///
/// Attaches an existing [GoogleComputeResourcePolicy] ([name]) to a
/// regional persistent disk. Zonal disks use
/// `google_compute_disk_resource_policy_attachment` instead.
final class GoogleComputeRegionDiskResourcePolicyAttachment extends Resource {
  static const String tfType =
      'google_compute_region_disk_resource_policy_attachment';

  GoogleComputeRegionDiskResourcePolicyAttachment({
    required super.localName,
    required TfArg<String> disk,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'disk': disk,
           'name': name,
           if (region != null) 'region': region,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionDiskResourcePolicyAttachmentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
