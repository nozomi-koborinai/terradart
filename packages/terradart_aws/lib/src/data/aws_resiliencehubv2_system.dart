// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../resiliencehubv2/aws_resiliencehubv2_system.dart';

/// Sensitive field paths for `aws_resiliencehubv2_system`.
const Set<String> _awsResiliencehubv2SystemSensitive = <String>{};

/// Factory wrapper for `aws_resiliencehubv2_system`.
final class DataAwsResiliencehubv2System extends Data {
  static const String tfType = 'aws_resiliencehubv2_system';

  DataAwsResiliencehubv2System({
    required super.localName,
    required TfArg<String> arn,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'arn': arn, 'region': ?region});

  @override
  Set<String> get sensitiveFields => _awsResiliencehubv2SystemSensitive;

  /// A reference to the `aws_resiliencehubv2_system` this data source reads, for
  /// arguments typed `RefTo<AwsResiliencehubv2System>`.
  RefTo<AwsResiliencehubv2System> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `organization_id` attribute.
  TfRef<String> get organizationId =>
      TfRef.attribute<String>(this, 'organization_id');

  /// Reference to `ou_id` attribute.
  TfRef<String> get ouId => TfRef.attribute<String>(this, 'ou_id');

  /// Reference to `sharing_enabled` attribute.
  TfRef<bool> get sharingEnabled =>
      TfRef.attribute<bool>(this, 'sharing_enabled');

  /// Reference to `system_id` attribute.
  TfRef<String> get systemId => TfRef.attribute<String>(this, 'system_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
