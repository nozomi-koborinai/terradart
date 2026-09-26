// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_odb_cloud_autonomous_vm_clusters`.
const Set<String> _awsOdbCloudAutonomousVmClustersSensitive = <String>{};

/// Factory wrapper for `aws_odb_cloud_autonomous_vm_clusters`.
final class DataAwsOdbCloudAutonomousVmClusters extends Data {
  static const String tfType = 'aws_odb_cloud_autonomous_vm_clusters';

  DataAwsOdbCloudAutonomousVmClusters({
    required super.localName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsOdbCloudAutonomousVmClustersSensitive;

  /// Reference to `cloud_autonomous_vm_clusters` attribute.
  TfRef<List<Map<String, Object?>>> get cloudAutonomousVmClusters =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'cloud_autonomous_vm_clusters',
      );
}
