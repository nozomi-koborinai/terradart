// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_ekm_connection.dart' show GoogleKmsEkmConnection;

/// Sensitive field paths for `google_kms_ekm_connection_iam_member`.
const Set<String> _googleKmsEkmConnectionIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_kms_ekm_connection_iam_member` (derived from provider schema).
@immutable
final class KmsEkmConnectionIamMemberCondition {
  const KmsEkmConnectionIamMemberCondition({
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

/// Factory wrapper for `google_kms_ekm_connection_iam_member`.
final class GoogleKmsEkmConnectionIamMember extends Resource {
  static const String tfType = 'google_kms_ekm_connection_iam_member';

  GoogleKmsEkmConnectionIamMember({
    required super.localName,
    required RefTo<GoogleKmsEkmConnection> connection,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<String>? location,
    TfArg<String>? project,
    KmsEkmConnectionIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': connection.encodeAs('name'),
           'role': role,
           'member': member,
           'location': ?(location ?? connection.alsoAs('location')),
           'project': ?(project ?? connection.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsEkmConnectionIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleKmsEkmConnectionIamMember>`.
  RefTo<GoogleKmsEkmConnectionIamMember> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
