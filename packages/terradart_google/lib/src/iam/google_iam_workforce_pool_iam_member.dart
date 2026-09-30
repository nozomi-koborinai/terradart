// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> workforcePoolId,
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
           'workforce_pool_id': workforcePoolId,
           'role': role,
           'member': member,
           'location': ?location,
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
}
