// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_sac_realm`.
const Set<String> _googleNetworkSecuritySacRealmSensitive = <String>{};

/// Network Security Sac Realm Security enum for `security_service`.
enum NetworkSecuritySacRealmSecurityService implements TerraformEnum {
  securityServiceUnspecified('SECURITY_SERVICE_UNSPECIFIED'),
  paloAltoPrismaAccess('PALO_ALTO_PRISMA_ACCESS'),
  symantecCloudSwg('SYMANTEC_CLOUD_SWG');

  const NetworkSecuritySacRealmSecurityService(this.terraformValue);
  @override
  final String terraformValue;
}

/// Network Security Sac Realm enum for `state`.
enum NetworkSecuritySacRealmState implements TerraformEnum {
  stateUnspecified('STATE_UNSPECIFIED'),
  pendingPartnerAttachment('PENDING_PARTNER_ATTACHMENT'),
  partnerAttached('PARTNER_ATTACHED'),
  partnerDetached('PARTNER_DETACHED'),
  keyExpired('KEY_EXPIRED');

  const NetworkSecuritySacRealmState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `symantec_options` block of
/// `google_network_security_sac_realm` (derived from provider schema).
@immutable
final class NetworkSecuritySacRealmSymantecOptions {
  const NetworkSecuritySacRealmSymantecOptions({this.secretPath});

  final TfArg<String>? secretPath;

  Map<String, Object?> encode() => {
    if (secretPath != null) 'secret_path': secretPath!.toTfJson(),
  };
}

/// Factory wrapper for `google_network_security_sac_realm`.
///
/// Secure Access Connect Realm resource
final class GoogleNetworkSecuritySacRealm extends Resource {
  static const String tfType = 'google_network_security_sac_realm';

  GoogleNetworkSecuritySacRealm({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> name,
    TfArg<String>? project,
    required TfArg<NetworkSecuritySacRealmSecurityService> securityService,
    NetworkSecuritySacRealmSymantecOptions? symantecOptions,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (labels != null) 'labels': labels,
           'name': name,
           if (project != null) 'project': project,
           'security_service': securityService,
           if (symantecOptions != null)
             'symantec_options': TfArg.literal(symantecOptions.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetworkSecuritySacRealmSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `pairing_key` attribute.
  TfRef<List<Map<String, Object?>>> get pairingKey =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'pairing_key');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
