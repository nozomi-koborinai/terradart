// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_odb_cloud_vm_clusters`.
const Set<String> _awsOdbCloudVmClustersSensitive = <String>{};

/// Factory wrapper for `aws_odb_cloud_vm_clusters`.
final class DataAwsOdbCloudVmClusters extends Data {
  static const String tfType = 'aws_odb_cloud_vm_clusters';

  DataAwsOdbCloudVmClusters({
    required super.localName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsOdbCloudVmClustersSensitive;

  /// Reference to `cloud_vm_clusters` attribute.
  TfRef<List<Map<String, Object?>>> get cloudVmClusters =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cloud_vm_clusters');
}
