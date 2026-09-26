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

  AwsCodecommitApprovalRuleTemplateAssociation({
    required super.localName,
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
           if (region != null) 'region': region,
           'repository_name': repositoryName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCodecommitApprovalRuleTemplateAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
