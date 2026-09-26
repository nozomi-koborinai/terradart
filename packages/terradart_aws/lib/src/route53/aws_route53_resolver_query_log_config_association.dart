// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_resolver_query_log_config_association`.
const Set<String> _awsRoute53ResolverQueryLogConfigAssociationSensitive =
    <String>{};

/// Factory wrapper for `aws_route53_resolver_query_log_config_association`.
final class AwsRoute53ResolverQueryLogConfigAssociation extends Resource {
  static const String tfType =
      'aws_route53_resolver_query_log_config_association';

  AwsRoute53ResolverQueryLogConfigAssociation({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> resolverQueryLogConfigId,
    required TfArg<String> resourceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'resolver_query_log_config_id': resolverQueryLogConfigId,
           'resource_id': resourceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsRoute53ResolverQueryLogConfigAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
