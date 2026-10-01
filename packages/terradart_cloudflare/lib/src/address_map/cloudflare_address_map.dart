// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_address_map`.
const Set<String> _cloudflareAddressMapSensitive = <String>{};

/// Typed helper for the `memberships` block of
/// `cloudflare_address_map` (derived from provider schema).
@immutable
final class AddressMapMemberships {
  const AddressMapMemberships({this.identifier, this.kind});

  final TfArg<String>? identifier;

  final TfArg<AddressMapKind>? kind;

  Map<String, Object?> encode() => {
    'identifier': ?identifier?.toTfJson(),
    'kind': ?kind?.toTfJson(),
  };
}

/// `kind` — derived from the provider schema description.
enum AddressMapKind implements TerraformEnum {
  zone('zone'),
  account('account');

  const AddressMapKind(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_address_map`.
///
/// Accepted Permissions
///
/// - `Address Maps Read` - `Address Maps Write`
final class CloudflareAddressMap extends Resource {
  static const String tfType = 'cloudflare_address_map';

  CloudflareAddressMap(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? defaultSni,
    TfArg<String>? description,
    TfArg<bool>? enabled,
    TfArg<List<String>>? ips,
    List<AddressMapMemberships>? memberships,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'default_sni': ?defaultSni,
           'description': ?description,
           'enabled': ?enabled,
           'ips': ?ips,
           if (memberships != null)
             'memberships': TfArg.literal([
               for (final e in memberships) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAddressMapSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareAddressMap>`.
  RefTo<CloudflareAddressMap> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `can_delete` attribute.
  TfRef<bool> get canDelete => TfRef.attribute<bool>(this, 'can_delete');

  /// Reference to `can_modify_ips` attribute.
  TfRef<bool> get canModifyIps => TfRef.attribute<bool>(this, 'can_modify_ips');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `default_sni` attribute.
  TfRef<String> get defaultSni => TfRef.attribute<String>(this, 'default_sni');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `ips` attribute.
  TfRef<List<String>> get ips => TfRef.attribute<List<String>>(this, 'ips');
}
