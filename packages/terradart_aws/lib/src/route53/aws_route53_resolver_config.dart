// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_resolver_config`.
const Set<String> _awsRoute53ResolverConfigSensitive = <String>{};

/// Route53 Resolver Config Autodefined Reverse enum for `autodefined_reverse_flag`.
enum Route53ResolverConfigAutodefinedReverseFlag implements TerraformEnum {
  enable('ENABLE'),
  disable('DISABLE'),
  useLocalResourceSetting('USE_LOCAL_RESOURCE_SETTING');

  const Route53ResolverConfigAutodefinedReverseFlag(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_route53_resolver_config`.
final class AwsRoute53ResolverConfig extends Resource {
  static const String tfType = 'aws_route53_resolver_config';

  AwsRoute53ResolverConfig({
    required super.localName,
    required TfArg<Route53ResolverConfigAutodefinedReverseFlag>
    autodefinedReverseFlag,
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
           'region': ?region,
           'resource_id': resourceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53ResolverConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRoute53ResolverConfig>`.
  RefTo<AwsRoute53ResolverConfig> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `autodefined_reverse_flag` attribute.
  TfRef<String> get autodefinedReverseFlag =>
      TfRef.attribute<String>(this, 'autodefined_reverse_flag');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');
}
