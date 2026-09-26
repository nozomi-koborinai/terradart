// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_odb_cloud_exadata_infrastructures`.
const Set<String> _awsOdbCloudExadataInfrastructuresSensitive = <String>{};

/// Factory wrapper for `aws_odb_cloud_exadata_infrastructures`.
final class DataAwsOdbCloudExadataInfrastructures extends Data {
  static const String tfType = 'aws_odb_cloud_exadata_infrastructures';

  DataAwsOdbCloudExadataInfrastructures({
    required super.localName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsOdbCloudExadataInfrastructuresSensitive;

  /// Reference to `cloud_exadata_infrastructures` attribute.
  TfRef<List<Map<String, Object?>>> get cloudExadataInfrastructures =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'cloud_exadata_infrastructures',
      );
}
