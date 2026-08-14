// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_deny_policy`.
const Set<String> _googleIamDenyPolicySensitive = <String>{};

/// Typed helper for the `rules` block of
/// `google_iam_deny_policy` (derived from provider schema).
@immutable
final class IamDenyPolicyRules {
  const IamDenyPolicyRules({this.description, this.denyRule});

  final TfArg<String>? description;

  final IamDenyPolicyRulesDenyRule? denyRule;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (denyRule != null) 'deny_rule': denyRule!.encode(),
  };
}

/// Typed helper for the `rules.deny_rule` block of
/// `google_iam_deny_policy` (derived from provider schema).
@immutable
final class IamDenyPolicyRulesDenyRule {
  const IamDenyPolicyRulesDenyRule({
    this.deniedPermissions,
    this.deniedPrincipals,
    this.exceptionPermissions,
    this.exceptionPrincipals,
    this.denialCondition,
  });

  final TfArg<List<Object?>>? deniedPermissions;

  final TfArg<List<Object?>>? deniedPrincipals;

  final TfArg<List<Object?>>? exceptionPermissions;

  final TfArg<List<Object?>>? exceptionPrincipals;

  final IamDenyPolicyRulesDenyRuleDenialCondition? denialCondition;

  Map<String, Object?> encode() => {
    if (deniedPermissions != null)
      'denied_permissions': deniedPermissions!.toTfJson(),
    if (deniedPrincipals != null)
      'denied_principals': deniedPrincipals!.toTfJson(),
    if (exceptionPermissions != null)
      'exception_permissions': exceptionPermissions!.toTfJson(),
    if (exceptionPrincipals != null)
      'exception_principals': exceptionPrincipals!.toTfJson(),
    if (denialCondition != null) 'denial_condition': denialCondition!.encode(),
  };
}

/// Typed helper for the `rules.deny_rule.denial_condition` block of
/// `google_iam_deny_policy` (derived from provider schema).
@immutable
final class IamDenyPolicyRulesDenyRuleDenialCondition {
  const IamDenyPolicyRulesDenyRuleDenialCondition({
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

/// Factory wrapper for `google_iam_deny_policy`.
///
/// Represents a collection of denial policies to apply to a given resource.
///
/// Project / folder / organization **IAM deny policy** — a named set of
/// deny rules attached to [parent]. Deny is evaluated before allow and
/// can block even Owner / `roles/owner`.
///
/// [parent] is the URL-encoded full resource name, for example
/// `Uri.encodeComponent('cloudresourcemanager.googleapis.com/projects/$projectId')`.
/// [rules] requires at least one entry. Prefer denying an in-stack
/// service account and a narrow permission; do not deny `public:all`
/// or project-admin verbs (`projects.update` / `projects.delete`).
///
/// Enable `iam.googleapis.com` via [GoogleProjectService] before apply.
/// Set [deletionPolicy] to `DELETE` so `terraform destroy` removes the
/// policy (the default). `ABANDON` leaves it in the project.
///
/// Example:
/// ```dart
/// GoogleIamDenyPolicy(
///   localName: 'storage_get_deny',
///   parent: TfArg.literal(
///     Uri.encodeComponent(
///       'cloudresourcemanager.googleapis.com/projects/$projectId',
///     ),
///   ),
///   name: TfArg.literal('terradart-storage-get-deny'),
///   rules: [
///     IamDenyPolicyRules(
///       denyRule: IamDenyPolicyRulesDenyRule(
///         deniedPrincipals: TfArg.literal([
///           'principal://iam.googleapis.com/projects/-/serviceAccounts/${denied.email.interpolation}',
///         ]),
///         deniedPermissions: TfArg.literal([
///           'storage.googleapis.com/objects.get',
///         ]),
///       ),
///     ),
///   ],
/// );
/// ```
final class GoogleIamDenyPolicy extends Resource {
  static const String tfType = 'google_iam_deny_policy';

  GoogleIamDenyPolicy({
    required super.localName,
    required TfArg<String> parent,
    required TfArg<String> name,
    TfArg<String>? displayName,
    required List<IamDenyPolicyRules> rules,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'parent': parent,
           'name': name,
           if (displayName != null) 'display_name': displayName,
           'rules': TfArg.literal([for (final e in rules) e.encode()]),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIamDenyPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
