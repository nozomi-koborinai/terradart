// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_container_analysis_note`.
const Set<String> _googleContainerAnalysisNoteSensitive = <String>{};

/// Typed helper for the `attestation_authority` block of
/// `google_container_analysis_note` (derived from provider schema).
@immutable
final class ContainerAnalysisNoteAttestationAuthority {
  const ContainerAnalysisNoteAttestationAuthority({required this.hint});

  final ContainerAnalysisNoteAttestationAuthorityHint hint;

  Map<String, Object?> encode() => {'hint': hint.encode()};
}

/// Typed helper for the `attestation_authority.hint` block of
/// `google_container_analysis_note` (derived from provider schema).
@immutable
final class ContainerAnalysisNoteAttestationAuthorityHint {
  const ContainerAnalysisNoteAttestationAuthorityHint({
    required this.humanReadableName,
  });

  final TfArg<String> humanReadableName;

  Map<String, Object?> encode() => {
    'human_readable_name': humanReadableName.toTfJson(),
  };
}

/// Typed helper for the `related_url` block of
/// `google_container_analysis_note` (derived from provider schema).
@immutable
final class ContainerAnalysisNoteRelatedUrl {
  const ContainerAnalysisNoteRelatedUrl({this.label, required this.url});

  final TfArg<String>? label;

  final TfArg<String> url;

  Map<String, Object?> encode() => {
    if (label != null) 'label': label!.toTfJson(),
    'url': url.toTfJson(),
  };
}

/// Factory wrapper for `google_container_analysis_note`.
///
/// A Container Analysis note is a high-level piece of metadata that describes a
/// type of analysis that can be done for a resource.
///
/// Container Analysis note — high-level metadata describing an analysis
/// type (commonly an attestation authority for Binary Authorization).
///
/// Enable `containeranalysis.googleapis.com` before apply. Pair with
/// [GoogleContainerAnalysisOccurrence] when recording attestations against
/// a concrete image URI.
///
/// Example:
/// ```dart
/// GoogleContainerAnalysisNote(
///   localName: 'attestor',
///   name: TfArg.literal('terradart-attestor-note'),
///   attestationAuthority: ContainerAnalysisNoteAttestationAuthority(
///     hint: ContainerAnalysisNoteAttestationAuthorityHint(
///       humanReadableName: TfArg.literal('TerraDart attestor'),
///     ),
///   ),
/// );
/// ```
final class GoogleContainerAnalysisNote extends Resource {
  static const String tfType = 'google_container_analysis_note';

  GoogleContainerAnalysisNote({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? shortDescription,
    TfArg<String>? longDescription,
    required ContainerAnalysisNoteAttestationAuthority attestationAuthority,
    List<ContainerAnalysisNoteRelatedUrl>? relatedUrl,
    TfArg<List<String>>? relatedNoteNames,
    TfArg<String>? expirationTime,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (shortDescription != null) 'short_description': shortDescription,
           if (longDescription != null) 'long_description': longDescription,
           'attestation_authority': TfArg.literal(
             attestationAuthority.encode(),
           ),
           if (relatedUrl != null)
             'related_url': TfArg.literal([
               for (final e in relatedUrl) e.encode(),
             ]),
           if (relatedNoteNames != null) 'related_note_names': relatedNoteNames,
           if (expirationTime != null) 'expiration_time': expirationTime,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleContainerAnalysisNoteSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindRef => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
