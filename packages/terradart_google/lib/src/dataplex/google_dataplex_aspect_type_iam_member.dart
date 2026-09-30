// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_aspect_type_iam_member`.
const Set<String> _googleDataplexAspectTypeIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_dataplex_aspect_type_iam_member` (derived from provider schema).
@immutable
final class DataplexAspectTypeIamMemberCondition {
  const DataplexAspectTypeIamMemberCondition({
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

/// Factory wrapper for `google_dataplex_aspect_type_iam_member`.
final class GoogleDataplexAspectTypeIamMember extends Resource {
  static const String tfType = 'google_dataplex_aspect_type_iam_member';

  GoogleDataplexAspectTypeIamMember({
    required super.localName,
    required TfArg<String> aspectTypeId,
    required TfArg<String> role,
    required TfArg<String> member,
    DataplexAspectTypeIamMemberCondition? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aspect_type_id': aspectTypeId,
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataplexAspectTypeIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexAspectTypeIamMember>`.
  RefTo<GoogleDataplexAspectTypeIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `aspect_type_id` attribute.
  TfRef<String> get aspectTypeIdRef =>
      TfRef.attribute<String>(this, 'aspect_type_id');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
