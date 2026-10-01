// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_organizations_policy_attachment`.
const Set<String> _awsOrganizationsPolicyAttachmentSensitive = <String>{};

/// Factory wrapper for `aws_organizations_policy_attachment`.
final class AwsOrganizationsPolicyAttachment extends Resource {
  static const String tfType = 'aws_organizations_policy_attachment';

  AwsOrganizationsPolicyAttachment(
    super.localName, {
    required TfArg<String> policyId,
    TfArg<bool>? skipDestroy,
    required TfArg<String> targetId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy_id': policyId,
           'skip_destroy': ?skipDestroy,
           'target_id': targetId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOrganizationsPolicyAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsOrganizationsPolicyAttachment>`.
  RefTo<AwsOrganizationsPolicyAttachment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `policy_id` attribute.
  TfRef<String> get policyId => TfRef.attribute<String>(this, 'policy_id');

  /// Reference to `skip_destroy` attribute.
  TfRef<bool> get skipDestroy => TfRef.attribute<bool>(this, 'skip_destroy');

  /// Reference to `target_id` attribute.
  TfRef<String> get targetId => TfRef.attribute<String>(this, 'target_id');
}
