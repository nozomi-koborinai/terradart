// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codecommit_approval_rule_template`.
const Set<String> _awsCodecommitApprovalRuleTemplateSensitive = <String>{};

/// Factory wrapper for `aws_codecommit_approval_rule_template`.
final class AwsCodecommitApprovalRuleTemplate extends Resource {
  static const String tfType = 'aws_codecommit_approval_rule_template';

  AwsCodecommitApprovalRuleTemplate({
    required super.localName,
    required TfArg<String> content,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'content': content,
           'description': ?description,
           'name': name,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCodecommitApprovalRuleTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCodecommitApprovalRuleTemplate>`.
  RefTo<AwsCodecommitApprovalRuleTemplate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `approval_rule_template_id` attribute.
  TfRef<String> get approvalRuleTemplateId =>
      TfRef.attribute<String>(this, 'approval_rule_template_id');

  /// Reference to `creation_date` attribute.
  TfRef<String> get creationDate =>
      TfRef.attribute<String>(this, 'creation_date');

  /// Reference to `last_modified_date` attribute.
  TfRef<String> get lastModifiedDate =>
      TfRef.attribute<String>(this, 'last_modified_date');

  /// Reference to `last_modified_user` attribute.
  TfRef<String> get lastModifiedUser =>
      TfRef.attribute<String>(this, 'last_modified_user');

  /// Reference to `rule_content_sha256` attribute.
  TfRef<String> get ruleContentSha256 =>
      TfRef.attribute<String>(this, 'rule_content_sha256');

  /// Reference to `content` attribute.
  TfRef<String> get contentRef => TfRef.attribute<String>(this, 'content');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
