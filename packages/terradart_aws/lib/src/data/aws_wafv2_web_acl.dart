// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../wafv2/aws_wafv2_web_acl.dart';

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
           'name': ?name,
           'region': ?region,
           'resource_arn': ?resourceArn,
           'scope': scope,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafv2WebAclSensitive;

  /// A reference to the `aws_wafv2_web_acl` this data source reads, for
  /// arguments typed `RefTo<AwsWafv2WebAcl>`.
  RefTo<AwsWafv2WebAcl> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArnRef =>
      TfRef.attribute<String>(this, 'resource_arn');

  /// Reference to `scope` attribute.
  TfRef<String> get scopeRef => TfRef.attribute<String>(this, 'scope');
}
