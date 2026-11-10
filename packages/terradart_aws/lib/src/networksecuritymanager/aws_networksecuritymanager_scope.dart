// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networksecuritymanager_scope`.
const Set<String> _awsNetworksecuritymanagerScopeSensitive = <String>{};

/// Typed helper for the `scope_configuration` block of
/// `aws_networksecuritymanager_scope` (derived from provider schema).
@immutable
final class NetworksecuritymanagerScopeConfiguration {
  const NetworksecuritymanagerScopeConfiguration({
    this.accountFilter,
    this.resourceScope,
  });

  final List<NetworksecuritymanagerScopeAccountFilter>? accountFilter;

  final List<NetworksecuritymanagerScopeResourceScope>? resourceScope;

  @internal
  Map<String, Object?> encode() => {
    if (accountFilter != null)
      'account_filter': [for (final e in accountFilter!) e.encode()],
    if (resourceScope != null)
      'resource_scope': [for (final e in resourceScope!) e.encode()],
  };
}

/// Typed helper for the `scope_configuration.account_filter` block of
/// `aws_networksecuritymanager_scope` (derived from provider schema).
@immutable
final class NetworksecuritymanagerScopeAccountFilter {
  const NetworksecuritymanagerScopeAccountFilter({
    this.includeAll,
    this.exclude,
    this.include,
  });

  final TfArg<bool>? includeAll;

  final List<NetworksecuritymanagerScopeAccountFilterExclude>? exclude;

  final List<NetworksecuritymanagerScopeAccountFilterInclude>? include;

  @internal
  Map<String, Object?> encode() => {
    'include_all': ?includeAll?.toTfJson(),
    if (exclude != null) 'exclude': [for (final e in exclude!) e.encode()],
    if (include != null) 'include': [for (final e in include!) e.encode()],
  };
}

/// Typed helper for the `scope_configuration.account_filter.exclude` block of
/// `aws_networksecuritymanager_scope` (derived from provider schema).
@immutable
final class NetworksecuritymanagerScopeAccountFilterExclude {
  const NetworksecuritymanagerScopeAccountFilterExclude({
    this.accountIds,
    this.organizationalUnits,
  });

  final TfArg<List<String>>? accountIds;

  final TfArg<List<String>>? organizationalUnits;

  @internal
  Map<String, Object?> encode() => {
    'account_ids': ?accountIds?.toTfJson(),
    'organizational_units': ?organizationalUnits?.toTfJson(),
  };
}

/// Typed helper for the `scope_configuration.account_filter.include` block of
/// `aws_networksecuritymanager_scope` (derived from provider schema).
@immutable
final class NetworksecuritymanagerScopeAccountFilterInclude {
  const NetworksecuritymanagerScopeAccountFilterInclude({
    this.accountIds,
    this.organizationalUnits,
  });

  final TfArg<List<String>>? accountIds;

  final TfArg<List<String>>? organizationalUnits;

  @internal
  Map<String, Object?> encode() => {
    'account_ids': ?accountIds?.toTfJson(),
    'organizational_units': ?organizationalUnits?.toTfJson(),
  };
}

/// Typed helper for the `scope_configuration.resource_scope` block of
/// `aws_networksecuritymanager_scope` (derived from provider schema).
@immutable
final class NetworksecuritymanagerScopeResourceScope {
  const NetworksecuritymanagerScopeResourceScope({
    this.includeAll,
    required this.resourceType,
    this.exclude,
    this.include,
  });

  final TfArg<bool>? includeAll;

  final NetworksecuritymanagerScopeResourceType resourceType;

  final List<NetworksecuritymanagerScopeResourceScopeExclude>? exclude;

  final List<NetworksecuritymanagerScopeResourceScopeInclude>? include;

  @internal
  Map<String, Object?> encode() => {
    'include_all': ?includeAll?.toTfJson(),
    'resource_type': resourceType.toTfJson(),
    if (exclude != null) 'exclude': [for (final e in exclude!) e.encode()],
    if (include != null) 'include': [for (final e in include!) e.encode()],
  };
}

/// `resource_type` — derived from the provider schema description.
extension type const NetworksecuritymanagerScopeResourceType._(TfArg<String> _)
    implements TfArg<String> {
  NetworksecuritymanagerScopeResourceType.variable(String name)
    : this._(TfArg.variable(name));
  NetworksecuritymanagerScopeResourceType.expression(String template)
    : this._(TfArg.expression(template));
  const NetworksecuritymanagerScopeResourceType.arg(TfArg<String> arg)
    : this._(arg);

  static const awsApigatewayStage = NetworksecuritymanagerScopeResourceType._(
    TfArgLiteral('AWS::ApiGateway::Stage'),
  );
  static const awsCloudfrontDistribution =
      NetworksecuritymanagerScopeResourceType._(
        TfArgLiteral('AWS::CloudFront::Distribution'),
      );
  static const awsEc2Eip = NetworksecuritymanagerScopeResourceType._(
    TfArgLiteral('AWS::EC2::EIP'),
  );
  static const awsElasticloadbalancingv2LoadbalancerApplication =
      NetworksecuritymanagerScopeResourceType._(
        TfArgLiteral('AWS::ElasticLoadBalancingV2::LoadBalancer::application'),
      );
  static const awsElasticloadbalancingLoadbalancer =
      NetworksecuritymanagerScopeResourceType._(
        TfArgLiteral('AWS::ElasticLoadBalancing::LoadBalancer'),
      );

  static const List<NetworksecuritymanagerScopeResourceType> values = [
    awsApigatewayStage,
    awsCloudfrontDistribution,
    awsEc2Eip,
    awsElasticloadbalancingv2LoadbalancerApplication,
    awsElasticloadbalancingLoadbalancer,
  ];
}

/// Typed helper for the `scope_configuration.resource_scope.exclude` block of
/// `aws_networksecuritymanager_scope` (derived from provider schema).
@immutable
final class NetworksecuritymanagerScopeResourceScopeExclude {
  const NetworksecuritymanagerScopeResourceScopeExclude({
    this.explicitArns,
    this.expression,
  });

  final TfArg<List<String>>? explicitArns;

  final List<NetworksecuritymanagerScopeExpression>? expression;

  @internal
  Map<String, Object?> encode() => {
    'explicit_arns': ?explicitArns?.toTfJson(),
    if (expression != null)
      'expression': [for (final e in expression!) e.encode()],
  };
}

/// Typed helper for the `scope_configuration.resource_scope.exclude.expression` block of
/// `aws_networksecuritymanager_scope` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class NetworksecuritymanagerScopeExpression {
  const NetworksecuritymanagerScopeExpression({
    this.and,
    this.criteria,
    this.not,
    this.or,
  });

  final List<NetworksecuritymanagerScopeAnd>? and;

  final List<NetworksecuritymanagerScopeCriteria>? criteria;

  final List<NetworksecuritymanagerScopeNot>? not;

  final List<NetworksecuritymanagerScopeOr>? or;

  @internal
  Map<String, Object?> encode() => {
    if (and != null) 'and': [for (final e in and!) e.encode()],
    if (criteria != null) 'criteria': [for (final e in criteria!) e.encode()],
    if (not != null) 'not': [for (final e in not!) e.encode()],
    if (or != null) 'or': [for (final e in or!) e.encode()],
  };
}

/// Typed helper for the `scope_configuration.resource_scope.exclude.expression.and` block of
/// `aws_networksecuritymanager_scope` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class NetworksecuritymanagerScopeAnd {
  const NetworksecuritymanagerScopeAnd({this.tags, this.albConfig});

  final TfArg<Map<String, String>>? tags;

  final List<NetworksecuritymanagerScopeAlbConfig>? albConfig;

  @internal
  Map<String, Object?> encode() => {
    'tags': ?tags?.toTfJson(),
    if (albConfig != null)
      'alb_config': [for (final e in albConfig!) e.encode()],
  };
}

/// Typed helper for the `scope_configuration.resource_scope.exclude.expression.and.alb_config` block of
/// `aws_networksecuritymanager_scope` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class NetworksecuritymanagerScopeAlbConfig {
  const NetworksecuritymanagerScopeAlbConfig({this.ipAddressType, this.scheme});

  final NetworksecuritymanagerScopeIpAddressType? ipAddressType;

  final NetworksecuritymanagerScopeScheme? scheme;

  @internal
  Map<String, Object?> encode() => {
    'ip_address_type': ?ipAddressType?.toTfJson(),
    'scheme': ?scheme?.toTfJson(),
  };
}

/// `ip_address_type` — derived from the provider schema description.
extension type const NetworksecuritymanagerScopeIpAddressType._(TfArg<String> _)
    implements TfArg<String> {
  NetworksecuritymanagerScopeIpAddressType.variable(String name)
    : this._(TfArg.variable(name));
  NetworksecuritymanagerScopeIpAddressType.expression(String template)
    : this._(TfArg.expression(template));
  const NetworksecuritymanagerScopeIpAddressType.arg(TfArg<String> arg)
    : this._(arg);

  static const ipv4 = NetworksecuritymanagerScopeIpAddressType._(
    TfArgLiteral('ipv4'),
  );
  static const dualstack = NetworksecuritymanagerScopeIpAddressType._(
    TfArgLiteral('dualstack'),
  );
  static const dualstackWithoutPublicIpv4 =
      NetworksecuritymanagerScopeIpAddressType._(
        TfArgLiteral('dualstack-without-public-ipv4'),
      );

  static const List<NetworksecuritymanagerScopeIpAddressType> values = [
    ipv4,
    dualstack,
    dualstackWithoutPublicIpv4,
  ];
}

/// `scheme` — derived from the provider schema description.
extension type const NetworksecuritymanagerScopeScheme._(TfArg<String> _)
    implements TfArg<String> {
  NetworksecuritymanagerScopeScheme.variable(String name)
    : this._(TfArg.variable(name));
  NetworksecuritymanagerScopeScheme.expression(String template)
    : this._(TfArg.expression(template));
  const NetworksecuritymanagerScopeScheme.arg(TfArg<String> arg) : this._(arg);

  static const internetFacing = NetworksecuritymanagerScopeScheme._(
    TfArgLiteral('internet-facing'),
  );
  static const internal = NetworksecuritymanagerScopeScheme._(
    TfArgLiteral('internal'),
  );

  static const List<NetworksecuritymanagerScopeScheme> values = [
    internetFacing,
    internal,
  ];
}

/// Typed helper for the `scope_configuration.resource_scope.exclude.expression.criteria` block of
/// `aws_networksecuritymanager_scope` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class NetworksecuritymanagerScopeCriteria {
  const NetworksecuritymanagerScopeCriteria({this.tags, this.albConfig});

  final TfArg<Map<String, String>>? tags;

  final List<NetworksecuritymanagerScopeAlbConfig>? albConfig;

  @internal
  Map<String, Object?> encode() => {
    'tags': ?tags?.toTfJson(),
    if (albConfig != null)
      'alb_config': [for (final e in albConfig!) e.encode()],
  };
}

/// Typed helper for the `scope_configuration.resource_scope.exclude.expression.not` block of
/// `aws_networksecuritymanager_scope` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class NetworksecuritymanagerScopeNot {
  const NetworksecuritymanagerScopeNot({this.tags, this.albConfig});

  final TfArg<Map<String, String>>? tags;

  final List<NetworksecuritymanagerScopeAlbConfig>? albConfig;

  @internal
  Map<String, Object?> encode() => {
    'tags': ?tags?.toTfJson(),
    if (albConfig != null)
      'alb_config': [for (final e in albConfig!) e.encode()],
  };
}

/// Typed helper for the `scope_configuration.resource_scope.exclude.expression.or` block of
/// `aws_networksecuritymanager_scope` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class NetworksecuritymanagerScopeOr {
  const NetworksecuritymanagerScopeOr({this.tags, this.albConfig});

  final TfArg<Map<String, String>>? tags;

  final List<NetworksecuritymanagerScopeAlbConfig>? albConfig;

  @internal
  Map<String, Object?> encode() => {
    'tags': ?tags?.toTfJson(),
    if (albConfig != null)
      'alb_config': [for (final e in albConfig!) e.encode()],
  };
}

/// Typed helper for the `scope_configuration.resource_scope.include` block of
/// `aws_networksecuritymanager_scope` (derived from provider schema).
@immutable
final class NetworksecuritymanagerScopeResourceScopeInclude {
  const NetworksecuritymanagerScopeResourceScopeInclude({
    this.explicitArns,
    this.expression,
  });

  final TfArg<List<String>>? explicitArns;

  final List<NetworksecuritymanagerScopeExpression>? expression;

  @internal
  Map<String, Object?> encode() => {
    'explicit_arns': ?explicitArns?.toTfJson(),
    if (expression != null)
      'expression': [for (final e in expression!) e.encode()],
  };
}

/// Factory wrapper for `aws_networksecuritymanager_scope`.
final class AwsNetworksecuritymanagerScope extends Resource {
  static const String tfType = 'aws_networksecuritymanager_scope';

  AwsNetworksecuritymanagerScope(
    super.localName, {
    TfArg<String>? description,
    TfArg<bool>? isPublished,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<NetworksecuritymanagerScopeConfiguration>? scopeConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'is_published': ?isPublished,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           if (scopeConfiguration != null)
             'scope_configuration': TfArg.literal([
               for (final e in scopeConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworksecuritymanagerScopeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworksecuritymanagerScope>`.
  RefTo<AwsNetworksecuritymanagerScope> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `is_published` attribute.
  TfRef<bool> get isPublished => TfRef.attribute<bool>(this, 'is_published');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
