// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_list`.
const Set<String> _cloudflareZeroTrustListSensitive = <String>{};

/// Zero Trust List enum for `type`.
extension type const ZeroTrustListType._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustListType.variable(String name) : this._(TfArg.variable(name));
  ZeroTrustListType.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustListType.arg(TfArg<String> arg) : this._(arg);

  static const serial = ZeroTrustListType._(TfArgLiteral('SERIAL'));
  static const url = ZeroTrustListType._(TfArgLiteral('URL'));
  static const domain = ZeroTrustListType._(TfArgLiteral('DOMAIN'));
  static const email = ZeroTrustListType._(TfArgLiteral('EMAIL'));
  static const ip = ZeroTrustListType._(TfArgLiteral('IP'));
  static const category = ZeroTrustListType._(TfArgLiteral('CATEGORY'));
  static const location = ZeroTrustListType._(TfArgLiteral('LOCATION'));
  static const device = ZeroTrustListType._(TfArgLiteral('DEVICE'));
  static const aaguid = ZeroTrustListType._(TfArgLiteral('AAGUID'));

  static const List<ZeroTrustListType> values = [
    serial,
    url,
    domain,
    email,
    ip,
    category,
    location,
    device,
    aaguid,
  ];
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

  CloudflareZeroTrustList(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? description,
    required TfArg<String> name,
    required ZeroTrustListType type,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `list_count` attribute.
  TfRef<num> get listCount => TfRef.attribute<num>(this, 'list_count');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
