// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_list`.
const Set<String> _cloudflareZeroTrustListSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_zero_trust_list` (derived from provider schema).
@immutable
final class DataZeroTrustListFilter {
  const DataZeroTrustListFilter({this.type});

  final TfArg<String>? type;

  Map<String, Object?> encode() => {if (type != null) 'type': type!.toTfJson()};
}

/// Factory wrapper for `cloudflare_zero_trust_list`.
final class DataCloudflareZeroTrustList extends Data {
  static const String tfType = 'cloudflare_zero_trust_list';

  DataCloudflareZeroTrustList({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? listId,
    DataZeroTrustListFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (listId != null) 'list_id': listId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
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

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `list_count` attribute.
  TfRef<num> get listCount => TfRef.attribute<num>(this, 'list_count');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
