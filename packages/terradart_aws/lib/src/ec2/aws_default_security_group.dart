// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_default_security_group`.
const Set<String> _awsDefaultSecurityGroupSensitive = <String>{};

/// Factory wrapper for `aws_default_security_group`.
final class AwsDefaultSecurityGroup extends Resource {
  static const String tfType = 'aws_default_security_group';

  AwsDefaultSecurityGroup({
    required super.localName,
    TfArg<List<Map<String, Object?>>>? egress,
    TfArg<List<Map<String, Object?>>>? ingress,
    TfArg<String>? region,
    TfArg<bool>? revokeRulesOnDelete,
    TfArg<Map<String, String>>? tags,
    RefTo<AwsVpc>? vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'egress': ?egress,
           'ingress': ?ingress,
           'region': ?region,
           'revoke_rules_on_delete': ?revokeRulesOnDelete,
           'tags': ?tags,
           'vpc_id': ?vpcId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDefaultSecurityGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDefaultSecurityGroup>`.
  RefTo<AwsDefaultSecurityGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `egress` attribute.
  TfRef<List<Map<String, Object?>>> get egress =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'egress');

  /// Reference to `ingress` attribute.
  TfRef<List<Map<String, Object?>>> get ingress =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ingress');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `revoke_rules_on_delete` attribute.
  TfRef<bool> get revokeRulesOnDelete =>
      TfRef.attribute<bool>(this, 'revoke_rules_on_delete');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
