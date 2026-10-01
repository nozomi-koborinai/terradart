// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../secret_manager/google_secret_manager_secret.dart'
    show GoogleSecretManagerSecret;

/// Sensitive field paths for `google_secret_manager_secret_iam_member`.
const Set<String> _googleSecretManagerSecretIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_secret_manager_secret_iam_member` (derived from provider schema).
@immutable
final class SecretManagerSecretIamMemberCondition {
  const SecretManagerSecretIamMemberCondition({
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

/// Factory wrapper for `google_secret_manager_secret_iam_member`.
final class GoogleSecretManagerSecretIamMember extends Resource {
  static const String tfType = 'google_secret_manager_secret_iam_member';

  GoogleSecretManagerSecretIamMember({
    required super.localName,
    required RefTo<GoogleSecretManagerSecret> secret,
    required TfArg<String> role,
    required TfArg<String> member,
    SecretManagerSecretIamMemberCondition? condition,
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
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?(project ?? secret.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecretManagerSecretIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSecretManagerSecretIamMember>`.
  RefTo<GoogleSecretManagerSecretIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');

  /// Reference to `secret_id` attribute.
  TfRef<String> get secretIdRef => TfRef.attribute<String>(this, 'secret_id');
}
