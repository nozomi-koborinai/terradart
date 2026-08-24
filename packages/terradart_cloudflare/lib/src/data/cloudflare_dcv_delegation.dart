// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_dcv_delegation`.
const Set<String> _cloudflareDcvDelegationSensitive = <String>{};

/// Factory wrapper for `cloudflare_dcv_delegation`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class DataCloudflareDcvDelegation extends Data {
  static const String tfType = 'cloudflare_dcv_delegation';

  DataCloudflareDcvDelegation({required super.localName, TfArg<String>? zoneId})
    : super(
        terraformType: tfType,
        argMap: {if (zoneId != null) 'zone_id': zoneId},
      );

  @override
  Set<String> get sensitiveFields => _cloudflareDcvDelegationSensitive;

  /// Reference to `uuid` attribute.
  TfRef<String> get uuid => TfRef.attribute<String>(this, 'uuid');
}
