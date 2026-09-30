// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_list`.
const Set<String> _cloudflareZeroTrustListSensitive = <String>{};

/// Zero Trust List enum for `type`.
enum ZeroTrustListType implements TerraformEnum {
  serial('SERIAL'),
  url('URL'),
  domain('DOMAIN'),
  email('EMAIL'),
  ip('IP'),
  category('CATEGORY'),
  location('LOCATION'),
  device('DEVICE'),
  aaguid('AAGUID');

  const ZeroTrustListType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `items` block of
/// `cloudflare_zero_trust_list` (derived from provider schema).
@immutable
final class ZeroTrustListItems {
  const ZeroTrustListItems({this.description, this.value});

  final TfArg<String>? description;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_list`.
final class CloudflareZeroTrustList extends Resource {
  static const String tfType = 'cloudflare_zero_trust_list';

  CloudflareZeroTrustList({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<ZeroTrustListType> type,
    List<ZeroTrustListItems>? items,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'description': ?description,
           'name': name,
           'type': type,
           if (items != null)
             'items': TfArg.literal([for (final e in items) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustListSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustList>`.
  RefTo<CloudflareZeroTrustList> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `list_count` attribute.
  TfRef<num> get listCount => TfRef.attribute<num>(this, 'list_count');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `type` attribute.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');
}
