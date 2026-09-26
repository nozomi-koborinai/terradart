// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudhsm_v2_hsm`.
const Set<String> _awsCloudhsmV2HsmSensitive = <String>{};

/// Factory wrapper for `aws_cloudhsm_v2_hsm`.
final class AwsCloudhsmV2Hsm extends Resource {
  static const String tfType = 'aws_cloudhsm_v2_hsm';

  AwsCloudhsmV2Hsm({
    required super.localName,
    TfArg<String>? availabilityZone,
    required TfArg<String> clusterId,
    TfArg<String>? ipAddress,
    TfArg<String>? region,
    TfArg<String>? subnetId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (availabilityZone != null) 'availability_zone': availabilityZone,
           'cluster_id': clusterId,
           if (ipAddress != null) 'ip_address': ipAddress,
           if (region != null) 'region': region,
           if (subnetId != null) 'subnet_id': subnetId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudhsmV2HsmSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `hsm_eni_id` attribute.
  TfRef<String> get hsmEniId => TfRef.attribute<String>(this, 'hsm_eni_id');

  /// Reference to `hsm_id` attribute.
  TfRef<String> get hsmId => TfRef.attribute<String>(this, 'hsm_id');

  /// Reference to `hsm_state` attribute.
  TfRef<String> get hsmState => TfRef.attribute<String>(this, 'hsm_state');
}
