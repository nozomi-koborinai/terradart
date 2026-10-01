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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'branch_rule_id': branchRuleId,
           'location': location,
           'repository_id': repositoryId,
           'include_pattern': includePattern,
           'disabled': ?disabled,
           'require_pull_request': ?requirePullRequest,
           'minimum_reviews_count': ?minimumReviewsCount,
           'minimum_approvals_count': ?minimumApprovalsCount,
           'require_comments_resolved': ?requireCommentsResolved,
           'require_linear_history': ?requireLinearHistory,
           'allow_stale_reviews': ?allowStaleReviews,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecureSourceManagerBranchRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSecureSourceManagerBranchRule>`.
  RefTo<GoogleSecureSourceManagerBranchRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `allow_stale_reviews` attribute.
  TfRef<bool> get allowStaleReviews =>
      TfRef.attribute<bool>(this, 'allow_stale_reviews');

  /// Reference to `branch_rule_id` attribute.
  TfRef<String> get branchRuleId =>
      TfRef.attribute<String>(this, 'branch_rule_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabled => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `include_pattern` attribute.
  TfRef<String> get includePattern =>
      TfRef.attribute<String>(this, 'include_pattern');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `minimum_approvals_count` attribute.
  TfRef<num> get minimumApprovalsCount =>
      TfRef.attribute<num>(this, 'minimum_approvals_count');

  /// Reference to `minimum_reviews_count` attribute.
  TfRef<num> get minimumReviewsCount =>
      TfRef.attribute<num>(this, 'minimum_reviews_count');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `repository_id` attribute.
  TfRef<String> get repositoryId =>
      TfRef.attribute<String>(this, 'repository_id');

  /// Reference to `require_comments_resolved` attribute.
  TfRef<bool> get requireCommentsResolved =>
      TfRef.attribute<bool>(this, 'require_comments_resolved');

  /// Reference to `require_linear_history` attribute.
  TfRef<bool> get requireLinearHistory =>
      TfRef.attribute<bool>(this, 'require_linear_history');

  /// Reference to `require_pull_request` attribute.
  TfRef<bool> get requirePullRequest =>
      TfRef.attribute<bool>(this, 'require_pull_request');
}
