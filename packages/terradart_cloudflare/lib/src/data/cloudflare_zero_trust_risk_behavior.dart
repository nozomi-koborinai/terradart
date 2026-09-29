// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_risk_behavior.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_risk_behavior`.
const Set<String> _cloudflareZeroTrustRiskBehaviorSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_risk_behavior`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class DataCloudflareZeroTrustRiskBehavior extends Data {
  static const String tfType = 'cloudflare_zero_trust_risk_behavior';

  DataCloudflareZeroTrustRiskBehavior({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': ?accountId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustRiskBehaviorSensitive;

  /// A reference to the `cloudflare_zero_trust_risk_behavior` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustRiskBehavior>`.
  RefTo<CloudflareZeroTrustRiskBehavior> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member
}
