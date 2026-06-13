// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_certificate_manager_certificate_map_entry`.
const Set<String> _googleCertificateManagerCertificateMapEntrySensitive =
    <String>{};

/// Selects which traffic a [GoogleCertificateManagerCertificateMapEntry]
/// matches. The provider's `exactly_one_of` on `hostname` / `matcher` is
/// enforced at compile time: pass exactly one variant.
sealed class CertificateManagerCertificateMapEntryMatch {
  const CertificateManagerCertificateMapEntryMatch();

  /// Match by SNI hostname — an FQDN (`app.example.com`) or a wildcard
  /// suffix expression (`*.example.com`).
  const factory CertificateManagerCertificateMapEntryMatch.hostname(
    TfArg<String> hostname,
  ) = CertificateManagerCertificateMapEntryHostname;

  /// Match by a predefined matcher (e.g. `PRIMARY` — the fallback entry
  /// used when no hostname matches).
  const factory CertificateManagerCertificateMapEntryMatch.matcher(
    TfArg<String> matcher,
  ) = CertificateManagerCertificateMapEntryMatcher;

  /// argMap key this variant emits under (`hostname` or `matcher`).
  String get blockKey;

  /// Value emitted under [blockKey].
  TfArg<String> get value;

  /// Flat `{blockKey: value}` payload, value unwrapped via `toTfJson()`
  /// (the Gate 6 encode round-trip shape).
  Map<String, Object?> encode() => {blockKey: value.toTfJson()};
}

/// `hostname` variant of [CertificateManagerCertificateMapEntryMatch].
@immutable
final class CertificateManagerCertificateMapEntryHostname
    extends CertificateManagerCertificateMapEntryMatch {
  const CertificateManagerCertificateMapEntryHostname(this.value);

  @override
  final TfArg<String> value;

  @override
  String get blockKey => 'hostname';
}

/// `matcher` variant of [CertificateManagerCertificateMapEntryMatch].
@immutable
final class CertificateManagerCertificateMapEntryMatcher
    extends CertificateManagerCertificateMapEntryMatch {
  const CertificateManagerCertificateMapEntryMatcher(this.value);

  @override
  final TfArg<String> value;

  @override
  String get blockKey => 'matcher';
}

/// Factory wrapper for `google_certificate_manager_certificate_map_entry`.
///
/// CertificateMapEntry is a list of certificate configurations, that have been
/// issued for a particular hostname
///
/// One hostname (or matcher) row inside a [GoogleCertificateManagerCertificateMap].
///
/// Binds up to fifteen [GoogleCertificateManagerCertificate] resources to
/// a Server Name Indication (SNI) hostname or a predefined matcher. The
/// provider requires **exactly one** of hostname / matcher, modeled here as
/// the sealed [CertificateManagerCertificateMapEntryMatch].
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [name]: entry ID unique within the parent map.
/// - [map]: full resource name of the parent map — pass
///   `TfArg.ref(certMap.id)`.
/// - [match]: the SNI hostname or predefined matcher this entry selects.
/// - [certificates]: one or more certificate resource names — pass
///   `TfArg.literal([cert.id.interpolation])` or `TfArg.ref(cert.id)`.
///
/// Example:
/// ```dart
/// GoogleCertificateManagerCertificateMapEntry(
///   localName: 'app_entry',
///   name: TfArg.literal('app-entry'),
///   map: TfArg.ref(certMap.id),
///   match: CertificateManagerCertificateMapEntryMatch.hostname(
///     TfArg.literal('app.example.com'),
///   ),
///   certificates: TfArg.literal([
///     '\${google_certificate_manager_certificate.app_cert.id}',
///   ]),
/// );
/// ```
final class GoogleCertificateManagerCertificateMapEntry extends Resource {
  static const String tfType =
      'google_certificate_manager_certificate_map_entry';

  GoogleCertificateManagerCertificateMapEntry({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> map,
    required TfArg<List<String>> certificates,
    required CertificateManagerCertificateMapEntryMatch match,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'map': map,
           'certificates': certificates,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           match.blockKey: match.value,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCertificateManagerCertificateMapEntrySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
