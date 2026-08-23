// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_r2_data_catalog`.
const Set<String> _cloudflareR2DataCatalogSensitive = <String>{};

/// Factory wrapper for `cloudflare_r2_data_catalog`.
///
/// Accepted Permissions
///
/// - `Workers R2 Data Catalog Read` - `Workers R2 Data Catalog Write`
final class DataCloudflareR2DataCatalog extends Data {
  static const String tfType = 'cloudflare_r2_data_catalog';

  DataCloudflareR2DataCatalog({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> bucketName,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'bucket_name': bucketName,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareR2DataCatalogSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `credential_status` attribute.
  TfRef<String> get credentialStatus =>
      TfRef.attribute<String>(this, 'credential_status');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
