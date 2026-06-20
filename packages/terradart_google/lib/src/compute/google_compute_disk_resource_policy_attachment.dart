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
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'disk': disk,
           if (zone != null) 'zone': zone,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeDiskResourcePolicyAttachmentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
