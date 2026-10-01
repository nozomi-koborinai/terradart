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

  final SsoadminPermissionsBoundaryAttachmentCustomerManagedPolicyReference?
  customerManagedPolicyReference;

  Map<String, Object?> encode() => {
    'managed_policy_arn': ?managedPolicyArn?.toTfJson(),
    'customer_managed_policy_reference': ?customerManagedPolicyReference
        ?.encode(),
  };
}

/// Typed helper for the `permissions_boundary.customer_managed_policy_reference` block of
/// `aws_ssoadmin_permissions_boundary_attachment` (derived from provider schema).
@immutable
final class SsoadminPermissionsBoundaryAttachmentCustomerManagedPolicyReference {
  const SsoadminPermissionsBoundaryAttachmentCustomerManagedPolicyReference({
    required this.name,
    this.path,
  });

  final TfArg<String> name;

  final TfArg<String>? path;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'path': ?path?.toTfJson(),
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
           'region': ?region,
           'permissions_boundary': TfArg.literal(permissionsBoundary.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSsoadminPermissionsBoundaryAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSsoadminPermissionsBoundaryAttachment>`.
  RefTo<AwsSsoadminPermissionsBoundaryAttachment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `instance_arn` attribute.
  TfRef<String> get instanceArnRef =>
      TfRef.attribute<String>(this, 'instance_arn');

  /// Reference to `permission_set_arn` attribute.
  TfRef<String> get permissionSetArnRef =>
      TfRef.attribute<String>(this, 'permission_set_arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
