// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../connectivity/cloudflare_connectivity_directory_service.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_connectivity_directory_service`.
const Set<String> _cloudflareConnectivityDirectoryServiceSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_connectivity_directory_service` (derived from provider schema).
@immutable
final class DataConnectivityDirectoryServiceFilter {
  const DataConnectivityDirectoryServiceFilter({this.type});

  final DataConnectivityDirectoryServiceFilterType? type;

  Map<String, Object?> encode() => {'type': ?type?.toTfJson()};
}

/// `type` — derived from the provider schema description.
extension type const DataConnectivityDirectoryServiceFilterType._(
  TfArg<String> _
) implements TfArg<String> {
  DataConnectivityDirectoryServiceFilterType.variable(String name)
    : this._(TfArg.variable(name));
  DataConnectivityDirectoryServiceFilterType.expression(String template)
    : this._(TfArg.expression(template));
  const DataConnectivityDirectoryServiceFilterType.arg(TfArg<String> arg)
    : this._(arg);

  static const tcp = DataConnectivityDirectoryServiceFilterType._(
    TfArgLiteral('tcp'),
  );
  static const http = DataConnectivityDirectoryServiceFilterType._(
    TfArgLiteral('http'),
  );

  static const List<DataConnectivityDirectoryServiceFilterType> values = [
    tcp,
    http,
  ];
}

/// Factory wrapper for `cloudflare_connectivity_directory_service`.
final class DataCloudflareConnectivityDirectoryService extends Data {
  static const String tfType = 'cloudflare_connectivity_directory_service';

  DataCloudflareConnectivityDirectoryService(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? serviceId,
    DataConnectivityDirectoryServiceFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'service_id': ?serviceId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareConnectivityDirectoryServiceSensitive;

  /// A reference to the `cloudflare_connectivity_directory_service` this data source reads, for
  /// arguments typed `RefTo<CloudflareConnectivityDirectoryService>`.
  RefTo<CloudflareConnectivityDirectoryService> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `service_id` attribute.
  TfRef<String> get serviceId => TfRef.attribute<String>(this, 'service_id');
}
