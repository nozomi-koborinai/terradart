// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../resiliencehubv2/aws_resiliencehubv2_service.dart';

/// Sensitive field paths for `aws_resiliencehubv2_service`.
const Set<String> _awsResiliencehubv2ServiceSensitive = <String>{};

/// Factory wrapper for `aws_resiliencehubv2_service`.
final class DataAwsResiliencehubv2Service extends Data {
  static const String tfType = 'aws_resiliencehubv2_service';

  DataAwsResiliencehubv2Service(
    super.localName, {
    required TfArg<String> arn,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'arn': arn, 'region': ?region});

  @override
  Set<String> get sensitiveFields => _awsResiliencehubv2ServiceSensitive;

  /// A reference to the `aws_resiliencehubv2_service` this data source reads, for
  /// arguments typed `RefTo<AwsResiliencehubv2Service>`.
  RefTo<AwsResiliencehubv2Service> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `associated_system` attribute.
  TfRef<List<Map<String, Object?>>> get associatedSystem =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'associated_system');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `permission_model` attribute.
  TfRef<List<Map<String, Object?>>> get permissionModel =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'permission_model');

  /// Reference to `policy_arn` attribute.
  TfRef<String> get policyArn => TfRef.attribute<String>(this, 'policy_arn');

  /// Reference to `regions` attribute.
  TfRef<List<String>> get regions =>
      TfRef.attribute<List<String>>(this, 'regions');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
