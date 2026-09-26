// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafv2_web_acl`.
const Set<String> _awsWafv2WebAclSensitive = <String>{};

/// Factory wrapper for `aws_wafv2_web_acl`.
final class DataAwsWafv2WebAcl extends Data {
  static const String tfType = 'aws_wafv2_web_acl';

  DataAwsWafv2WebAcl({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<String>? resourceArn,
    required TfArg<String> scope,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           if (resourceArn != null) 'resource_arn': resourceArn,
           'scope': scope,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafv2WebAclSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');
}
