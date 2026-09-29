// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_aspect_type_iam_member`.
const Set<String> _googleDataplexAspectTypeIamMemberSensitive = <String>{};

/// Factory wrapper for `google_dataplex_aspect_type_iam_member`.
final class GoogleDataplexAspectTypeIamMember extends Resource {
  static const String tfType = 'google_dataplex_aspect_type_iam_member';

  GoogleDataplexAspectTypeIamMember({
    required super.localName,
    required TfArg<String> aspectTypeId,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
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
           'condition': ?condition,
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
}
