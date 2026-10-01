// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;
import '../secure/google_secure_source_manager_instance.dart'
    show GoogleSecureSourceManagerInstance;

/// Sensitive field paths for `google_secure_source_manager_instance_iam_binding`.
const Set<String> _googleSecureSourceManagerInstanceIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_secure_source_manager_instance_iam_binding` (derived from provider schema).
@immutable
final class SecureSourceManagerInstanceIamBindingCondition {
  const SecureSourceManagerInstanceIamBindingCondition({
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

/// Factory wrapper for `google_secure_source_manager_instance_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Secure Source Manager
/// instance.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleSecureSourceManagerInstanceIamMember] for additive grants.
/// Deferred with the never_apply SSM instance (no apply-smoke quickstart).
final class GoogleSecureSourceManagerInstanceIamBinding extends Resource {
  static const String tfType =
      'google_secure_source_manager_instance_iam_binding';

  GoogleSecureSourceManagerInstanceIamBinding(
    super.localName, {
    required RefTo<GoogleSecureSourceManagerInstance> instance,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    TfArg<String>? location,
    TfArg<String>? project,
    SecureSourceManagerInstanceIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_id': instance.encodeAs('instance_id'),
           'role': role,
           'members': members,
           'location': ?(location ?? instance.alsoAs('location')),
           'project': ?(project ?? instance.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecureSourceManagerInstanceIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSecureSourceManagerInstanceIamBinding>`.
  RefTo<GoogleSecureSourceManagerInstanceIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceId => TfRef.attribute<String>(this, 'instance_id');

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
