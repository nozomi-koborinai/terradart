// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;
import '../service_directory/google_service_directory_namespace.dart'
    show GoogleServiceDirectoryNamespace;

/// Sensitive field paths for `google_service_directory_namespace_iam_member`.
const Set<String> _googleServiceDirectoryNamespaceIamMemberSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_service_directory_namespace_iam_member` (derived from provider schema).
@immutable
final class ServiceDirectoryNamespaceIamMemberCondition {
  const ServiceDirectoryNamespaceIamMemberCondition({
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

/// Factory wrapper for `google_service_directory_namespace_iam_member`.
final class GoogleServiceDirectoryNamespaceIamMember extends Resource {
  static const String tfType = 'google_service_directory_namespace_iam_member';

  GoogleServiceDirectoryNamespaceIamMember(
    super.localName, {
    required RefTo<GoogleServiceDirectoryNamespace> namespace,
    required TfArg<String> role,
    required IamPrincipal member,
    ServiceDirectoryNamespaceIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': namespace.encodeAs('id'),
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleServiceDirectoryNamespaceIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleServiceDirectoryNamespaceIamMember>`.
  RefTo<GoogleServiceDirectoryNamespaceIamMember> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
