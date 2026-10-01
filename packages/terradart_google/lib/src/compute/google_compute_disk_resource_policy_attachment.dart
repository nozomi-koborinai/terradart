// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_disk.dart' show GoogleComputeDisk;
import '../compute/google_compute_resource_policy.dart'
    show GoogleComputeResourcePolicy;

/// Sensitive field paths for `google_compute_disk_resource_policy_attachment`.
const Set<String> _googleComputeDiskResourcePolicyAttachmentSensitive =
    <String>{};

/// Factory wrapper for `google_compute_disk_resource_policy_attachment`.
final class GoogleComputeDiskResourcePolicyAttachment extends Resource {
  static const String tfType = 'google_compute_disk_resource_policy_attachment';

  GoogleComputeDiskResourcePolicyAttachment(
    super.localName, {
    required RefTo<GoogleComputeResourcePolicy> name,
    required RefTo<GoogleComputeDisk> disk,
    TfArg<String>? zone,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name.encodeAs('name'),
           'disk': disk.encodeAs('name'),
           'zone': ?zone,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeDiskResourcePolicyAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeDiskResourcePolicyAttachment>`.
  RefTo<GoogleComputeDiskResourcePolicyAttachment> get ref => RefTo.of(this);

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

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
