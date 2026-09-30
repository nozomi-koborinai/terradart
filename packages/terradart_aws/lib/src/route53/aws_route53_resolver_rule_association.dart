// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_route53_resolver_rule_association`.
const Set<String> _awsRoute53ResolverRuleAssociationSensitive = <String>{};

/// Factory wrapper for `aws_route53_resolver_rule_association`.
final class AwsRoute53ResolverRuleAssociation extends Resource {
  static const String tfType = 'aws_route53_resolver_rule_association';

  AwsRoute53ResolverRuleAssociation({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? region,
    required TfArg<String> resolverRuleId,
    required RefTo<AwsVpc> vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': ?name,
           'region': ?region,
           'resolver_rule_id': resolverRuleId,
           'vpc_id': vpcId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsRoute53ResolverRuleAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRoute53ResolverRuleAssociation>`.
  RefTo<AwsRoute53ResolverRuleAssociation> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `resolver_rule_id` attribute.
  TfRef<String> get resolverRuleIdRef =>
      TfRef.attribute<String>(this, 'resolver_rule_id');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcIdRef => TfRef.attribute<String>(this, 'vpc_id');
}
