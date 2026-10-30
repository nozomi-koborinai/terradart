// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_connectivity_directory_services`.
const Set<String> _cloudflareConnectivityDirectoryServicesSensitive =
    <String>{};

/// Data Connectivity Directory Services enum for `type`.
extension type const DataConnectivityDirectoryServicesType._(TfArg<String> _)
    implements TfArg<String> {
  DataConnectivityDirectoryServicesType.variable(String name)
    : this._(TfArg.variable(name));
  DataConnectivityDirectoryServicesType.expression(String template)
    : this._(TfArg.expression(template));
  const DataConnectivityDirectoryServicesType.arg(TfArg<String> arg)
    : this._(arg);

  static const tcp = DataConnectivityDirectoryServicesType._(
    TfArgLiteral('tcp'),
  );
  static const http = DataConnectivityDirectoryServicesType._(
    TfArgLiteral('http'),
  );

  static const List<DataConnectivityDirectoryServicesType> values = [tcp, http];
}

/// Factory wrapper for `cloudflare_connectivity_directory_services`.
final class DataCloudflareConnectivityDirectoryServices extends Data {
  static const String tfType = 'cloudflare_connectivity_directory_services';

  DataCloudflareConnectivityDirectoryServices(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    TfArg<num>? maxItems,
    DataConnectivityDirectoryServicesType? type,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'max_items': ?maxItems,
           'type': ?type,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareConnectivityDirectoryServicesSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
