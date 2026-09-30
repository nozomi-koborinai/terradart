// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_binary_authorization_attestor_iam_binding`.
const Set<String> _googleBinaryAuthorizationAttestorIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_binary_authorization_attestor_iam_binding` (derived from provider schema).
@immutable
final class BinaryAuthorizationAttestorIamBindingCondition {
  const BinaryAuthorizationAttestorIamBindingCondition({
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

/// Factory wrapper for `google_binary_authorization_attestor_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Binary Authorization
/// attestor.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleBinaryAuthorizationAttestorIamMember] for additive grants.
final class GoogleBinaryAuthorizationAttestorIamBinding extends Resource {
  static const String tfType =
      'google_binary_authorization_attestor_iam_binding';

  GoogleBinaryAuthorizationAttestorIamBinding({
    required super.localName,
    required TfArg<String> attestor,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? project,
    BinaryAuthorizationAttestorIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'attestor': attestor,
           'role': role,
           'members': members,
           'project': ?project,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBinaryAuthorizationAttestorIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBinaryAuthorizationAttestorIamBinding>`.
  RefTo<GoogleBinaryAuthorizationAttestorIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `attestor` attribute.
  TfRef<String> get attestorRef => TfRef.attribute<String>(this, 'attestor');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
