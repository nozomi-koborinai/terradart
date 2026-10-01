// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_region_disk.dart'
    show GoogleComputeRegionDisk;
import '../compute/google_compute_resource_policy.dart'
    show GoogleComputeResourcePolicy;

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
    required RefTo<GoogleComputeRegionDisk> disk,
    required RefTo<GoogleComputeResourcePolicy> name,
    TfArg<String>? region,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'disk': disk.encodeAs('name'),
           'name': name.encodeAs('name'),
           'region': ?region,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionDiskResourcePolicyAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionDiskResourcePolicyAttachment>`.
  RefTo<GoogleComputeRegionDiskResourcePolicyAttachment> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `disk` attribute.
  TfRef<String> get disk => TfRef.attribute<String>(this, 'disk');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
