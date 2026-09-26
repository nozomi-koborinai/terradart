// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafv2_ip_set`.
const Set<String> _awsWafv2IpSetSensitive = <String>{};

/// Factory wrapper for `aws_wafv2_ip_set`.
final class DataAwsWafv2IpSet extends Data {
  static const String tfType = 'aws_wafv2_ip_set';

  DataAwsWafv2IpSet({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> scope,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           'scope': scope,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafv2IpSetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `addresses` attribute.
  TfRef<List<String>> get addresses =>
      TfRef.attribute<List<String>>(this, 'addresses');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `ip_address_version` attribute.
  TfRef<String> get ipAddressVersion =>
      TfRef.attribute<String>(this, 'ip_address_version');
}
