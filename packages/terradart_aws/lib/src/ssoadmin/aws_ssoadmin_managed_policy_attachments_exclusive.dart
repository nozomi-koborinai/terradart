// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssoadmin_managed_policy_attachments_exclusive`.
const Set<String> _awsSsoadminManagedPolicyAttachmentsExclusiveSensitive =
    <String>{};

/// Factory wrapper for `aws_ssoadmin_managed_policy_attachments_exclusive`.
final class AwsSsoadminManagedPolicyAttachmentsExclusive extends Resource {
  static const String tfType =
      'aws_ssoadmin_managed_policy_attachments_exclusive';

  AwsSsoadminManagedPolicyAttachmentsExclusive({
    required super.localName,
    required TfArg<String> instanceArn,
    required TfArg<List<String>> managedPolicyArns,
    required TfArg<String> permissionSetArn,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_arn': instanceArn,
           'managed_policy_arns': managedPolicyArns,
           'permission_set_arn': permissionSetArn,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSsoadminManagedPolicyAttachmentsExclusiveSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSsoadminManagedPolicyAttachmentsExclusive>`.
  RefTo<AwsSsoadminManagedPolicyAttachmentsExclusive> get ref => RefTo.of(this);

  /// Reference to `instance_arn` attribute.
  TfRef<String> get instanceArn =>
      TfRef.attribute<String>(this, 'instance_arn');

  /// Reference to `managed_policy_arns` attribute.
  TfRef<List<String>> get managedPolicyArns =>
      TfRef.attribute<List<String>>(this, 'managed_policy_arns');

  /// Reference to `permission_set_arn` attribute.
  TfRef<String> get permissionSetArn =>
      TfRef.attribute<String>(this, 'permission_set_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
