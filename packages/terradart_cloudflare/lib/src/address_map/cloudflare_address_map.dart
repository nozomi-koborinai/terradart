// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_address_map`.
const Set<String> _cloudflareAddressMapSensitive = <String>{};

/// Typed helper for the `memberships` block of
/// `cloudflare_address_map` (derived from provider schema).
@immutable
final class AddressMapMemberships {
  const AddressMapMemberships({this.identifier, this.kind});

  final TfArg<String>? identifier;

  final TfArg<String>? kind;

  Map<String, Object?> encode() => {
    if (identifier != null) 'identifier': identifier!.toTfJson(),
    if (kind != null) 'kind': kind!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_address_map`.
///
/// Accepted Permissions
///
/// - `Address Maps Read` - `Address Maps Write`
final class CloudflareAddressMap extends Resource {
  static const String tfType = 'cloudflare_address_map';

  CloudflareAddressMap({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? defaultSni,
    TfArg<String>? description,
    TfArg<bool>? enabled,
    TfArg<List<String>>? ips,
    List<AddressMapMemberships>? memberships,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (defaultSni != null) 'default_sni': defaultSni,
           if (description != null) 'description': description,
           if (enabled != null) 'enabled': enabled,
           if (ips != null) 'ips': ips,
           if (memberships != null)
             'memberships': TfArg.literal([
               for (final e in memberships) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAddressMapSensitive;

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
}
