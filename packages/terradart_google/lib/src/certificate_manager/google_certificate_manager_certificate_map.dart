// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_certificate_manager_certificate_map`.
const Set<String> _googleCertificateManagerCertificateMapSensitive = <String>{};

/// Factory wrapper for `google_certificate_manager_certificate_map`.
///
/// Certificate map — a hostname → certificate routing table consumed by
/// global external HTTPS load balancers via
/// [GoogleComputeTargetHttpsProxy.certificateMap].
///
/// Pair with [GoogleCertificateManagerCertificateMapEntry] rows (one per
/// hostname or matcher) and a [GoogleCertificateManagerCertificate] per
/// entry.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [name]: map ID (`[a-zA-Z][a-zA-Z0-9_-]*`).
///
/// Example:
/// ```dart
/// final certMap = GoogleCertificateManagerCertificateMap(
///   localName: 'app_map',
///   name: TfArg.literal('app-cert-map'),
/// );
/// ```
final class GoogleCertificateManagerCertificateMap extends Resource {
  static const String tfType = 'google_certificate_manager_certificate_map';

  GoogleCertificateManagerCertificateMap({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCertificateManagerCertificateMapSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `gclb_targets` attribute.
  TfRef<List<Map<String, Object?>>> get gclbTargets =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'gclb_targets');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
