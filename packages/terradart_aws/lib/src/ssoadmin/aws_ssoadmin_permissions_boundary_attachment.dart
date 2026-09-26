// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssoadmin_permissions_boundary_attachment`.
const Set<String> _awsSsoadminPermissionsBoundaryAttachmentSensitive =
    <String>{};

/// Typed helper for the `permissions_boundary` block of
/// `aws_ssoadmin_permissions_boundary_attachment` (derived from provider schema).
@immutable
final class SsoadminPermissionsBoundaryAttachmentPermissionsBoundary {
  const SsoadminPermissionsBoundaryAttachmentPermissionsBoundary({
    this.managedPolicyArn,
    this.customerManagedPolicyReference,
  });

  final TfArg<String>? managedPolicyArn;

  final SsoadminPermissionsBoundaryAttachmentPermissionsBoundaryCustomerManagedPolicyReference?
  customerManagedPolicyReference;

  Map<String, Object?> encode() => {
    if (managedPolicyArn != null)
      'managed_policy_arn': managedPolicyArn!.toTfJson(),
    if (customerManagedPolicyReference != null)
      'customer_managed_policy_reference': customerManagedPolicyReference!
          .encode(),
  };
}

/// Typed helper for the `permissions_boundary.customer_managed_policy_reference` block of
/// `aws_ssoadmin_permissions_boundary_attachment` (derived from provider schema).
@immutable
final class SsoadminPermissionsBoundaryAttachmentPermissionsBoundaryCustomerManagedPolicyReference {
  const SsoadminPermissionsBoundaryAttachmentPermissionsBoundaryCustomerManagedPolicyReference({
    required this.name,
    this.path,
  });

  final TfArg<String> name;

  final TfArg<String>? path;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
  };
}

/// Factory wrapper for `aws_ssoadmin_permissions_boundary_attachment`.
final class AwsSsoadminPermissionsBoundaryAttachment extends Resource {
  static const String tfType = 'aws_ssoadmin_permissions_boundary_attachment';

  AwsSsoadminPermissionsBoundaryAttachment({
    required super.localName,
    required TfArg<String> instanceArn,
    required TfArg<String> permissionSetArn,
    TfArg<String>? region,
    required SsoadminPermissionsBoundaryAttachmentPermissionsBoundary
    permissionsBoundary,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_arn': instanceArn,
           'permission_set_arn': permissionSetArn,
           if (region != null) 'region': region,
           'permissions_boundary': TfArg.literal(permissionsBoundary.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSsoadminPermissionsBoundaryAttachmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
