// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../service_directory/google_service_directory_service.dart'
    show GoogleServiceDirectoryService;

/// Sensitive field paths for `google_service_directory_service_iam_binding`.
const Set<String> _googleServiceDirectoryServiceIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_service_directory_service_iam_binding` (derived from provider schema).
@immutable
final class ServiceDirectoryServiceIamBindingCondition {
  const ServiceDirectoryServiceIamBindingCondition({
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

/// Factory wrapper for `google_service_directory_service_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Service Directory
/// service.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleServiceDirectoryServiceIamMember] for additive grants.
final class GoogleServiceDirectoryServiceIamBinding extends Resource {
  static const String tfType = 'google_service_directory_service_iam_binding';

  GoogleServiceDirectoryServiceIamBinding({
    required super.localName,
    required RefTo<GoogleServiceDirectoryService> service,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    ServiceDirectoryServiceIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': service.encodeAs('id'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleServiceDirectoryServiceIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleServiceDirectoryServiceIamBinding>`.
  RefTo<GoogleServiceDirectoryServiceIamBinding> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
