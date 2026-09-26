// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_ipam_resource_discovery_association`.
const Set<String> _awsVpcIpamResourceDiscoveryAssociationSensitive = <String>{};

/// Factory wrapper for `aws_vpc_ipam_resource_discovery_association`.
final class AwsVpcIpamResourceDiscoveryAssociation extends Resource {
  static const String tfType = 'aws_vpc_ipam_resource_discovery_association';

  AwsVpcIpamResourceDiscoveryAssociation({
    required super.localName,
    required TfArg<String> ipamId,
    required TfArg<String> ipamResourceDiscoveryId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'ipam_id': ipamId,
           'ipam_resource_discovery_id': ipamResourceDiscoveryId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsVpcIpamResourceDiscoveryAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `ipam_arn` attribute.
  TfRef<String> get ipamArn => TfRef.attribute<String>(this, 'ipam_arn');

  /// Reference to `ipam_region` attribute.
  TfRef<String> get ipamRegion => TfRef.attribute<String>(this, 'ipam_region');

  /// Reference to `is_default` attribute.
  TfRef<bool> get isDefault => TfRef.attribute<bool>(this, 'is_default');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
