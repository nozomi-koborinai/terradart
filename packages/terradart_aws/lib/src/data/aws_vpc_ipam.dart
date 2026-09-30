// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../ec2/aws_vpc_ipam.dart';

/// Sensitive field paths for `aws_vpc_ipam`.
const Set<String> _awsVpcIpamSensitive = <String>{};

/// Factory wrapper for `aws_vpc_ipam`.
final class DataAwsVpcIpam extends Data {
  static const String tfType = 'aws_vpc_ipam';

  DataAwsVpcIpam({
    required super.localName,
    required TfArg<String> id,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'id': id, 'region': ?region});

  @override
  Set<String> get sensitiveFields => _awsVpcIpamSensitive;

  /// A reference to the `aws_vpc_ipam` this data source reads, for
  /// arguments typed `RefTo<AwsVpcIpam>`.
  RefTo<AwsVpcIpam> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `default_resource_discovery_association_id` attribute.
  TfRef<String> get defaultResourceDiscoveryAssociationId =>
      TfRef.attribute<String>(
        this,
        'default_resource_discovery_association_id',
      );

  /// Reference to `default_resource_discovery_id` attribute.
  TfRef<String> get defaultResourceDiscoveryId =>
      TfRef.attribute<String>(this, 'default_resource_discovery_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enable_private_gua` attribute.
  TfRef<bool> get enablePrivateGua =>
      TfRef.attribute<bool>(this, 'enable_private_gua');

  /// Reference to `ipam_region` attribute.
  TfRef<String> get ipamRegion => TfRef.attribute<String>(this, 'ipam_region');

  /// Reference to `metered_account` attribute.
  TfRef<String> get meteredAccount =>
      TfRef.attribute<String>(this, 'metered_account');

  /// Reference to `operating_regions` attribute.
  TfRef<List<Map<String, Object?>>> get operatingRegions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'operating_regions');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `private_default_scope_id` attribute.
  TfRef<String> get privateDefaultScopeId =>
      TfRef.attribute<String>(this, 'private_default_scope_id');

  /// Reference to `public_default_scope_id` attribute.
  TfRef<String> get publicDefaultScopeId =>
      TfRef.attribute<String>(this, 'public_default_scope_id');

  /// Reference to `resource_discovery_association_count` attribute.
  TfRef<num> get resourceDiscoveryAssociationCount =>
      TfRef.attribute<num>(this, 'resource_discovery_association_count');

  /// Reference to `scope_count` attribute.
  TfRef<num> get scopeCount => TfRef.attribute<num>(this, 'scope_count');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_message` attribute.
  TfRef<String> get stateMessage =>
      TfRef.attribute<String>(this, 'state_message');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tier` attribute.
  TfRef<String> get tier => TfRef.attribute<String>(this, 'tier');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
