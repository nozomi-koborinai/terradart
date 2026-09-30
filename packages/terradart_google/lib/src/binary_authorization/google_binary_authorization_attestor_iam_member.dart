// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_binary_authorization_attestor_iam_member`.
const Set<String> _googleBinaryAuthorizationAttestorIamMemberSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_binary_authorization_attestor_iam_member` (derived from provider schema).
@immutable
final class BinaryAuthorizationAttestorIamMemberCondition {
  const BinaryAuthorizationAttestorIamMemberCondition({
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

/// Factory wrapper for `google_binary_authorization_attestor_iam_member`.
///
/// IAM member on a Binary Authorization attestor (`roles/binaryauthorization.attestorViewer`
/// or `roles/binaryauthorization.attestorEditor`).
///
/// Example:
/// ```dart
/// GoogleBinaryAuthorizationAttestorIamMember(
///   localName: 'attestor_viewer',
///   attestor: TfArg.ref(attestor.nameRef),
///   role: TfArg.literal('roles/binaryauthorization.attestorViewer'),
///   member: TfArg.literal('serviceAccount:ci@$projectId.iam.gserviceaccount.com'),
/// );
/// ```
final class GoogleBinaryAuthorizationAttestorIamMember extends Resource {
  static const String tfType =
      'google_binary_authorization_attestor_iam_member';

  GoogleBinaryAuthorizationAttestorIamMember({
    required super.localName,
    required TfArg<String> attestor,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<String>? project,
    BinaryAuthorizationAttestorIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'attestor': attestor,
           'role': role,
           'member': member,
           'project': ?project,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBinaryAuthorizationAttestorIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBinaryAuthorizationAttestorIamMember>`.
  RefTo<GoogleBinaryAuthorizationAttestorIamMember> get ref => RefTo.of(this);

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `attestor` attribute.
  TfRef<String> get attestorRef => TfRef.attribute<String>(this, 'attestor');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
