// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_ipam`.
const Set<String> _awsVpcIpamSensitive = <String>{};

/// Typed helper for the `operating_regions` block of
/// `aws_vpc_ipam` (derived from provider schema).
@immutable
final class VpcIpamOperatingRegions {
  const VpcIpamOperatingRegions({required this.regionName});

  final TfArg<String> regionName;

  Map<String, Object?> encode() => {'region_name': regionName.toTfJson()};
}

/// Factory wrapper for `aws_vpc_ipam`.
final class AwsVpcIpam extends Resource {
  static const String tfType = 'aws_vpc_ipam';

  AwsVpcIpam({
    required super.localName,
    TfArg<bool>? cascade,
    TfArg<String>? description,
    TfArg<bool>? enablePrivateGua,
    TfArg<String>? meteredAccount,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? tier,
    required List<VpcIpamOperatingRegions> operatingRegions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (cascade != null) 'cascade': cascade,
           if (description != null) 'description': description,
           if (enablePrivateGua != null) 'enable_private_gua': enablePrivateGua,
           if (meteredAccount != null) 'metered_account': meteredAccount,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (tier != null) 'tier': tier,
           'operating_regions': TfArg.literal([
             for (final e in operatingRegions) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcIpamSensitive;

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

  /// Reference to `private_default_scope_id` attribute.
  TfRef<String> get privateDefaultScopeId =>
      TfRef.attribute<String>(this, 'private_default_scope_id');

  /// Reference to `public_default_scope_id` attribute.
  TfRef<String> get publicDefaultScopeId =>
      TfRef.attribute<String>(this, 'public_default_scope_id');

  /// Reference to `scope_count` attribute.
  TfRef<num> get scopeCount => TfRef.attribute<num>(this, 'scope_count');
}
