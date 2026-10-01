// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../byo_ip/cloudflare_byo_ip_prefix.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_byo_ip_prefix`.
const Set<String> _cloudflareByoIpPrefixSensitive = <String>{};

/// Factory wrapper for `cloudflare_byo_ip_prefix`.
///
/// Accepted Permissions
///
/// - `IP Prefixes: BGP On Demand Read` - `IP Prefixes: BGP On Demand Write` -
/// `IP Prefixes: Read` - `IP Prefixes: Write` - `Magic Transit Read` - `Magic
/// Transit Write`
final class DataCloudflareByoIpPrefix extends Data {
  static const String tfType = 'cloudflare_byo_ip_prefix';

  DataCloudflareByoIpPrefix({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    required TfArg<String> prefixId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'prefix_id': prefixId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareByoIpPrefixSensitive;

  /// A reference to the `cloudflare_byo_ip_prefix` this data source reads, for
  /// arguments typed `RefTo<CloudflareByoIpPrefix>`.
  RefTo<CloudflareByoIpPrefix> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `advertised` attribute.
  TfRef<bool> get advertised => TfRef.attribute<bool>(this, 'advertised');

  /// Reference to `advertised_modified_at` attribute.
  TfRef<String> get advertisedModifiedAt =>
      TfRef.attribute<String>(this, 'advertised_modified_at');

  /// Reference to `approved` attribute.
  TfRef<String> get approved => TfRef.attribute<String>(this, 'approved');

  /// Reference to `asn` attribute.
  TfRef<num> get asn => TfRef.attribute<num>(this, 'asn');

  /// Reference to `cidr` attribute.
  TfRef<String> get cidr => TfRef.attribute<String>(this, 'cidr');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `delegate_loa_creation` attribute.
  TfRef<bool> get delegateLoaCreation =>
      TfRef.attribute<bool>(this, 'delegate_loa_creation');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `irr_validation_state` attribute.
  TfRef<String> get irrValidationState =>
      TfRef.attribute<String>(this, 'irr_validation_state');

  /// Reference to `loa_document_id` attribute.
  TfRef<String> get loaDocumentId =>
      TfRef.attribute<String>(this, 'loa_document_id');

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `prefix_id` attribute.
  TfRef<String> get prefixId => TfRef.attribute<String>(this, 'prefix_id');
}
