// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../certificate_manager/google_certificate_manager_certificate_map.dart'
    show GoogleCertificateManagerCertificateMap;

/// Sensitive field paths for `google_certificate_manager_certificate_map_entry`.
const Set<String> _googleCertificateManagerCertificateMapEntrySensitive =
    <String>{};

/// Exactly one of `hostname`, `matcher` on `google_certificate_manager_certificate_map_entry`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.hostname(...)`.
sealed class CertificateManagerCertificateMapEntryMatch {
  const CertificateManagerCertificateMapEntryMatch();

  /// Sets `hostname`.
  const factory CertificateManagerCertificateMapEntryMatch.hostname(
    TfArg<String> hostname,
  ) = CertificateManagerCertificateMapEntryMatchHostname;

  /// Sets `matcher`.
  const factory CertificateManagerCertificateMapEntryMatch.matcher(
    TfArg<String> matcher,
  ) = CertificateManagerCertificateMapEntryMatchMatcher;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CertificateManagerCertificateMapEntryMatch.hostname] choice: sets `hostname`.
final class CertificateManagerCertificateMapEntryMatchHostname
    extends CertificateManagerCertificateMapEntryMatch {
  const CertificateManagerCertificateMapEntryMatchHostname(this.hostname);

  final TfArg<String> hostname;

  @override
  String get blockKey => 'hostname';

  @override
  Map<String, Object?> encode() => {'hostname': hostname.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'hostname': hostname};
}

/// The [CertificateManagerCertificateMapEntryMatch.matcher] choice: sets `matcher`.
final class CertificateManagerCertificateMapEntryMatchMatcher
    extends CertificateManagerCertificateMapEntryMatch {
  const CertificateManagerCertificateMapEntryMatchMatcher(this.matcher);

  final TfArg<String> matcher;

  @override
  String get blockKey => 'matcher';

  @override
  Map<String, Object?> encode() => {'matcher': matcher.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'matcher': matcher};
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
///   `certMap.id`.
/// - [match]: the SNI hostname or predefined matcher this entry selects.
/// - [certificates]: one or more certificate resource names — pass
///   `TfArg.literal([cert.id.interpolation])` or `cert.id`.
///
/// Example:
/// ```dart
/// GoogleCertificateManagerCertificateMapEntry(
///   'app_entry',
///   name: TfArg.literal('app-entry'),
///   map: certMap.ref,
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

  GoogleCertificateManagerCertificateMapEntry(
    super.localName, {
    required TfArg<String> name,
    required RefTo<GoogleCertificateManagerCertificateMap> map,
    required TfArg<List<String>> certificates,
    required CertificateManagerCertificateMapEntryMatch match,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'map': map.encodeAs('name'),
           'certificates': certificates,
           'description': ?description,
           'labels': ?labels,
           ...match.argMap,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCertificateManagerCertificateMapEntrySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCertificateManagerCertificateMapEntry>`.
  RefTo<GoogleCertificateManagerCertificateMapEntry> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `certificates` attribute.
  TfRef<List<String>> get certificates =>
      TfRef.attribute<List<String>>(this, 'certificates');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `map` attribute.
  TfRef<String> get map => TfRef.attribute<String>(this, 'map');

  /// Reference to `matcher` attribute.
  TfRef<String> get matcher => TfRef.attribute<String>(this, 'matcher');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
