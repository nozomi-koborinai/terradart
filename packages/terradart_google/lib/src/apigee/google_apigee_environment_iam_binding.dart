// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_environment_iam_binding`.
const Set<String> _googleApigeeEnvironmentIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_apigee_environment_iam_binding` (derived from provider schema).
@immutable
final class ApigeeEnvironmentIamBindingCondition {
  const ApigeeEnvironmentIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_apigee_environment_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on an Apigee environment.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleApigeeEnvironmentIamMember] for additive grants.
final class GoogleApigeeEnvironmentIamBinding extends Resource {
  static const String tfType = 'google_apigee_environment_iam_binding';

  GoogleApigeeEnvironmentIamBinding({
    required super.localName,
    required TfArg<String> orgId,
    required TfArg<String> envId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    ApigeeEnvironmentIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'org_id': orgId,
           'env_id': envId,
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleApigeeEnvironmentIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApigeeEnvironmentIamBinding>`.
  RefTo<GoogleApigeeEnvironmentIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `env_id` attribute.
  TfRef<String> get envIdRef => TfRef.attribute<String>(this, 'env_id');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgIdRef => TfRef.attribute<String>(this, 'org_id');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
