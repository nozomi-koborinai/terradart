// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafv2_web_acl_association`.
const Set<String> _awsWafv2WebAclAssociationSensitive = <String>{};

/// Factory wrapper for `aws_wafv2_web_acl_association`.
final class AwsWafv2WebAclAssociation extends Resource {
  static const String tfType = 'aws_wafv2_web_acl_association';

  AwsWafv2WebAclAssociation({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> resourceArn,
    required TfArg<String> webAclArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'resource_arn': resourceArn,
           'web_acl_arn': webAclArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafv2WebAclAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWafv2WebAclAssociation>`.
  RefTo<AwsWafv2WebAclAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');

  /// Reference to `web_acl_arn` attribute.
  TfRef<String> get webAclArn => TfRef.attribute<String>(this, 'web_acl_arn');
}
