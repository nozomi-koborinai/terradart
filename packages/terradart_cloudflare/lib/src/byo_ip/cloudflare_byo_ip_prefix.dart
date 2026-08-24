// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_byo_ip_prefix`.
const Set<String> _cloudflareByoIpPrefixSensitive = <String>{};

/// Factory wrapper for `cloudflare_byo_ip_prefix`.
///
/// Accepted Permissions
///
/// - `IP Prefixes: BGP On Demand Read` - `IP Prefixes: BGP On Demand Write` -
/// `IP Prefixes: Read` - `IP Prefixes: Write` - `Magic Transit Read` - `Magic
/// Transit Write`
final class CloudflareByoIpPrefix extends Resource {
  static const String tfType = 'cloudflare_byo_ip_prefix';

  CloudflareByoIpPrefix({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<num> asn,
    required TfArg<String> cidr,
    TfArg<bool>? delegateLoaCreation,
    TfArg<String>? description,
    TfArg<String>? loaDocumentId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'asn': asn,
           'cidr': cidr,
           if (delegateLoaCreation != null)
             'delegate_loa_creation': delegateLoaCreation,
           if (description != null) 'description': description,
           if (loaDocumentId != null) 'loa_document_id': loaDocumentId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareByoIpPrefixSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `advertised` attribute.
  TfRef<bool> get advertised => TfRef.attribute<bool>(this, 'advertised');

  /// Reference to `advertised_modified_at` attribute.
  TfRef<String> get advertisedModifiedAt =>
      TfRef.attribute<String>(this, 'advertised_modified_at');

  /// Reference to `approved` attribute.
  TfRef<String> get approved => TfRef.attribute<String>(this, 'approved');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `irr_validation_state` attribute.
  TfRef<String> get irrValidationState =>
      TfRef.attribute<String>(this, 'irr_validation_state');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `on_demand_enabled` attribute.
  TfRef<bool> get onDemandEnabled =>
      TfRef.attribute<bool>(this, 'on_demand_enabled');

  /// Reference to `on_demand_locked` attribute.
  TfRef<bool> get onDemandLocked =>
      TfRef.attribute<bool>(this, 'on_demand_locked');

  /// Reference to `ownership_validation_state` attribute.
  TfRef<String> get ownershipValidationState =>
      TfRef.attribute<String>(this, 'ownership_validation_state');

  /// Reference to `ownership_validation_token` attribute.
  TfRef<String> get ownershipValidationToken =>
      TfRef.attribute<String>(this, 'ownership_validation_token');

  /// Reference to `rpki_validation_state` attribute.
  TfRef<String> get rpkiValidationState =>
      TfRef.attribute<String>(this, 'rpki_validation_state');
}
