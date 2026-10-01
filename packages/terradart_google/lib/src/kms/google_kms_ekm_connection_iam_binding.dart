// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;
import '../kms/google_kms_ekm_connection.dart' show GoogleKmsEkmConnection;

/// Sensitive field paths for `google_kms_ekm_connection_iam_binding`.
const Set<String> _googleKmsEkmConnectionIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_kms_ekm_connection_iam_binding` (derived from provider schema).
@immutable
final class KmsEkmConnectionIamBindingCondition {
  const KmsEkmConnectionIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_kms_ekm_connection_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud KMS EKM
/// connection.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleKmsEkmConnectionIamMember] for additive grants.
final class GoogleKmsEkmConnectionIamBinding extends Resource {
  static const String tfType = 'google_kms_ekm_connection_iam_binding';

  GoogleKmsEkmConnectionIamBinding(
    super.localName, {
    required RefTo<GoogleKmsEkmConnection> connection,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    TfArg<String>? location,
    TfArg<String>? project,
    KmsEkmConnectionIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': connection.encodeAs('name'),
           'role': role,
           'members': members,
           'location': ?(location ?? connection.alsoAs('location')),
           'project': ?(project ?? connection.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsEkmConnectionIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleKmsEkmConnectionIamBinding>`.
  RefTo<GoogleKmsEkmConnectionIamBinding> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
