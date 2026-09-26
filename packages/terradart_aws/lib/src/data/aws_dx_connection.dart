// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dx_connection`.
const Set<String> _awsDxConnectionSensitive = <String>{};

/// Factory wrapper for `aws_dx_connection`.
final class DataAwsDxConnection extends Data {
  static const String tfType = 'aws_dx_connection';

  DataAwsDxConnection({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDxConnectionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `aws_device` attribute.
  TfRef<String> get awsDevice => TfRef.attribute<String>(this, 'aws_device');

  /// Reference to `bandwidth` attribute.
  TfRef<String> get bandwidth => TfRef.attribute<String>(this, 'bandwidth');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `owner_account_id` attribute.
  TfRef<String> get ownerAccountId =>
      TfRef.attribute<String>(this, 'owner_account_id');

  /// Reference to `partner_name` attribute.
  TfRef<String> get partnerName =>
      TfRef.attribute<String>(this, 'partner_name');

  /// Reference to `prefix_pool_size_ipv4` attribute.
  TfRef<num> get prefixPoolSizeIpv4 =>
      TfRef.attribute<num>(this, 'prefix_pool_size_ipv4');

  /// Reference to `prefix_pool_size_ipv6` attribute.
  TfRef<num> get prefixPoolSizeIpv6 =>
      TfRef.attribute<num>(this, 'prefix_pool_size_ipv6');

  /// Reference to `prefix_pool_unallocated_count_ipv4` attribute.
  TfRef<num> get prefixPoolUnallocatedCountIpv4 =>
      TfRef.attribute<num>(this, 'prefix_pool_unallocated_count_ipv4');

  /// Reference to `prefix_pool_unallocated_count_ipv6` attribute.
  TfRef<num> get prefixPoolUnallocatedCountIpv6 =>
      TfRef.attribute<num>(this, 'prefix_pool_unallocated_count_ipv6');

  /// Reference to `provider_name` attribute.
  TfRef<String> get providerName =>
      TfRef.attribute<String>(this, 'provider_name');

  /// Reference to `rate_limiter_status` attribute.
  TfRef<List<Map<String, Object?>>> get rateLimiterStatus =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'rate_limiter_status');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `vlan_id` attribute.
  TfRef<num> get vlanId => TfRef.attribute<num>(this, 'vlan_id');
}
