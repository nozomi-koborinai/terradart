// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;
import '../secure/google_secure_source_manager_instance.dart'
    show GoogleSecureSourceManagerInstance;

/// Sensitive field paths for `google_secure_source_manager_instance_iam_member`.
const Set<String> _googleSecureSourceManagerInstanceIamMemberSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_secure_source_manager_instance_iam_member` (derived from provider schema).
@immutable
final class SecureSourceManagerInstanceIamMemberCondition {
  const SecureSourceManagerInstanceIamMemberCondition({
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

/// Factory wrapper for `google_secure_source_manager_instance_iam_member`.
///
/// Non-authoritative IAM member on a Secure Source Manager instance.
///
/// [instanceId] is the short instance id (path segment), not the full
/// resource name.
final class GoogleSecureSourceManagerInstanceIamMember extends Resource {
  static const String tfType =
      'google_secure_source_manager_instance_iam_member';

  GoogleSecureSourceManagerInstanceIamMember(
    super.localName, {
    required RefTo<GoogleSecureSourceManagerInstance> instance,
    required TfArg<String> role,
    required IamPrincipal member,
    TfArg<String>? location,
    TfArg<String>? project,
    SecureSourceManagerInstanceIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_id': instance.encodeAs('instance_id'),
           'role': role,
           'member': member,
           'location': ?(location ?? instance.alsoAs('location')),
           'project': ?(project ?? instance.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecureSourceManagerInstanceIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSecureSourceManagerInstanceIamMember>`.
  RefTo<GoogleSecureSourceManagerInstanceIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceId => TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
