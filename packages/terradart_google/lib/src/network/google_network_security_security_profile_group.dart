// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_security_profile_group`.
const Set<String> _googleNetworkSecuritySecurityProfileGroupSensitive =
    <String>{};

/// Factory wrapper for `google_network_security_security_profile_group`.
///
/// A security profile group defines a container for security profiles.
///
/// Network Security **security profile group** — binds one or more
/// [GoogleNetworkSecuritySecurityProfile] resources for use on Cloud NGFW
/// Enterprise firewall policy rules.
///
/// **Cost / apply:** gcp-cost: Network Security `E749-01A2-AE1F` Cloud NGFW
/// Enterprise Endpoint Uptime SKU `B778-1457-4A22` **$1.75/h** (plus Cloud
/// NGFW Enterprise Data Processing `994B-C7B9-C1F7` **$0.0193/GiBy** when
/// traffic is inspected). billing-behavior: groups are the attachment point
/// for NGFW threat prevention; a working stack implies NGFW Enterprise
/// endpoint hours. Debt-only — **Never** wire into apply-smoke.
///
/// Enable `networksecurity.googleapis.com` before apply. Profile fields are
/// resource names of sibling security profiles.
final class GoogleNetworkSecuritySecurityProfileGroup extends Resource {
  static const String tfType = 'google_network_security_security_profile_group';

  GoogleNetworkSecuritySecurityProfileGroup({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? location,
    TfArg<String>? parent,
    TfArg<String>? description,
    TfArg<String>? threatPreventionProfile,
    TfArg<String>? urlFilteringProfile,
    TfArg<String>? customInterceptProfile,
    TfArg<String>? customMirroringProfile,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (location != null) 'location': location,
           if (parent != null) 'parent': parent,
           if (description != null) 'description': description,
           if (threatPreventionProfile != null)
             'threat_prevention_profile': threatPreventionProfile,
           if (urlFilteringProfile != null)
             'url_filtering_profile': urlFilteringProfile,
           if (customInterceptProfile != null)
             'custom_intercept_profile': customInterceptProfile,
           if (customMirroringProfile != null)
             'custom_mirroring_profile': customMirroringProfile,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecuritySecurityProfileGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
