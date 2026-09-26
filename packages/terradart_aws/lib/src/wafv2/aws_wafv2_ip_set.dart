// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafv2_ip_set`.
const Set<String> _awsWafv2IpSetSensitive = <String>{};

/// Factory wrapper for `aws_wafv2_ip_set`.
final class AwsWafv2IpSet extends Resource {
  static const String tfType = 'aws_wafv2_ip_set';

  AwsWafv2IpSet({
    required super.localName,
    TfArg<List<String>>? addresses,
    TfArg<String>? description,
    required TfArg<String> ipAddressVersion,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<String>? region,
    required TfArg<String> scope,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (addresses != null) 'addresses': addresses,
           if (description != null) 'description': description,
           'ip_address_version': ipAddressVersion,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (region != null) 'region': region,
           'scope': scope,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafv2IpSetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `lock_token` attribute.
  TfRef<String> get lockToken => TfRef.attribute<String>(this, 'lock_token');
}
