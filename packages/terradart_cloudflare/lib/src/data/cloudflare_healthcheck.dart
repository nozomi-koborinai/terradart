// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_healthcheck`.
const Set<String> _cloudflareHealthcheckSensitive = <String>{};

/// Factory wrapper for `cloudflare_healthcheck`.
///
/// Accepted Permissions
///
/// - `Health Checks Read` - `Health Checks Write`
final class DataCloudflareHealthcheck extends Data {
  static const String tfType = 'cloudflare_healthcheck';

  DataCloudflareHealthcheck({
    required super.localName,
    required TfArg<String> healthcheckId,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'healthcheck_id': healthcheckId,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareHealthcheckSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `address` attribute.
  TfRef<String> get address => TfRef.attribute<String>(this, 'address');

  /// Reference to `check_regions` attribute.
  TfRef<List<String>> get checkRegions =>
      TfRef.attribute<List<String>>(this, 'check_regions');

  /// Reference to `consecutive_fails` attribute.
  TfRef<num> get consecutiveFails =>
      TfRef.attribute<num>(this, 'consecutive_fails');

  /// Reference to `consecutive_successes` attribute.
  TfRef<num> get consecutiveSuccesses =>
      TfRef.attribute<num>(this, 'consecutive_successes');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `failure_reason` attribute.
  TfRef<String> get failureReason =>
      TfRef.attribute<String>(this, 'failure_reason');

  /// Reference to `interval` attribute.
  TfRef<num> get interval => TfRef.attribute<num>(this, 'interval');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `retries` attribute.
  TfRef<num> get retries => TfRef.attribute<num>(this, 'retries');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `suspended` attribute.
  TfRef<bool> get suspended => TfRef.attribute<bool>(this, 'suspended');

  /// Reference to `timeout` attribute.
  TfRef<num> get timeout => TfRef.attribute<num>(this, 'timeout');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
