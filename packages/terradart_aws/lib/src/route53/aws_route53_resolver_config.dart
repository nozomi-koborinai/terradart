// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_resolver_config`.
const Set<String> _awsRoute53ResolverConfigSensitive = <String>{};

/// Factory wrapper for `aws_route53_resolver_config`.
final class AwsRoute53ResolverConfig extends Resource {
  static const String tfType = 'aws_route53_resolver_config';

  AwsRoute53ResolverConfig({
    required super.localName,
    required TfArg<String> autodefinedReverseFlag,
    TfArg<String>? region,
    required TfArg<String> resourceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'autodefined_reverse_flag': autodefinedReverseFlag,
           if (region != null) 'region': region,
           'resource_id': resourceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53ResolverConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');
}
