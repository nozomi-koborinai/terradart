// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codebuild_webhook`.
const Set<String> _awsCodebuildWebhookSensitive = <String>{'secret'};

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

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (excludeMatchedPattern != null)
      'exclude_matched_pattern': excludeMatchedPattern!.toTfJson(),
    'pattern': pattern.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `pull_request_build_policy` block of
/// `aws_codebuild_webhook` (derived from provider schema).
@immutable
final class CodebuildWebhookPullRequestBuildPolicy {
  const CodebuildWebhookPullRequestBuildPolicy({
    this.approverRoles,
    required this.requiresCommentApproval,
  });

  final TfArg<List<Object?>>? approverRoles;

  final TfArg<String> requiresCommentApproval;

  Map<String, Object?> encode() => {
    if (approverRoles != null) 'approver_roles': approverRoles!.toTfJson(),
    'requires_comment_approval': requiresCommentApproval.toTfJson(),
  };
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

  final TfArg<String> scope;

  Map<String, Object?> encode() => {
    if (domain != null) 'domain': domain!.toTfJson(),
    'name': name.toTfJson(),
    'scope': scope.toTfJson(),
  };
}

/// Factory wrapper for `aws_codebuild_webhook`.
final class AwsCodebuildWebhook extends Resource {
  static const String tfType = 'aws_codebuild_webhook';

  AwsCodebuildWebhook({
    required super.localName,
    TfArg<String>? branchFilter,
    TfArg<String>? buildType,
    TfArg<bool>? manualCreation,
    required TfArg<String> projectName,
    TfArg<String>? region,
    List<CodebuildWebhookFilterGroup>? filterGroup,
    CodebuildWebhookPullRequestBuildPolicy? pullRequestBuildPolicy,
    CodebuildWebhookScopeConfiguration? scopeConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (branchFilter != null) 'branch_filter': branchFilter,
           if (buildType != null) 'build_type': buildType,
           if (manualCreation != null) 'manual_creation': manualCreation,
           'project_name': projectName,
           if (region != null) 'region': region,
           if (filterGroup != null)
             'filter_group': TfArg.literal([
               for (final e in filterGroup) e.encode(),
             ]),
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
