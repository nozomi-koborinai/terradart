// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_container_analysis_occurrence`.
const Set<String> _googleContainerAnalysisOccurrenceSensitive = <String>{};

/// Typed helper for the `attestation` block of
/// `google_container_analysis_occurrence` (derived from provider schema).
@immutable
final class ContainerAnalysisOccurrenceAttestation {
  const ContainerAnalysisOccurrenceAttestation({
    required this.serializedPayload,
    required this.signatures,
  });

  final TfArg<String> serializedPayload;

  final List<ContainerAnalysisOccurrenceAttestationSignatures> signatures;

  Map<String, Object?> encode() => {
    'serialized_payload': serializedPayload.toTfJson(),
    'signatures': [for (final e in signatures) e.encode()],
  };
}

/// Typed helper for the `attestation.signatures` block of
/// `google_container_analysis_occurrence` (derived from provider schema).
@immutable
final class ContainerAnalysisOccurrenceAttestationSignatures {
  const ContainerAnalysisOccurrenceAttestationSignatures({
    required this.publicKeyId,
    this.signature,
  });

  final TfArg<String> publicKeyId;

  final TfArg<String>? signature;

  Map<String, Object?> encode() => {
    'public_key_id': publicKeyId.toTfJson(),
    'signature': ?signature?.toTfJson(),
  };
}

/// Factory wrapper for `google_container_analysis_occurrence`.
///
/// An occurrence is an instance of a Note, or type of analysis that can be done
/// for a resource.
///
/// Container Analysis occurrence — an instance of a [GoogleContainerAnalysisNote]
/// attached to a concrete resource URI (typically a container image).
///
/// Attestation occurrences require a base64 `serialized_payload` and at least
/// one signature (`public_key_id` + optional `signature`). See Binary
/// Authorization's "Creating Attestations" guide for payload formats.
///
/// Example:
/// ```dart
/// GoogleContainerAnalysisOccurrence(
///   localName: 'image_attestation',
///   noteName: TfArg.ref(note.id),
///   resourceUri: TfArg.literal('https://gcr.io/$projectId/app@sha256:…'),
///   attestation: ContainerAnalysisOccurrenceAttestation(
///     serializedPayload: TfArg.literal('<base64-payload>'),
///     signatures: [
///       ContainerAnalysisOccurrenceAttestationSignatures(
///         publicKeyId: TfArg.literal('//cloudkms.googleapis.com/…'),
///         signature: TfArg.literal('<base64-signature>'),
///       ),
///     ],
///   ),
/// );
/// ```
final class GoogleContainerAnalysisOccurrence extends Resource {
  static const String tfType = 'google_container_analysis_occurrence';

  GoogleContainerAnalysisOccurrence({
    required super.localName,
    required TfArg<String> noteName,
    required TfArg<String> resourceUri,
    required ContainerAnalysisOccurrenceAttestation attestation,
    TfArg<String>? remediation,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'note_name': noteName,
           'resource_uri': resourceUri,
           'attestation': TfArg.literal(attestation.encode()),
           'remediation': ?remediation,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleContainerAnalysisOccurrenceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleContainerAnalysisOccurrence>`.
  RefTo<GoogleContainerAnalysisOccurrence> get ref => RefTo.of(this);

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

  /// Reference to `note_name` attribute.
  TfRef<String> get noteNameRef => TfRef.attribute<String>(this, 'note_name');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `remediation` attribute.
  TfRef<String> get remediationRef =>
      TfRef.attribute<String>(this, 'remediation');

  /// Reference to `resource_uri` attribute.
  TfRef<String> get resourceUriRef =>
      TfRef.attribute<String>(this, 'resource_uri');
}
