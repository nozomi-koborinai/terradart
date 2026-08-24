// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_device_ip_profile`.
const Set<String> _cloudflareZeroTrustDeviceIpProfileSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_zero_trust_device_ip_profile` (derived from provider schema).
@immutable
final class DataZeroTrustDeviceIpProfileFilter {
  const DataZeroTrustDeviceIpProfileFilter({this.perPage});

  final TfArg<num>? perPage;

  Map<String, Object?> encode() => {
    if (perPage != null) 'per_page': perPage!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_device_ip_profile`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class DataCloudflareZeroTrustDeviceIpProfile extends Data {
  static const String tfType = 'cloudflare_zero_trust_device_ip_profile';

  DataCloudflareZeroTrustDeviceIpProfile({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? profileId,
    DataZeroTrustDeviceIpProfileFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (profileId != null) 'profile_id': profileId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDeviceIpProfileSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `match` attribute.
  TfRef<String> get match => TfRef.attribute<String>(this, 'match');

  /// Reference to `precedence` attribute.
  TfRef<num> get precedence => TfRef.attribute<num>(this, 'precedence');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
