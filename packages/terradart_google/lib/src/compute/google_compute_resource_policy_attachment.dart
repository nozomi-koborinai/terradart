// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_resource_policy_attachment`.
const Set<String> _googleComputeResourcePolicyAttachmentSensitive = <String>{};

/// Factory wrapper for `google_compute_resource_policy_attachment`.
///
/// Adds existing resource policies to a compute instance. You can only add one
/// policy which will be applied to this instance for scheduling start/stop
/// operations.
///
/// This resource can be used instead of setting the resource_policy directly in
/// the compute instance resource to avoid dependency issues when using
/// instance-level IAM permissions.
///
/// Attaches an existing [GoogleComputeResourcePolicy] ([name]) to a VM
/// instance. The policy itself (snapshot schedule, instance schedule, …)
/// is curated separately.
final class GoogleComputeResourcePolicyAttachment extends Resource {
  static const String tfType = 'google_compute_resource_policy_attachment';

  GoogleComputeResourcePolicyAttachment({
    required super.localName,
    required TfArg<String> instance,
    required TfArg<String> name,
    TfArg<String>? zone,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance': instance,
           'name': name,
           if (zone != null) 'zone': zone,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeResourcePolicyAttachmentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
