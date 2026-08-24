// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_list`.
const Set<String> _cloudflareZeroTrustListSensitive = <String>{};

/// Typed helper for the `items` block of
/// `cloudflare_zero_trust_list` (derived from provider schema).
@immutable
final class ZeroTrustListItems {
  const ZeroTrustListItems({this.description, this.value});

  final TfArg<String>? description;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_list`.
final class CloudflareZeroTrustList extends Resource {
  static const String tfType = 'cloudflare_zero_trust_list';

  CloudflareZeroTrustList({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<String> type,
    List<ZeroTrustListItems>? items,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (description != null) 'description': description,
           'name': name,
           'type': type,
           if (items != null)
             'items': TfArg.literal([for (final e in items) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustListSensitive;

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
}
