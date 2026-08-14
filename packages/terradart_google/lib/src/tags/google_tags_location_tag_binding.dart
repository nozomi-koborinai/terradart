// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
///     'repositories/${repo.repositoryIdRef.interpolation}',
///   ),
///   tagValue: TfArg.ref(value.id),
///   location: TfArg.literal('asia-northeast1'),
/// );
/// ```
final class GoogleTagsLocationTagBinding extends Resource {
  static const String tfType = 'google_tags_location_tag_binding';

  GoogleTagsLocationTagBinding({
    required super.localName,
    required TfArg<String> parent,
    required TfArg<String> tagValue,
    TfArg<String>? location,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'parent': parent,
           'tag_value': tagValue,
           if (location != null) 'location': location,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleTagsLocationTagBindingSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
