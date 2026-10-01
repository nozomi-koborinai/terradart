// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;
import '../scc/google_scc_source.dart' show GoogleSccSource;

/// Sensitive field paths for `google_scc_source_iam_member`.
const Set<String> _googleSccSourceIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_scc_source_iam_member` (derived from provider schema).
@immutable
final class SccSourceIamMemberCondition {
  const SccSourceIamMemberCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_scc_source_iam_member`.
final class GoogleSccSourceIamMember extends Resource {
  static const String tfType = 'google_scc_source_iam_member';

  GoogleSccSourceIamMember(
    super.localName, {
    required RefTo<GoogleSccSource> source,
    TfArg<String>? organization,
    required TfArg<String> role,
    required IamPrincipal member,
    SccSourceIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'source': source.encodeAs('name'),
           'organization': ?(organization ?? source.alsoAs('organization')),
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSccSourceIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSccSourceIamMember>`.
  RefTo<GoogleSccSourceIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `organization` attribute.
  TfRef<String> get organization =>
      TfRef.attribute<String>(this, 'organization');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');
}
