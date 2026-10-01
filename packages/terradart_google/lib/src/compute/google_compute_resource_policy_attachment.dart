// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_instance.dart' show GoogleComputeInstance;
import '../compute/google_compute_resource_policy.dart'
    show GoogleComputeResourcePolicy;

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

  GoogleComputeResourcePolicyAttachment(
    super.localName, {
    required RefTo<GoogleComputeInstance> instance,
    required RefTo<GoogleComputeResourcePolicy> name,
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
           'instance': instance.encodeAs('name'),
           'name': name.encodeAs('name'),
           'zone': ?zone,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeResourcePolicyAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeResourcePolicyAttachment>`.
  RefTo<GoogleComputeResourcePolicyAttachment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `instance` attribute.
  TfRef<String> get instance => TfRef.attribute<String>(this, 'instance');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
