// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;
import '../service_directory/google_service_directory_service.dart'
    show GoogleServiceDirectoryService;

/// Sensitive field paths for `google_service_directory_service_iam_member`.
const Set<String> _googleServiceDirectoryServiceIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_service_directory_service_iam_member` (derived from provider schema).
@immutable
final class ServiceDirectoryServiceIamMemberCondition {
  const ServiceDirectoryServiceIamMemberCondition({
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

/// Factory wrapper for `google_service_directory_service_iam_member`.
final class GoogleServiceDirectoryServiceIamMember extends Resource {
  static const String tfType = 'google_service_directory_service_iam_member';

  GoogleServiceDirectoryServiceIamMember({
    required super.localName,
    required RefTo<GoogleServiceDirectoryService> service,
    required TfArg<String> role,
    required IamPrincipal member,
    ServiceDirectoryServiceIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': service.encodeAs('id'),
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleServiceDirectoryServiceIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleServiceDirectoryServiceIamMember>`.
  RefTo<GoogleServiceDirectoryServiceIamMember> get ref => RefTo.of(this);

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
