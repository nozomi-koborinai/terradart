// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_artifact_registry_rule`.
const Set<String> _googleArtifactRegistryRuleSensitive = <String>{};

/// Artifact Registry Rule enum for `action`.
enum ArtifactRegistryRuleAction implements TerraformEnum {
  actionUnspecified('ACTION_UNSPECIFIED'),
  allow('ALLOW'),
  deny('DENY');

  const ArtifactRegistryRuleAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Artifact Registry Rule enum for `operation`.
enum ArtifactRegistryRuleOperation implements TerraformEnum {
  operationUnspecified('OPERATION_UNSPECIFIED'),
  download('DOWNLOAD');

  const ArtifactRegistryRuleOperation(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `condition` block of
/// `google_artifact_registry_rule` (derived from provider schema).
@immutable
final class ArtifactRegistryRuleCondition {
  const ArtifactRegistryRuleCondition({
    this.description,
    required this.expression,
    this.location,
    this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String>? location;

  final TfArg<String>? title;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'expression': expression.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
    if (title != null) 'title': title!.toTfJson(),
  };
}

/// Factory wrapper for `google_artifact_registry_rule`.
///
/// A rule defines the deny or allow action of the operation it applies to and
/// the conditions required for the rule to apply. You can set one rule for an
/// entire repository and one rule for each package within.
///
/// Artifact Registry **repository rule** — allow or deny a repository
/// operation (today: `DOWNLOAD`) for matching packages. Creating a rule
/// alone does not store artifacts or bill storage/egress SKUs.
///
/// You can set one rule for the whole repository and one rule per package
/// (`packageId`). Optional [condition] is a CEL expression; omit it to
/// match all objects.
///
/// Enable `artifactregistry.googleapis.com` via [GoogleProjectService]
/// before apply.
///
/// Example:
/// ```dart
/// GoogleArtifactRegistryRule(
///   localName: 'deny_download',
///   repositoryId: TfArg.literal('terradart-docker'),
///   location: TfArg.literal('asia-northeast1'),
///   ruleId: TfArg.literal('deny-all-downloads'),
///   action: ArtifactRegistryRuleAction.deny,
///   operation: ArtifactRegistryRuleOperation.download,
/// );
/// ```
final class GoogleArtifactRegistryRule extends Resource {
  static const String tfType = 'google_artifact_registry_rule';

  GoogleArtifactRegistryRule({
    required super.localName,
    required TfArg<String> repositoryId,
    TfArg<String>? location,
    required TfArg<String> ruleId,
    TfArg<ArtifactRegistryRuleAction>? action,
    TfArg<ArtifactRegistryRuleOperation>? operation,
    TfArg<String>? packageId,
    ArtifactRegistryRuleCondition? condition,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'repository_id': repositoryId,
           if (location != null) 'location': location,
           'rule_id': ruleId,
           if (action != null) 'action': action,
           if (operation != null) 'operation': operation,
           if (packageId != null) 'package_id': packageId,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleArtifactRegistryRuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
