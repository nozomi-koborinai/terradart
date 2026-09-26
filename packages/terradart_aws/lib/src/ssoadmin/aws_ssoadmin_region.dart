// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssoadmin_region`.
const Set<String> _awsSsoadminRegionSensitive = <String>{};

/// Factory wrapper for `aws_ssoadmin_region`.
final class AwsSsoadminRegion extends Resource {
  static const String tfType = 'aws_ssoadmin_region';

  AwsSsoadminRegion({
    required super.localName,
    required TfArg<String> instanceArn,
    TfArg<String>? region,
    required TfArg<String> regionName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_arn': instanceArn,
           if (region != null) 'region': region,
           'region_name': regionName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsoadminRegionSensitive;

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
