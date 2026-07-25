// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_secure_source_manager_branch_rule`.
const Set<String> _googleSecureSourceManagerBranchRuleSensitive = <String>{};

/// Factory wrapper for `google_secure_source_manager_branch_rule`.
///
/// BranchRule is the protection rule to enforce pre-defined rules on designated
/// branches within a repository.
///
/// Secure Source Manager **branch rule** — branch protection / review
/// requirements on a repository.
///
/// **Cost / apply:** gcp-cost: no branch-rule SKU under Secure Source
/// Manager `ADD4-3782-815A` (instance Fixed Pricing only, e.g.
/// `9B40-B4AA-D8EE` **$1000/mo**). billing-behavior: requires a
/// never_apply [GoogleSecureSourceManagerInstance] (+ repository).
/// Debt-only on `terradart-validate`. **Never** wire into apply-smoke.
final class GoogleSecureSourceManagerBranchRule extends Resource {
  static const String tfType = 'google_secure_source_manager_branch_rule';

  GoogleSecureSourceManagerBranchRule({
    required super.localName,
    required TfArg<String> branchRuleId,
    required TfArg<String> location,
    required TfArg<String> repositoryId,
    required TfArg<String> includePattern,
    TfArg<bool>? disabled,
    TfArg<bool>? requirePullRequest,
    TfArg<num>? minimumReviewsCount,
    TfArg<num>? minimumApprovalsCount,
    TfArg<bool>? requireCommentsResolved,
    TfArg<bool>? requireLinearHistory,
    TfArg<bool>? allowStaleReviews,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'branch_rule_id': branchRuleId,
           'location': location,
           'repository_id': repositoryId,
           'include_pattern': includePattern,
           if (disabled != null) 'disabled': disabled,
           if (requirePullRequest != null)
             'require_pull_request': requirePullRequest,
           if (minimumReviewsCount != null)
             'minimum_reviews_count': minimumReviewsCount,
           if (minimumApprovalsCount != null)
             'minimum_approvals_count': minimumApprovalsCount,
           if (requireCommentsResolved != null)
             'require_comments_resolved': requireCommentsResolved,
           if (requireLinearHistory != null)
             'require_linear_history': requireLinearHistory,
           if (allowStaleReviews != null)
             'allow_stale_reviews': allowStaleReviews,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecureSourceManagerBranchRuleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `branch_rule_id` attribute.
  TfRef<String> get branchRuleIdRef =>
      TfRef.attribute<String>(this, 'branch_rule_id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
