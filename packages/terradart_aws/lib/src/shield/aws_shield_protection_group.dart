// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_shield_protection_group`.
const Set<String> _awsShieldProtectionGroupSensitive = <String>{};

/// Shield Protection Group enum for `aggregation`.
extension type const ShieldProtectionGroupAggregation._(TfArg<String> _)
    implements TfArg<String> {
  ShieldProtectionGroupAggregation.variable(String name)
    : this._(TfArg.variable(name));
  ShieldProtectionGroupAggregation.expression(String template)
    : this._(TfArg.expression(template));
  const ShieldProtectionGroupAggregation.arg(TfArg<String> arg) : this._(arg);

  static const sum = ShieldProtectionGroupAggregation._(TfArgLiteral('SUM'));
  static const mean = ShieldProtectionGroupAggregation._(TfArgLiteral('MEAN'));
  static const max = ShieldProtectionGroupAggregation._(TfArgLiteral('MAX'));

  static const List<ShieldProtectionGroupAggregation> values = [sum, mean, max];
}

/// Shield Protection Group enum for `pattern`.
extension type const ShieldProtectionGroupPattern._(TfArg<String> _)
    implements TfArg<String> {
  ShieldProtectionGroupPattern.variable(String name)
    : this._(TfArg.variable(name));
  ShieldProtectionGroupPattern.expression(String template)
    : this._(TfArg.expression(template));
  const ShieldProtectionGroupPattern.arg(TfArg<String> arg) : this._(arg);

  static const all = ShieldProtectionGroupPattern._(TfArgLiteral('ALL'));
  static const arbitrary = ShieldProtectionGroupPattern._(
    TfArgLiteral('ARBITRARY'),
  );
  static const byResourceType = ShieldProtectionGroupPattern._(
    TfArgLiteral('BY_RESOURCE_TYPE'),
  );

  static const List<ShieldProtectionGroupPattern> values = [
    all,
    arbitrary,
    byResourceType,
  ];
}

/// Shield Protection Group Resource enum for `resource_type`.
extension type const ShieldProtectionGroupResourceType._(TfArg<String> _)
    implements TfArg<String> {
  ShieldProtectionGroupResourceType.variable(String name)
    : this._(TfArg.variable(name));
  ShieldProtectionGroupResourceType.expression(String template)
    : this._(TfArg.expression(template));
  const ShieldProtectionGroupResourceType.arg(TfArg<String> arg) : this._(arg);

  static const cloudfrontDistribution = ShieldProtectionGroupResourceType._(
    TfArgLiteral('CLOUDFRONT_DISTRIBUTION'),
  );
  static const route53HostedZone = ShieldProtectionGroupResourceType._(
    TfArgLiteral('ROUTE_53_HOSTED_ZONE'),
  );
  static const elasticIpAllocation = ShieldProtectionGroupResourceType._(
    TfArgLiteral('ELASTIC_IP_ALLOCATION'),
  );
  static const classicLoadBalancer = ShieldProtectionGroupResourceType._(
    TfArgLiteral('CLASSIC_LOAD_BALANCER'),
  );
  static const applicationLoadBalancer = ShieldProtectionGroupResourceType._(
    TfArgLiteral('APPLICATION_LOAD_BALANCER'),
  );
  static const globalAccelerator = ShieldProtectionGroupResourceType._(
    TfArgLiteral('GLOBAL_ACCELERATOR'),
  );

  static const List<ShieldProtectionGroupResourceType> values = [
    cloudfrontDistribution,
    route53HostedZone,
    elasticIpAllocation,
    classicLoadBalancer,
    applicationLoadBalancer,
    globalAccelerator,
  ];
}

/// At most one of `members`, `resource_type` on `aws_shield_protection_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.members(...)`.
sealed class ShieldProtectionGroupScope {
  const ShieldProtectionGroupScope();

  /// Sets `members`.
  const factory ShieldProtectionGroupScope.members(
    TfArg<List<String>> members,
  ) = ShieldProtectionGroupScopeMembers;

  /// Sets `resource_type`.
  const factory ShieldProtectionGroupScope.resourceType(
    ShieldProtectionGroupResourceType resourceType,
  ) = ShieldProtectionGroupScopeResourceType;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ShieldProtectionGroupScope.members] choice: sets `members`.
final class ShieldProtectionGroupScopeMembers
    extends ShieldProtectionGroupScope {
  const ShieldProtectionGroupScopeMembers(this.members);

  final TfArg<List<String>> members;

  @override
  String get blockKey => 'members';

  @override
  Map<String, Object?> encode() => {'members': members.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'members': members};
}

/// The [ShieldProtectionGroupScope.resourceType] choice: sets `resource_type`.
final class ShieldProtectionGroupScopeResourceType
    extends ShieldProtectionGroupScope {
  const ShieldProtectionGroupScopeResourceType(this.resourceType);

  final ShieldProtectionGroupResourceType resourceType;

  @override
  String get blockKey => 'resource_type';

  @override
  Map<String, Object?> encode() => {'resource_type': resourceType.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'resource_type': resourceType};
}

/// Factory wrapper for `aws_shield_protection_group`.
final class AwsShieldProtectionGroup extends Resource {
  static const String tfType = 'aws_shield_protection_group';

  AwsShieldProtectionGroup(
    super.localName, {
    required ShieldProtectionGroupAggregation aggregation,
    ShieldProtectionGroupScope? scope,
    required ShieldProtectionGroupPattern pattern,
    required TfArg<String> protectionGroupId,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aggregation': aggregation,
           ...?scope?.argMap,
           'pattern': pattern,
           'protection_group_id': protectionGroupId,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsShieldProtectionGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsShieldProtectionGroup>`.
  RefTo<AwsShieldProtectionGroup> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `protection_group_arn` attribute.
  TfRef<String> get protectionGroupArn =>
      TfRef.attribute<String>(this, 'protection_group_arn');

  /// Reference to `aggregation` attribute.
  TfRef<String> get aggregation => TfRef.attribute<String>(this, 'aggregation');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `pattern` attribute.
  TfRef<String> get pattern => TfRef.attribute<String>(this, 'pattern');

  /// Reference to `protection_group_id` attribute.
  TfRef<String> get protectionGroupId =>
      TfRef.attribute<String>(this, 'protection_group_id');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceType =>
      TfRef.attribute<String>(this, 'resource_type');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
