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
///
/// Pick one with a dot shorthand: `.branchFilter(...)`.
sealed class CodebuildWebhookTrigger {
  const CodebuildWebhookTrigger();

  /// Sets `branch_filter`.
  const factory CodebuildWebhookTrigger.branchFilter(
    TfArg<String> branchFilter,
  ) = CodebuildWebhookTriggerBranchFilter;

  /// Sets `filter_group`.
  const factory CodebuildWebhookTrigger.filterGroup(
    List<CodebuildWebhookFilterGroup> filterGroup,
  ) = CodebuildWebhookTriggerFilterGroup;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CodebuildWebhookTrigger.branchFilter] choice: sets `branch_filter`.
final class CodebuildWebhookTriggerBranchFilter
    extends CodebuildWebhookTrigger {
  const CodebuildWebhookTriggerBranchFilter(this.branchFilter);

  final TfArg<String> branchFilter;

  @override
  String get blockKey => 'branch_filter';

  @override
  Map<String, Object?> encode() => {'branch_filter': branchFilter.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'branch_filter': branchFilter};
}

/// The [CodebuildWebhookTrigger.filterGroup] choice: sets `filter_group`.
final class CodebuildWebhookTriggerFilterGroup extends CodebuildWebhookTrigger {
  const CodebuildWebhookTriggerFilterGroup(this.filterGroup);

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

  final List<CodebuildWebhookFilter>? filter;

  Map<String, Object?> encode() => {
    if (filter != null) 'filter': [for (final e in filter!) e.encode()],
  };
}

/// Typed helper for the `filter_group.filter` block of
/// `aws_codebuild_webhook` (derived from provider schema).
@immutable
final class CodebuildWebhookFilter {
  const CodebuildWebhookFilter({
    this.excludeMatchedPattern,
    required this.pattern,
    required this.type,
  });

  final TfArg<bool>? excludeMatchedPattern;

  final TfArg<String> pattern;

  final TfArg<CodebuildWebhookType> type;

  Map<String, Object?> encode() => {
    'exclude_matched_pattern': ?excludeMatchedPattern?.toTfJson(),
    'pattern': pattern.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum CodebuildWebhookType implements TerraformEnum {
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

  const CodebuildWebhookType(this.terraformValue);
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

  final List<TfArg<CodebuildWebhookApproverRoles>>? approverRoles;

  final TfArg<CodebuildWebhookRequiresCommentApproval> requiresCommentApproval;

  Map<String, Object?> encode() => {
    if (approverRoles != null)
      'approver_roles': [for (final e in approverRoles!) e.toTfJson()],
    'requires_comment_approval': requiresCommentApproval.toTfJson(),
  };
}

/// `approver_roles` — derived from the provider schema description.
enum CodebuildWebhookApproverRoles implements TerraformEnum {
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

  const CodebuildWebhookApproverRoles(this.terraformValue);
  @override
  final String terraformValue;
}

/// `requires_comment_approval` — derived from the provider schema description.
enum CodebuildWebhookRequiresCommentApproval implements TerraformEnum {
  disabled('DISABLED'),
  allPullRequests('ALL_PULL_REQUESTS'),
  forkPullRequests('FORK_PULL_REQUESTS');

  const CodebuildWebhookRequiresCommentApproval(this.terraformValue);
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

  final TfArg<CodebuildWebhookScope> scope;

  Map<String, Object?> encode() => {
    'domain': ?domain?.toTfJson(),
    'name': name.toTfJson(),
    'scope': scope.toTfJson(),
  };
}

/// `scope` — derived from the provider schema description.
enum CodebuildWebhookScope implements TerraformEnum {
  githubOrganization('GITHUB_ORGANIZATION'),
  githubGlobal('GITHUB_GLOBAL'),
  gitlabGroup('GITLAB_GROUP');

  const CodebuildWebhookScope(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_codebuild_webhook`.
final class AwsCodebuildWebhook extends Resource {
  static const String tfType = 'aws_codebuild_webhook';

  AwsCodebuildWebhook({
    required super.localName,
    CodebuildWebhookTrigger? trigger,
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
           ...?trigger?.argMap,
           'build_type': ?buildType,
           'manual_creation': ?manualCreation,
           'project_name': projectName,
           'region': ?region,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCodebuildWebhook>`.
  RefTo<AwsCodebuildWebhook> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `payload_url` attribute.
  TfRef<String> get payloadUrl => TfRef.attribute<String>(this, 'payload_url');

  /// Reference to `secret` attribute.
  TfRef<String> get secret => TfRef.attribute<String>(this, 'secret');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

  /// Reference to `branch_filter` attribute.
  TfRef<String> get branchFilterRef =>
      TfRef.attribute<String>(this, 'branch_filter');

  /// Reference to `build_type` attribute.
  TfRef<String> get buildTypeRef => TfRef.attribute<String>(this, 'build_type');

  /// Reference to `manual_creation` attribute.
  TfRef<bool> get manualCreationRef =>
      TfRef.attribute<bool>(this, 'manual_creation');

  /// Reference to `project_name` attribute.
  TfRef<String> get projectNameRef =>
      TfRef.attribute<String>(this, 'project_name');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
