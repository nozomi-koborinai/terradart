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

  final ContainerAnalysisNoteHint hint;

  Map<String, Object?> encode() => {'hint': hint.encode()};
}

/// Typed helper for the `attestation_authority.hint` block of
/// `google_container_analysis_note` (derived from provider schema).
@immutable
final class ContainerAnalysisNoteHint {
  const ContainerAnalysisNoteHint({required this.humanReadableName});

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
    'label': ?label?.toTfJson(),
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
///     hint: ContainerAnalysisNoteHint(
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'short_description': ?shortDescription,
           'long_description': ?longDescription,
           'attestation_authority': TfArg.literal(
             attestationAuthority.encode(),
           ),
           if (relatedUrl != null)
             'related_url': TfArg.literal([
               for (final e in relatedUrl) e.encode(),
             ]),
           'related_note_names': ?relatedNoteNames,
           'expiration_time': ?expirationTime,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleContainerAnalysisNoteSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleContainerAnalysisNote>`.
  RefTo<GoogleContainerAnalysisNote> get ref => RefTo.of(this);

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `expiration_time` attribute.
  TfRef<String> get expirationTimeRef =>
      TfRef.attribute<String>(this, 'expiration_time');

  /// Reference to `long_description` attribute.
  TfRef<String> get longDescriptionRef =>
      TfRef.attribute<String>(this, 'long_description');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `related_note_names` attribute.
  TfRef<List<String>> get relatedNoteNamesRef =>
      TfRef.attribute<List<String>>(this, 'related_note_names');

  /// Reference to `short_description` attribute.
  TfRef<String> get shortDescriptionRef =>
      TfRef.attribute<String>(this, 'short_description');
}
