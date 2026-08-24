// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_hyperdrive_config`.
const Set<String> _cloudflareHyperdriveConfigSensitive = <String>{
  'origin.access_client_secret',
  'origin.password',
};

/// Factory wrapper for `cloudflare_hyperdrive_config`.
///
/// Accepted Permissions
///
/// - `Hyperdrive Read` - `Hyperdrive Write`
final class DataCloudflareHyperdriveConfig extends Data {
  static const String tfType = 'cloudflare_hyperdrive_config';

  DataCloudflareHyperdriveConfig({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> hyperdriveId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'hyperdrive_id': hyperdriveId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareHyperdriveConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `origin_connection_limit` attribute.
  TfRef<num> get originConnectionLimit =>
      TfRef.attribute<num>(this, 'origin_connection_limit');

  /// Reference to `restarted_on` attribute.
  TfRef<String> get restartedOn =>
      TfRef.attribute<String>(this, 'restarted_on');
}
