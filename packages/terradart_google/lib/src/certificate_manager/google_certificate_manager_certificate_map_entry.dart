// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_certificate_manager_certificate_map_entry`.
const Set<String> _googleCertificateManagerCertificateMapEntrySensitive =
    <String>{};

/// Factory wrapper for `google_certificate_manager_certificate_map_entry`.
///
/// One hostname (or matcher) row inside a [GoogleCertificateManagerCertificateMap].
///
/// Binds up to fifteen [GoogleCertificateManagerCertificate] resources to
/// a Server Name Indication (SNI) hostname or a predefined matcher.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [name]: entry ID unique within the parent map.
/// - [map]: full resource name of the parent map — pass
///   `TfArg.ref(certMap.id)`.
/// - [certificates]: one or more certificate resource names — pass
///   `TfArg.literal([cert.id.interpolation])` or `TfArg.ref(cert.id)`.
///
/// Example:
/// ```dart
/// GoogleCertificateManagerCertificateMapEntry(
///   localName: 'app_entry',
///   name: TfArg.literal('app-entry'),
///   map: TfArg.ref(certMap.id),
///   hostname: TfArg.literal('app.example.com'),
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
    TfArg<String>? hostname,
    TfArg<String>? matcher,
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
           if (hostname != null) 'hostname': hostname,
           if (matcher != null) 'matcher': matcher,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
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
