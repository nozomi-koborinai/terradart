// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dsql_cluster`.
const Set<String> _awsDsqlClusterSensitive = <String>{};

/// Typed helper for the `multi_region_properties` block of
/// `aws_dsql_cluster` (derived from provider schema).
@immutable
final class DsqlClusterMultiRegionProperties {
  const DsqlClusterMultiRegionProperties({this.clusters, this.witnessRegion});

  final TfArg<List<String>>? clusters;

  final TfArg<String>? witnessRegion;

  Map<String, Object?> encode() => {
    'clusters': ?clusters?.toTfJson(),
    'witness_region': ?witnessRegion?.toTfJson(),
  };
}

/// Factory wrapper for `aws_dsql_cluster`.
final class AwsDsqlCluster extends Resource {
  static const String tfType = 'aws_dsql_cluster';

  AwsDsqlCluster({
    required super.localName,
    TfArg<bool>? deletionProtectionEnabled,
    TfArg<bool>? forceDestroy,
    TfArg<String>? kmsEncryptionKey,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DsqlClusterMultiRegionProperties>? multiRegionProperties,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_protection_enabled': ?deletionProtectionEnabled,
           'force_destroy': ?forceDestroy,
           'kms_encryption_key': ?kmsEncryptionKey,
           'region': ?region,
           'tags': ?tags,
           if (multiRegionProperties != null)
             'multi_region_properties': TfArg.literal([
               for (final e in multiRegionProperties) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDsqlClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDsqlCluster>`.
  RefTo<AwsDsqlCluster> get ref => RefTo.of(this);

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `encryption_details` attribute.
  TfRef<List<Map<String, Object?>>> get encryptionDetails =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'encryption_details');

  /// Reference to `identifier` attribute.
  TfRef<String> get identifier => TfRef.attribute<String>(this, 'identifier');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `vpc_endpoint_service_name` attribute.
  TfRef<String> get vpcEndpointServiceName =>
      TfRef.attribute<String>(this, 'vpc_endpoint_service_name');
}
