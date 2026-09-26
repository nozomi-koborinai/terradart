// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_ipam_pool`.
const Set<String> _awsVpcIpamPoolSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_vpc_ipam_pool` (derived from provider schema).
@immutable
final class DataVpcIpamPoolFilter {
  const DataVpcIpamPoolFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_vpc_ipam_pool`.
final class DataAwsVpcIpamPool extends Data {
  static const String tfType = 'aws_vpc_ipam_pool';

  DataAwsVpcIpamPool({
    required super.localName,
    TfArg<Map<String, String>>? allocationResourceTags,
    TfArg<String>? ipamPoolId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DataVpcIpamPoolFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (allocationResourceTags != null)
             'allocation_resource_tags': allocationResourceTags,
           if (ipamPoolId != null) 'ipam_pool_id': ipamPoolId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcIpamPoolSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `address_family` attribute.
  TfRef<String> get addressFamily =>
      TfRef.attribute<String>(this, 'address_family');

  /// Reference to `allocation_default_netmask_length` attribute.
  TfRef<num> get allocationDefaultNetmaskLength =>
      TfRef.attribute<num>(this, 'allocation_default_netmask_length');

  /// Reference to `allocation_max_netmask_length` attribute.
  TfRef<num> get allocationMaxNetmaskLength =>
      TfRef.attribute<num>(this, 'allocation_max_netmask_length');

  /// Reference to `allocation_min_netmask_length` attribute.
  TfRef<num> get allocationMinNetmaskLength =>
      TfRef.attribute<num>(this, 'allocation_min_netmask_length');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `auto_import` attribute.
  TfRef<bool> get autoImport => TfRef.attribute<bool>(this, 'auto_import');

  /// Reference to `aws_service` attribute.
  TfRef<String> get awsService => TfRef.attribute<String>(this, 'aws_service');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `ipam_scope_id` attribute.
  TfRef<String> get ipamScopeId =>
      TfRef.attribute<String>(this, 'ipam_scope_id');

  /// Reference to `ipam_scope_type` attribute.
  TfRef<String> get ipamScopeType =>
      TfRef.attribute<String>(this, 'ipam_scope_type');

  /// Reference to `locale` attribute.
  TfRef<String> get locale => TfRef.attribute<String>(this, 'locale');

  /// Reference to `pool_depth` attribute.
  TfRef<num> get poolDepth => TfRef.attribute<num>(this, 'pool_depth');

  /// Reference to `publicly_advertisable` attribute.
  TfRef<bool> get publiclyAdvertisable =>
      TfRef.attribute<bool>(this, 'publicly_advertisable');

  /// Reference to `source_ipam_pool_id` attribute.
  TfRef<String> get sourceIpamPoolId =>
      TfRef.attribute<String>(this, 'source_ipam_pool_id');

  /// Reference to `source_resource` attribute.
  TfRef<List<Map<String, Object?>>> get sourceResource =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'source_resource');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
