// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshiftserverless_workgroup`.
const Set<String> _awsRedshiftserverlessWorkgroupSensitive = <String>{};

/// Factory wrapper for `aws_redshiftserverless_workgroup`.
final class DataAwsRedshiftserverlessWorkgroup extends Data {
  static const String tfType = 'aws_redshiftserverless_workgroup';

  DataAwsRedshiftserverlessWorkgroup({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> workgroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'workgroup_name': workgroupName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftserverlessWorkgroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `endpoint` attribute.
  TfRef<List<Map<String, Object?>>> get endpoint =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'endpoint');

  /// Reference to `enhanced_vpc_routing` attribute.
  TfRef<bool> get enhancedVpcRouting =>
      TfRef.attribute<bool>(this, 'enhanced_vpc_routing');

  /// Reference to `namespace_name` attribute.
  TfRef<String> get namespaceName =>
      TfRef.attribute<String>(this, 'namespace_name');

  /// Reference to `publicly_accessible` attribute.
  TfRef<bool> get publiclyAccessible =>
      TfRef.attribute<bool>(this, 'publicly_accessible');

  /// Reference to `security_group_ids` attribute.
  TfRef<List<String>> get securityGroupIds =>
      TfRef.attribute<List<String>>(this, 'security_group_ids');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIds =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');

  /// Reference to `track_name` attribute.
  TfRef<String> get trackName => TfRef.attribute<String>(this, 'track_name');

  /// Reference to `workgroup_id` attribute.
  TfRef<String> get workgroupId =>
      TfRef.attribute<String>(this, 'workgroup_id');
}
