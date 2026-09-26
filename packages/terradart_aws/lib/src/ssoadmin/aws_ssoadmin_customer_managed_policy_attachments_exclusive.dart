// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssoadmin_customer_managed_policy_attachments_exclusive`.
const Set<String>
_awsSsoadminCustomerManagedPolicyAttachmentsExclusiveSensitive = <String>{};

/// Typed helper for the `customer_managed_policy_reference` block of
/// `aws_ssoadmin_customer_managed_policy_attachments_exclusive` (derived from provider schema).
@immutable
final class SsoadminCustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReference {
  const SsoadminCustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReference({
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

/// Factory wrapper for `aws_ssoadmin_customer_managed_policy_attachments_exclusive`.
final class AwsSsoadminCustomerManagedPolicyAttachmentsExclusive
    extends Resource {
  static const String tfType =
      'aws_ssoadmin_customer_managed_policy_attachments_exclusive';

  AwsSsoadminCustomerManagedPolicyAttachmentsExclusive({
    required super.localName,
    required TfArg<String> instanceArn,
    required TfArg<String> permissionSetArn,
    TfArg<String>? region,
    List<
      SsoadminCustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReference
    >?
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
           if (region != null) 'region': region,
           if (customerManagedPolicyReference != null)
             'customer_managed_policy_reference': TfArg.literal([
               for (final e in customerManagedPolicyReference) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSsoadminCustomerManagedPolicyAttachmentsExclusiveSensitive;
}
