// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_iam_workforce_pool.dart' show GoogleIamWorkforcePool;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_iam_workforce_pool_iam_binding`.
const Set<String> _googleIamWorkforcePoolIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_iam_workforce_pool_iam_binding` (derived from provider schema).
@immutable
final class IamWorkforcePoolIamBindingCondition {
  const IamWorkforcePoolIamBindingCondition({
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

/// Factory wrapper for `google_iam_workforce_pool_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Workforce Identity Federation pool.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleIamWorkforcePoolIamMember] for additive grants.
final class GoogleIamWorkforcePoolIamBinding extends Resource {
  static const String tfType = 'google_iam_workforce_pool_iam_binding';

  GoogleIamWorkforcePoolIamBinding({
    required super.localName,
    required RefTo<GoogleIamWorkforcePool> workforcePool,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    TfArg<String>? location,
    IamWorkforcePoolIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'workforce_pool_id': workforcePool.encodeAs('workforce_pool_id'),
           'role': role,
           'members': members,
           'location': ?(location ?? workforcePool.alsoAs('location')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIamWorkforcePoolIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIamWorkforcePoolIamBinding>`.
  RefTo<GoogleIamWorkforcePoolIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `workforce_pool_id` attribute.
  TfRef<String> get workforcePoolId =>
      TfRef.attribute<String>(this, 'workforce_pool_id');
}
