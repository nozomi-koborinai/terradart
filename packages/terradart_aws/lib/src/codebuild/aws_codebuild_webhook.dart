// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codebuild_webhook`.
const Set<String> _awsCodebuildWebhookSensitive = <String>{'secret'};

/// Codebuild Webhook Build enum for `build_type`.
enum CodebuildWebhookBuildType implements TerraformEnum {
  build('BUILD'),
  buildBatch('BUILD_BATCH'),
  runnerBuildkiteBuild('RUNNER_BUILDKITE_BUILD');

  const CodebuildWebhookBuildType(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `branch_filter`, `filter_group` on `aws_codebuild_webhook`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
sealed class CodebuildWebhookBranchFilterOrFilterGroup {
  const CodebuildWebhookBranchFilterOrFilterGroup();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `branch_filter` (one of the [CodebuildWebhookBranchFilterOrFilterGroup] choices).
final class CodebuildWebhookBranchFilterOption
    extends CodebuildWebhookBranchFilterOrFilterGroup {
  const CodebuildWebhookBranchFilterOption({required this.branchFilter});

  final TfArg<String> branchFilter;

  @override
  String get blockKey => 'branch_filter';

  @override
  Map<String, Object?> encode() => {'branch_filter': branchFilter.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'branch_filter': branchFilter};
}

/// Sets `filter_group` (one of the [CodebuildWebhookBranchFilterOrFilterGroup] choices).
final class CodebuildWebhookFilterGroupOption
    extends CodebuildWebhookBranchFilterOrFilterGroup {
  const CodebuildWebhookFilterGroupOption({required this.filterGroup});

  final List<CodebuildWebhookFilterGroup> filterGroup;

  @override
  String get blockKey => 'filter_group';

  @override
  Map<String, Object?> encode() => {
    'filter_group': [for (final e in filterGroup) e.encode()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'filter_group': TfArg.literal([for (final e in filterGroup) e.encode()]),
  };
}

/// Typed helper for the `filter_group` block of
/// `aws_codebuild_webhook` (derived from provider schema).
@immutable
final class CodebuildWebhookFilterGroup {
  const CodebuildWebhookFilterGroup({this.filter});

  final List<CodebuildWebhookFilterGroupFilter>? filter;

  Map<String, Object?> encode() => {
    if (filter != null) 'filter': [for (final e in filter!) e.encode()],
  };
}

/// Typed helper for the `filter_group.filter` block of
/// `aws_codebuild_webhook` (derived from provider schema).
@immutable
final class CodebuildWebhookFilterGroupFilter {
  const CodebuildWebhookFilterGroupFilter({
    this.excludeMatchedPattern,
    required this.pattern,
    required this.type,
  });

  final TfArg<bool>? excludeMatchedPattern;

  final TfArg<String> pattern;

  final TfArg<CodebuildWebhookFilterGroupFilterType> type;

  Map<String, Object?> encode() => {
    if (excludeMatchedPattern != null)
      'exclude_matched_pattern': excludeMatchedPattern!.toTfJson(),
    'pattern': pattern.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum CodebuildWebhookFilterGroupFilterType implements TerraformEnum {
  event('EVENT'),
  baseRef('BASE_REF'),
  headRef('HEAD_REF'),
  actorAccountId('ACTOR_ACCOUNT_ID'),
  filePath('FILE_PATH'),
  commitMessage('COMMIT_MESSAGE'),
  workflowName('WORKFLOW_NAME'),
  tagName('TAG_NAME'),
  releaseName('RELEASE_NAME'),
  repositoryName('REPOSITORY_NAME'),
  organizationName('ORGANIZATION_NAME');

  const CodebuildWebhookFilterGroupFilterType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `pull_request_build_policy` block of
/// `aws_codebuild_webhook` (derived from provider schema).
@immutable
final class CodebuildWebhookPullRequestBuildPolicy {
  const CodebuildWebhookPullRequestBuildPolicy({
    this.approverRoles,
    required this.requiresCommentApproval,
  });

  final List<TfArg<CodebuildWebhookPullRequestBuildPolicyApproverRoles>>?
  approverRoles;

  final TfArg<CodebuildWebhookPullRequestBuildPolicyRequiresCommentApproval>
  requiresCommentApproval;

  Map<String, Object?> encode() => {
    if (approverRoles != null)
      'approver_roles': [for (final e in approverRoles!) e.toTfJson()],
    'requires_comment_approval': requiresCommentApproval.toTfJson(),
  };
}

/// `approver_roles` — derived from the provider schema description.
enum CodebuildWebhookPullRequestBuildPolicyApproverRoles
    implements TerraformEnum {
  githubRead('GITHUB_READ'),
  githubTriage('GITHUB_TRIAGE'),
  githubWrite('GITHUB_WRITE'),
  githubMaintain('GITHUB_MAINTAIN'),
  githubAdmin('GITHUB_ADMIN'),
  gitlabGuest('GITLAB_GUEST'),
  gitlabPlanner('GITLAB_PLANNER'),
  gitlabReporter('GITLAB_REPORTER'),
  gitlabDeveloper('GITLAB_DEVELOPER'),
  gitlabMaintainer('GITLAB_MAINTAINER'),
  gitlabOwner('GITLAB_OWNER'),
  bitbucketRead('BITBUCKET_READ'),
  bitbucketWrite('BITBUCKET_WRITE'),
  bitbucketAdmin('BITBUCKET_ADMIN');

  const CodebuildWebhookPullRequestBuildPolicyApproverRoles(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `requires_comment_approval` — derived from the provider schema description.
enum CodebuildWebhookPullRequestBuildPolicyRequiresCommentApproval
    implements TerraformEnum {
  disabled('DISABLED'),
  allPullRequests('ALL_PULL_REQUESTS'),
  forkPullRequests('FORK_PULL_REQUESTS');

  const CodebuildWebhookPullRequestBuildPolicyRequiresCommentApproval(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `scope_configuration` block of
/// `aws_codebuild_webhook` (derived from provider schema).
@immutable
final class CodebuildWebhookScopeConfiguration {
  const CodebuildWebhookScopeConfiguration({
    this.domain,
    required this.name,
    required this.scope,
  });

  final TfArg<String>? domain;

  final TfArg<String> name;

  final TfArg<CodebuildWebhookScopeConfigurationScope> scope;

  Map<String, Object?> encode() => {
    if (domain != null) 'domain': domain!.toTfJson(),
    'name': name.toTfJson(),
    'scope': scope.toTfJson(),
  };
}

/// `scope` — derived from the provider schema description.
enum CodebuildWebhookScopeConfigurationScope implements TerraformEnum {
  githubOrganization('GITHUB_ORGANIZATION'),
  githubGlobal('GITHUB_GLOBAL'),
  gitlabGroup('GITLAB_GROUP');

  const CodebuildWebhookScopeConfigurationScope(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_codebuild_webhook`.
final class AwsCodebuildWebhook extends Resource {
  static const String tfType = 'aws_codebuild_webhook';

  AwsCodebuildWebhook({
    required super.localName,
    CodebuildWebhookBranchFilterOrFilterGroup? branchFilterOrFilterGroup,
    TfArg<CodebuildWebhookBuildType>? buildType,
    TfArg<bool>? manualCreation,
    required TfArg<String> projectName,
    TfArg<String>? region,
    CodebuildWebhookPullRequestBuildPolicy? pullRequestBuildPolicy,
    CodebuildWebhookScopeConfiguration? scopeConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?branchFilterOrFilterGroup?.argMap,
           if (buildType != null) 'build_type': buildType,
           if (manualCreation != null) 'manual_creation': manualCreation,
           'project_name': projectName,
           if (region != null) 'region': region,
           if (pullRequestBuildPolicy != null)
             'pull_request_build_policy': TfArg.literal(
               pullRequestBuildPolicy.encode(),
             ),
           if (scopeConfiguration != null)
             'scope_configuration': TfArg.literal(scopeConfiguration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodebuildWebhookSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `payload_url` attribute.
  TfRef<String> get payloadUrl => TfRef.attribute<String>(this, 'payload_url');

  /// Reference to `secret` attribute.
  TfRef<String> get secret => TfRef.attribute<String>(this, 'secret');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');
}
