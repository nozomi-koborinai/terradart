// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codebuild_webhook`.
const Set<String> _awsCodebuildWebhookSensitive = <String>{'secret'};

/// Codebuild Webhook Build enum for `build_type`.
extension type const CodebuildWebhookBuildType._(TfArg<String> _)
    implements TfArg<String> {
  CodebuildWebhookBuildType.variable(String name)
    : this._(TfArg.variable(name));
  CodebuildWebhookBuildType.expression(String template)
    : this._(TfArg.expression(template));
  const CodebuildWebhookBuildType.arg(TfArg<String> arg) : this._(arg);

  static const build = CodebuildWebhookBuildType._(TfArgLiteral('BUILD'));
  static const buildBatch = CodebuildWebhookBuildType._(
    TfArgLiteral('BUILD_BATCH'),
  );
  static const runnerBuildkiteBuild = CodebuildWebhookBuildType._(
    TfArgLiteral('RUNNER_BUILDKITE_BUILD'),
  );

  static const List<CodebuildWebhookBuildType> values = [
    build,
    buildBatch,
    runnerBuildkiteBuild,
  ];
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

  final CodebuildWebhookType type;

  Map<String, Object?> encode() => {
    'exclude_matched_pattern': ?excludeMatchedPattern?.toTfJson(),
    'pattern': pattern.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const CodebuildWebhookType._(TfArg<String> _)
    implements TfArg<String> {
  CodebuildWebhookType.variable(String name) : this._(TfArg.variable(name));
  CodebuildWebhookType.expression(String template)
    : this._(TfArg.expression(template));
  const CodebuildWebhookType.arg(TfArg<String> arg) : this._(arg);

  static const event = CodebuildWebhookType._(TfArgLiteral('EVENT'));
  static const baseRef = CodebuildWebhookType._(TfArgLiteral('BASE_REF'));
  static const headRef = CodebuildWebhookType._(TfArgLiteral('HEAD_REF'));
  static const actorAccountId = CodebuildWebhookType._(
    TfArgLiteral('ACTOR_ACCOUNT_ID'),
  );
  static const filePath = CodebuildWebhookType._(TfArgLiteral('FILE_PATH'));
  static const commitMessage = CodebuildWebhookType._(
    TfArgLiteral('COMMIT_MESSAGE'),
  );
  static const workflowName = CodebuildWebhookType._(
    TfArgLiteral('WORKFLOW_NAME'),
  );
  static const tagName = CodebuildWebhookType._(TfArgLiteral('TAG_NAME'));
  static const releaseName = CodebuildWebhookType._(
    TfArgLiteral('RELEASE_NAME'),
  );
  static const repositoryName = CodebuildWebhookType._(
    TfArgLiteral('REPOSITORY_NAME'),
  );
  static const organizationName = CodebuildWebhookType._(
    TfArgLiteral('ORGANIZATION_NAME'),
  );

  static const List<CodebuildWebhookType> values = [
    event,
    baseRef,
    headRef,
    actorAccountId,
    filePath,
    commitMessage,
    workflowName,
    tagName,
    releaseName,
    repositoryName,
    organizationName,
  ];
}

/// Typed helper for the `pull_request_build_policy` block of
/// `aws_codebuild_webhook` (derived from provider schema).
@immutable
final class CodebuildWebhookPullRequestBuildPolicy {
  const CodebuildWebhookPullRequestBuildPolicy({
    this.approverRoles,
    required this.requiresCommentApproval,
  });

  final List<CodebuildWebhookApproverRoles>? approverRoles;

  final CodebuildWebhookRequiresCommentApproval requiresCommentApproval;

  Map<String, Object?> encode() => {
    if (approverRoles != null)
      'approver_roles': [for (final e in approverRoles!) e.toTfJson()],
    'requires_comment_approval': requiresCommentApproval.toTfJson(),
  };
}

/// `approver_roles` — derived from the provider schema description.
extension type const CodebuildWebhookApproverRoles._(TfArg<String> _)
    implements TfArg<String> {
  CodebuildWebhookApproverRoles.variable(String name)
    : this._(TfArg.variable(name));
  CodebuildWebhookApproverRoles.expression(String template)
    : this._(TfArg.expression(template));
  const CodebuildWebhookApproverRoles.arg(TfArg<String> arg) : this._(arg);

  static const githubRead = CodebuildWebhookApproverRoles._(
    TfArgLiteral('GITHUB_READ'),
  );
  static const githubTriage = CodebuildWebhookApproverRoles._(
    TfArgLiteral('GITHUB_TRIAGE'),
  );
  static const githubWrite = CodebuildWebhookApproverRoles._(
    TfArgLiteral('GITHUB_WRITE'),
  );
  static const githubMaintain = CodebuildWebhookApproverRoles._(
    TfArgLiteral('GITHUB_MAINTAIN'),
  );
  static const githubAdmin = CodebuildWebhookApproverRoles._(
    TfArgLiteral('GITHUB_ADMIN'),
  );
  static const gitlabGuest = CodebuildWebhookApproverRoles._(
    TfArgLiteral('GITLAB_GUEST'),
  );
  static const gitlabPlanner = CodebuildWebhookApproverRoles._(
    TfArgLiteral('GITLAB_PLANNER'),
  );
  static const gitlabReporter = CodebuildWebhookApproverRoles._(
    TfArgLiteral('GITLAB_REPORTER'),
  );
  static const gitlabDeveloper = CodebuildWebhookApproverRoles._(
    TfArgLiteral('GITLAB_DEVELOPER'),
  );
  static const gitlabMaintainer = CodebuildWebhookApproverRoles._(
    TfArgLiteral('GITLAB_MAINTAINER'),
  );
  static const gitlabOwner = CodebuildWebhookApproverRoles._(
    TfArgLiteral('GITLAB_OWNER'),
  );
  static const bitbucketRead = CodebuildWebhookApproverRoles._(
    TfArgLiteral('BITBUCKET_READ'),
  );
  static const bitbucketWrite = CodebuildWebhookApproverRoles._(
    TfArgLiteral('BITBUCKET_WRITE'),
  );
  static const bitbucketAdmin = CodebuildWebhookApproverRoles._(
    TfArgLiteral('BITBUCKET_ADMIN'),
  );

  static const List<CodebuildWebhookApproverRoles> values = [
    githubRead,
    githubTriage,
    githubWrite,
    githubMaintain,
    githubAdmin,
    gitlabGuest,
    gitlabPlanner,
    gitlabReporter,
    gitlabDeveloper,
    gitlabMaintainer,
    gitlabOwner,
    bitbucketRead,
    bitbucketWrite,
    bitbucketAdmin,
  ];
}

/// `requires_comment_approval` — derived from the provider schema description.
extension type const CodebuildWebhookRequiresCommentApproval._(TfArg<String> _)
    implements TfArg<String> {
  CodebuildWebhookRequiresCommentApproval.variable(String name)
    : this._(TfArg.variable(name));
  CodebuildWebhookRequiresCommentApproval.expression(String template)
    : this._(TfArg.expression(template));
  const CodebuildWebhookRequiresCommentApproval.arg(TfArg<String> arg)
    : this._(arg);

  static const disabled = CodebuildWebhookRequiresCommentApproval._(
    TfArgLiteral('DISABLED'),
  );
  static const allPullRequests = CodebuildWebhookRequiresCommentApproval._(
    TfArgLiteral('ALL_PULL_REQUESTS'),
  );
  static const forkPullRequests = CodebuildWebhookRequiresCommentApproval._(
    TfArgLiteral('FORK_PULL_REQUESTS'),
  );

  static const List<CodebuildWebhookRequiresCommentApproval> values = [
    disabled,
    allPullRequests,
    forkPullRequests,
  ];
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

  final CodebuildWebhookScope scope;

  Map<String, Object?> encode() => {
    'domain': ?domain?.toTfJson(),
    'name': name.toTfJson(),
    'scope': scope.toTfJson(),
  };
}

/// `scope` — derived from the provider schema description.
extension type const CodebuildWebhookScope._(TfArg<String> _)
    implements TfArg<String> {
  CodebuildWebhookScope.variable(String name) : this._(TfArg.variable(name));
  CodebuildWebhookScope.expression(String template)
    : this._(TfArg.expression(template));
  const CodebuildWebhookScope.arg(TfArg<String> arg) : this._(arg);

  static const githubOrganization = CodebuildWebhookScope._(
    TfArgLiteral('GITHUB_ORGANIZATION'),
  );
  static const githubGlobal = CodebuildWebhookScope._(
    TfArgLiteral('GITHUB_GLOBAL'),
  );
  static const gitlabGroup = CodebuildWebhookScope._(
    TfArgLiteral('GITLAB_GROUP'),
  );

  static const List<CodebuildWebhookScope> values = [
    githubOrganization,
    githubGlobal,
    gitlabGroup,
  ];
}

/// Factory wrapper for `aws_codebuild_webhook`.
final class AwsCodebuildWebhook extends Resource {
  static const String tfType = 'aws_codebuild_webhook';

  AwsCodebuildWebhook(
    super.localName, {
    CodebuildWebhookTrigger? trigger,
    CodebuildWebhookBuildType? buildType,
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
  TfRef<String> get branchFilter =>
      TfRef.attribute<String>(this, 'branch_filter');

  /// Reference to `build_type` attribute.
  TfRef<String> get buildType => TfRef.attribute<String>(this, 'build_type');

  /// Reference to `manual_creation` attribute.
  TfRef<bool> get manualCreation =>
      TfRef.attribute<bool>(this, 'manual_creation');

  /// Reference to `project_name` attribute.
  TfRef<String> get projectName =>
      TfRef.attribute<String>(this, 'project_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
