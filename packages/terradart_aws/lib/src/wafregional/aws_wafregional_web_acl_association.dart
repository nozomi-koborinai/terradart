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
           if (region != null) 'region': region,
           'resource_arn': resourceArn,
           'web_acl_id': webAclId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafregionalWebAclAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
