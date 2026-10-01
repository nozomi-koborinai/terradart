// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_sac_attachment`.
const Set<String> _googleNetworkSecuritySacAttachmentSensitive = <String>{};

/// Network Security Sac Attachment enum for `state`.
enum NetworkSecuritySacAttachmentState implements TerraformEnum {
  stateUnspecified('STATE_UNSPECIFIED'),
  pendingPartnerAttachment('PENDING_PARTNER_ATTACHMENT'),
  partnerAttached('PARTNER_ATTACHED'),
  partnerDetached('PARTNER_DETACHED');

  const NetworkSecuritySacAttachmentState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `symantec_options` block of
/// `google_network_security_sac_attachment` (derived from provider schema).
@immutable
final class NetworkSecuritySacAttachmentSymantecOptions {
  const NetworkSecuritySacAttachmentSymantecOptions({
    this.symantecLocationName,
    this.symantecSite,
  });

  final TfArg<String>? symantecLocationName;

  final TfArg<String>? symantecSite;

  Map<String, Object?> encode() => {
    'symantec_location_name': ?symantecLocationName?.toTfJson(),
    'symantec_site': ?symantecSite?.toTfJson(),
  };
}

/// Factory wrapper for `google_network_security_sac_attachment`.
///
/// Represents a Secure Access Connect (SAC) attachment resource
final class GoogleNetworkSecuritySacAttachment extends Resource {
  static const String tfType = 'google_network_security_sac_attachment';

  GoogleNetworkSecuritySacAttachment({
    required super.localName,
    TfArg<String>? country,
    TfArg<String>? deletionPolicy,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<String> nccGateway,
    TfArg<String>? project,
    required TfArg<String> sacRealm,
    TfArg<String>? timeZone,
    NetworkSecuritySacAttachmentSymantecOptions? symantecOptions,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'country': ?country,
           'deletion_policy': ?deletionPolicy,
           'labels': ?labels,
           'location': location,
           'name': name,
           'ncc_gateway': nccGateway,
           'project': ?project,
           'sac_realm': sacRealm,
           'time_zone': ?timeZone,
           if (symantecOptions != null)
             'symantec_options': TfArg.literal(symantecOptions.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecuritySacAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkSecuritySacAttachment>`.
  RefTo<GoogleNetworkSecuritySacAttachment> get ref => RefTo.of(this);

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

  /// Reference to `country` attribute.
  TfRef<String> get country => TfRef.attribute<String>(this, 'country');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `ncc_gateway` attribute.
  TfRef<String> get nccGateway => TfRef.attribute<String>(this, 'ncc_gateway');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `sac_realm` attribute.
  TfRef<String> get sacRealm => TfRef.attribute<String>(this, 'sac_realm');

  /// Reference to `time_zone` attribute.
  TfRef<String> get timeZone => TfRef.attribute<String>(this, 'time_zone');
}
