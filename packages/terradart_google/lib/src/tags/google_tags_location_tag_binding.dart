// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../tags/google_tags_tag_value.dart' show GoogleTagsTagValue;

/// Sensitive field paths for `google_tags_location_tag_binding`.
const Set<String> _googleTagsLocationTagBindingSensitive = <String>{};

/// Factory wrapper for `google_tags_location_tag_binding`.
///
/// Location-scoped TagBinding — attaches a TagValue to a regional or
/// zonal resource (Artifact Registry repository, Cloud Run service,
/// Compute instance). Use [GoogleTagsTagBinding] for project / folder /
/// organization parents.
///
/// [parent] is the full resource name, for example
/// `//artifactregistry.googleapis.com/projects/{number}/locations/{location}/repositories/{id}`.
/// [location] must match the target region or zone.
///
/// Example:
/// ```dart
/// GoogleTagsLocationTagBinding(
///   localName: 'repo_env',
///   parent: TfArg.literal(
///     '//artifactregistry.googleapis.com/projects/'
///     '${project.number.interpolation}/locations/asia-northeast1/'
///     'repositories/${repo.repositoryId.interpolation}',
///   ),
///   tagValue: value.ref,
///   location: TfArg.literal('asia-northeast1'),
/// );
/// ```
final class GoogleTagsLocationTagBinding extends Resource {
  static const String tfType = 'google_tags_location_tag_binding';

  GoogleTagsLocationTagBinding({
    required super.localName,
    required TfArg<String> parent,
    required RefTo<GoogleTagsTagValue> tagValue,
    TfArg<String>? location,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'parent': parent,
           'tag_value': tagValue.encodeAs('id'),
           'location': ?location,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleTagsLocationTagBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleTagsLocationTagBinding>`.
  RefTo<GoogleTagsLocationTagBinding> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `tag_value` attribute.
  TfRef<String> get tagValue => TfRef.attribute<String>(this, 'tag_value');
}
