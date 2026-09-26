// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_resiliencehubv2_policy`.
const Set<String> _awsResiliencehubv2PolicySensitive = <String>{};

/// Factory wrapper for `aws_resiliencehubv2_policy`.
final class DataAwsResiliencehubv2Policy extends Data {
  static const String tfType = 'aws_resiliencehubv2_policy';

  DataAwsResiliencehubv2Policy({
    required super.localName,
    required TfArg<String> arn,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'arn': arn, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsResiliencehubv2PolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `availability_slo` attribute.
  TfRef<List<Map<String, Object?>>> get availabilitySlo =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'availability_slo');

  /// Reference to `data_recovery` attribute.
  TfRef<List<Map<String, Object?>>> get dataRecovery =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'data_recovery');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `multi_az` attribute.
  TfRef<List<Map<String, Object?>>> get multiAz =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'multi_az');

  /// Reference to `multi_region` attribute.
  TfRef<List<Map<String, Object?>>> get multiRegion =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'multi_region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
