// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafregional_web_acl_association`.
const Set<String> _awsWafregionalWebAclAssociationSensitive = <String>{};

/// Factory wrapper for `aws_wafregional_web_acl_association`.
final class AwsWafregionalWebAclAssociation extends Resource {
  static const String tfType = 'aws_wafregional_web_acl_association';

  AwsWafregionalWebAclAssociation({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> resourceArn,
    required TfArg<String> webAclId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'resource_arn': resourceArn,
           'web_acl_id': webAclId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafregionalWebAclAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWafregionalWebAclAssociation>`.
  RefTo<AwsWafregionalWebAclAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');

  /// Reference to `web_acl_id` attribute.
  TfRef<String> get webAclId => TfRef.attribute<String>(this, 'web_acl_id');
}
