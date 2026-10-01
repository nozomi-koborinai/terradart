// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_iam_workforce_pool.dart' show GoogleIamWorkforcePool;

/// Sensitive field paths for `google_iam_workforce_pool_iam_member`.
const Set<String> _googleIamWorkforcePoolIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_iam_workforce_pool_iam_member` (derived from provider schema).
@immutable
final class IamWorkforcePoolIamMemberCondition {
  const IamWorkforcePoolIamMemberCondition({
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

/// Factory wrapper for `google_iam_workforce_pool_iam_member`.
final class GoogleIamWorkforcePoolIamMember extends Resource {
  static const String tfType = 'google_iam_workforce_pool_iam_member';

  GoogleIamWorkforcePoolIamMember({
    required super.localName,
    required RefTo<GoogleIamWorkforcePool> workforcePool,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<String>? location,
    IamWorkforcePoolIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'workforce_pool_id': workforcePool.encodeAs('workforce_pool_id'),
           'role': role,
           'member': member,
           'location': ?(location ?? workforcePool.alsoAs('location')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIamWorkforcePoolIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIamWorkforcePoolIamMember>`.
  RefTo<GoogleIamWorkforcePoolIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');

  /// Reference to `workforce_pool_id` attribute.
  TfRef<String> get workforcePoolIdRef =>
      TfRef.attribute<String>(this, 'workforce_pool_id');
}
