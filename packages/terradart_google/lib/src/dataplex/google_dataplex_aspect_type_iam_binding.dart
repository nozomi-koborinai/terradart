// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../dataplex/google_dataplex_aspect_type.dart'
    show GoogleDataplexAspectType;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_dataplex_aspect_type_iam_binding`.
const Set<String> _googleDataplexAspectTypeIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_dataplex_aspect_type_iam_binding` (derived from provider schema).
@immutable
final class DataplexAspectTypeIamBindingCondition {
  const DataplexAspectTypeIamBindingCondition({
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

/// Factory wrapper for `google_dataplex_aspect_type_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Dataplex aspect type.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleDataplexAspectTypeIamMember] for additive grants.
final class GoogleDataplexAspectTypeIamBinding extends Resource {
  static const String tfType = 'google_dataplex_aspect_type_iam_binding';

  GoogleDataplexAspectTypeIamBinding(
    super.localName, {
    required RefTo<GoogleDataplexAspectType> aspectType,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    DataplexAspectTypeIamBindingCondition? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aspect_type_id': aspectType.encodeAs('aspect_type_id'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?(location ?? aspectType.alsoAs('location')),
           'project': ?(project ?? aspectType.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataplexAspectTypeIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexAspectTypeIamBinding>`.
  RefTo<GoogleDataplexAspectTypeIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `aspect_type_id` attribute.
  TfRef<String> get aspectTypeId =>
      TfRef.attribute<String>(this, 'aspect_type_id');

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
