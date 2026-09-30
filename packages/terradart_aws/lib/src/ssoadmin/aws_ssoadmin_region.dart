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
           'region': ?region,
           'region_name': regionName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsoadminRegionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSsoadminRegion>`.
  RefTo<AwsSsoadminRegion> get ref => RefTo.of(this);

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `instance_arn` attribute.
  TfRef<String> get instanceArnRef =>
      TfRef.attribute<String>(this, 'instance_arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `region_name` attribute.
  TfRef<String> get regionNameRef =>
      TfRef.attribute<String>(this, 'region_name');
}
