// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_disk_resource_policy_attachment`.
const Set<String> _googleComputeDiskResourcePolicyAttachmentSensitive =
    <String>{};

/// Factory wrapper for `google_compute_disk_resource_policy_attachment`.
final class GoogleComputeDiskResourcePolicyAttachment extends Resource {
  static const String tfType = 'google_compute_disk_resource_policy_attachment';

  GoogleComputeDiskResourcePolicyAttachment({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> disk,
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
           'name': name,
           'disk': disk,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `disk` attribute.
  TfRef<String> get diskRef => TfRef.attribute<String>(this, 'disk');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `zone` attribute.
  TfRef<String> get zoneRef => TfRef.attribute<String>(this, 'zone');
}
