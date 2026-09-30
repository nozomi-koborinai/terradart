// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssoadmin_customer_managed_policy_attachment`.
const Set<String> _awsSsoadminCustomerManagedPolicyAttachmentSensitive =
    <String>{};

/// Typed helper for the `customer_managed_policy_reference` block of
/// `aws_ssoadmin_customer_managed_policy_attachment` (derived from provider schema).
@immutable
final class SsoadminCustomerManagedPolicyAttachmentCustomerManagedPolicyReference {
  const SsoadminCustomerManagedPolicyAttachmentCustomerManagedPolicyReference({
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

/// Factory wrapper for `aws_ssoadmin_customer_managed_policy_attachment`.
final class AwsSsoadminCustomerManagedPolicyAttachment extends Resource {
  static const String tfType =
      'aws_ssoadmin_customer_managed_policy_attachment';

  AwsSsoadminCustomerManagedPolicyAttachment({
    required super.localName,
    required TfArg<String> instanceArn,
    required TfArg<String> permissionSetArn,
    TfArg<String>? region,
    required SsoadminCustomerManagedPolicyAttachmentCustomerManagedPolicyReference
    customerManagedPolicyReference,
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
           'customer_managed_policy_reference': TfArg.literal(
             customerManagedPolicyReference.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSsoadminCustomerManagedPolicyAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSsoadminCustomerManagedPolicyAttachment>`.
  RefTo<AwsSsoadminCustomerManagedPolicyAttachment> get ref => RefTo.of(this);

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
