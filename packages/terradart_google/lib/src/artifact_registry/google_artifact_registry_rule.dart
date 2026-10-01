// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../artifact_registry/google_artifact_registry_repository.dart'
    show GoogleArtifactRegistryRepository;

/// Sensitive field paths for `google_artifact_registry_rule`.
const Set<String> _googleArtifactRegistryRuleSensitive = <String>{};

/// Artifact Registry Rule enum for `action`.
extension type const ArtifactRegistryRuleAction._(TfArg<String> _)
    implements TfArg<String> {
  ArtifactRegistryRuleAction.variable(String name)
    : this._(TfArg.variable(name));
  ArtifactRegistryRuleAction.expression(String template)
    : this._(TfArg.expression(template));
  const ArtifactRegistryRuleAction.arg(TfArg<String> arg) : this._(arg);

  static const actionUnspecified = ArtifactRegistryRuleAction._(
    TfArgLiteral('ACTION_UNSPECIFIED'),
  );
  static const allow = ArtifactRegistryRuleAction._(TfArgLiteral('ALLOW'));
  static const deny = ArtifactRegistryRuleAction._(TfArgLiteral('DENY'));

  static const List<ArtifactRegistryRuleAction> values = [
    actionUnspecified,
    allow,
    deny,
  ];
}

/// Artifact Registry Rule enum for `operation`.
extension type const ArtifactRegistryRuleOperation._(TfArg<String> _)
    implements TfArg<String> {
  ArtifactRegistryRuleOperation.variable(String name)
    : this._(TfArg.variable(name));
  ArtifactRegistryRuleOperation.expression(String template)
    : this._(TfArg.expression(template));
  const ArtifactRegistryRuleOperation.arg(TfArg<String> arg) : this._(arg);

  static const operationUnspecified = ArtifactRegistryRuleOperation._(
    TfArgLiteral('OPERATION_UNSPECIFIED'),
  );
  static const download = ArtifactRegistryRuleOperation._(
    TfArgLiteral('DOWNLOAD'),
  );

  static const List<ArtifactRegistryRuleOperation> values = [
    operationUnspecified,
    download,
  ];
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
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'location': ?location?.toTfJson(),
    'title': ?title?.toTfJson(),
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
///   'deny_download',
///   repositoryId: .literal('terradart-docker'),
///   location: TfArg.literal('asia-northeast1'),
///   ruleId: TfArg.literal('deny-all-downloads'),
///   action: ArtifactRegistryRuleAction.deny,
///   operation: ArtifactRegistryRuleOperation.download,
/// );
/// ```
final class GoogleArtifactRegistryRule extends Resource {
  static const String tfType = 'google_artifact_registry_rule';

  GoogleArtifactRegistryRule(
    super.localName, {
    required RefTo<GoogleArtifactRegistryRepository> repositoryId,
    TfArg<String>? location,
    required TfArg<String> ruleId,
    ArtifactRegistryRuleAction? action,
    ArtifactRegistryRuleOperation? operation,
    TfArg<String>? packageId,
    ArtifactRegistryRuleCondition? condition,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'repository_id': repositoryId.encodeAs('repository_id'),
           'location': ?location,
           'rule_id': ruleId,
           'action': ?action,
           'operation': ?operation,
           'package_id': ?packageId,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleArtifactRegistryRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleArtifactRegistryRule>`.
  RefTo<GoogleArtifactRegistryRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `action` attribute.
  TfRef<String> get action => TfRef.attribute<String>(this, 'action');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `operation` attribute.
  TfRef<String> get operation => TfRef.attribute<String>(this, 'operation');

  /// Reference to `package_id` attribute.
  TfRef<String> get packageId => TfRef.attribute<String>(this, 'package_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `repository_id` attribute.
  TfRef<String> get repositoryId =>
      TfRef.attribute<String>(this, 'repository_id');

  /// Reference to `rule_id` attribute.
  TfRef<String> get ruleId => TfRef.attribute<String>(this, 'rule_id');
}
