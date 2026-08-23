// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_connectivity_directory_service`.
const Set<String> _cloudflareConnectivityDirectoryServiceSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_connectivity_directory_service` (derived from provider schema).
@immutable
final class DataConnectivityDirectoryServiceFilter {
  const DataConnectivityDirectoryServiceFilter({this.type});

  final TfArg<String>? type;

  Map<String, Object?> encode() => {if (type != null) 'type': type!.toTfJson()};
}

/// Factory wrapper for `cloudflare_connectivity_directory_service`.
final class DataCloudflareConnectivityDirectoryService extends Data {
  static const String tfType = 'cloudflare_connectivity_directory_service';

  DataCloudflareConnectivityDirectoryService({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? serviceId,
    DataConnectivityDirectoryServiceFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (serviceId != null) 'service_id': serviceId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareConnectivityDirectoryServiceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `app_protocol` attribute.
  TfRef<String> get appProtocol =>
      TfRef.attribute<String>(this, 'app_protocol');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `http_port` attribute.
  TfRef<num> get httpPort => TfRef.attribute<num>(this, 'http_port');

  /// Reference to `https_port` attribute.
  TfRef<num> get httpsPort => TfRef.attribute<num>(this, 'https_port');

  /// Reference to `tcp_port` attribute.
  TfRef<num> get tcpPort => TfRef.attribute<num>(this, 'tcp_port');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
