// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../ct/cloudflare_ct_alerting.dart';

/// Sensitive field paths for `cloudflare_ct_alerting`.
const Set<String> _cloudflareCtAlertingSensitive = <String>{};

/// Factory wrapper for `cloudflare_ct_alerting`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class DataCloudflareCtAlerting extends Data {
  static const String tfType = 'cloudflare_ct_alerting';

  DataCloudflareCtAlerting({
    required super.localName,
    required TfArg<String> zoneId,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'zone_id': zoneId});

  @override
  Set<String> get sensitiveFields => _cloudflareCtAlertingSensitive;

  /// A reference to the `cloudflare_ct_alerting` this data source reads, for
  /// arguments typed `RefTo<CloudflareCtAlerting>`.
  // ignore: invalid_use_of_internal_member
  RefTo<CloudflareCtAlerting> get ref => RefTo.read(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `emails` attribute.
  TfRef<List<String>> get emails =>
      TfRef.attribute<List<String>>(this, 'emails');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');
}
