// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../secret_manager/google_secret_manager_secret.dart'
    show GoogleSecretManagerSecret;

/// Sensitive field paths for `google_secret_manager_secret_iam_binding`.
const Set<String> _googleSecretManagerSecretIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_secret_manager_secret_iam_binding` (derived from provider schema).
@immutable
final class SecretManagerSecretIamBindingCondition {
  const SecretManagerSecretIamBindingCondition({
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

/// Factory wrapper for `google_secret_manager_secret_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Secret Manager
/// secret.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleSecretManagerSecretIamMember] for additive grants.
final class GoogleSecretManagerSecretIamBinding extends Resource {
  static const String tfType = 'google_secret_manager_secret_iam_binding';

  GoogleSecretManagerSecretIamBinding({
    required super.localName,
    required RefTo<GoogleSecretManagerSecret> secret,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    SecretManagerSecretIamBindingCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'secret_id': secret.encodeAs('secret_id'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?(project ?? secret.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecretManagerSecretIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSecretManagerSecretIamBinding>`.
  RefTo<GoogleSecretManagerSecretIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');

  /// Reference to `secret_id` attribute.
  TfRef<String> get secretIdRef => TfRef.attribute<String>(this, 'secret_id');
}
