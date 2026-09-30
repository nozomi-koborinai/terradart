// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_shield_protection_group`.
const Set<String> _awsShieldProtectionGroupSensitive = <String>{};

/// Shield Protection Group enum for `aggregation`.
enum ShieldProtectionGroupAggregation implements TerraformEnum {
  sum('SUM'),
  mean('MEAN'),
  max('MAX');

  const ShieldProtectionGroupAggregation(this.terraformValue);
  @override
  final String terraformValue;
}

/// Shield Protection Group enum for `pattern`.
enum ShieldProtectionGroupPattern implements TerraformEnum {
  all('ALL'),
  arbitrary('ARBITRARY'),
  byResourceType('BY_RESOURCE_TYPE');

  const ShieldProtectionGroupPattern(this.terraformValue);
  @override
  final String terraformValue;
}

/// Shield Protection Group Resource enum for `resource_type`.
enum ShieldProtectionGroupResourceType implements TerraformEnum {
  cloudfrontDistribution('CLOUDFRONT_DISTRIBUTION'),
  route53HostedZone('ROUTE_53_HOSTED_ZONE'),
  elasticIpAllocation('ELASTIC_IP_ALLOCATION'),
  classicLoadBalancer('CLASSIC_LOAD_BALANCER'),
  applicationLoadBalancer('APPLICATION_LOAD_BALANCER'),
  globalAccelerator('GLOBAL_ACCELERATOR');

  const ShieldProtectionGroupResourceType(this.terraformValue);
  @override
  final String terraformValue;
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
    TfArg<ShieldProtectionGroupResourceType> resourceType,
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

  final TfArg<ShieldProtectionGroupResourceType> resourceType;

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

  AwsShieldProtectionGroup({
    required super.localName,
    required TfArg<ShieldProtectionGroupAggregation> aggregation,
    ShieldProtectionGroupScope? scope,
    required TfArg<ShieldProtectionGroupPattern> pattern,
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
  TfRef<String> get aggregationRef =>
      TfRef.attribute<String>(this, 'aggregation');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `pattern` attribute.
  TfRef<String> get patternRef => TfRef.attribute<String>(this, 'pattern');

  /// Reference to `protection_group_id` attribute.
  TfRef<String> get protectionGroupIdRef =>
      TfRef.attribute<String>(this, 'protection_group_id');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceTypeRef =>
      TfRef.attribute<String>(this, 'resource_type');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
