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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': ?location,
           'parent': ?parent,
           'description': ?description,
           'threat_prevention_profile': ?threatPreventionProfile,
           'url_filtering_profile': ?urlFilteringProfile,
           'custom_intercept_profile': ?customInterceptProfile,
           'custom_mirroring_profile': ?customMirroringProfile,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecuritySecurityProfileGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkSecuritySecurityProfileGroup>`.
  RefTo<GoogleNetworkSecuritySecurityProfileGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `custom_intercept_profile` attribute.
  TfRef<String> get customInterceptProfile =>
      TfRef.attribute<String>(this, 'custom_intercept_profile');

  /// Reference to `custom_mirroring_profile` attribute.
  TfRef<String> get customMirroringProfile =>
      TfRef.attribute<String>(this, 'custom_mirroring_profile');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `threat_prevention_profile` attribute.
  TfRef<String> get threatPreventionProfile =>
      TfRef.attribute<String>(this, 'threat_prevention_profile');

  /// Reference to `url_filtering_profile` attribute.
  TfRef<String> get urlFilteringProfile =>
      TfRef.attribute<String>(this, 'url_filtering_profile');
}
