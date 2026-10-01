// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codecommit_approval_rule_template_association`.
const Set<String> _awsCodecommitApprovalRuleTemplateAssociationSensitive =
    <String>{};

/// Factory wrapper for `aws_codecommit_approval_rule_template_association`.
final class AwsCodecommitApprovalRuleTemplateAssociation extends Resource {
  static const String tfType =
      'aws_codecommit_approval_rule_template_association';

  AwsCodecommitApprovalRuleTemplateAssociation(
    super.localName, {
    required TfArg<String> approvalRuleTemplateName,
    TfArg<String>? region,
    required TfArg<String> repositoryName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'approval_rule_template_name': approvalRuleTemplateName,
           'region': ?region,
           'repository_name': repositoryName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCodecommitApprovalRuleTemplateAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCodecommitApprovalRuleTemplateAssociation>`.
  RefTo<AwsCodecommitApprovalRuleTemplateAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `approval_rule_template_name` attribute.
  TfRef<String> get approvalRuleTemplateName =>
      TfRef.attribute<String>(this, 'approval_rule_template_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `repository_name` attribute.
  TfRef<String> get repositoryName =>
      TfRef.attribute<String>(this, 'repository_name');
}
