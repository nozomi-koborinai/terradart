// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_verifiedpermissions_policy_store`.
const Set<String> _awsVerifiedpermissionsPolicyStoreSensitive = <String>{};

/// Factory wrapper for `aws_verifiedpermissions_policy_store`.
final class DataAwsVerifiedpermissionsPolicyStore extends Data {
  static const String tfType = 'aws_verifiedpermissions_policy_store';

  DataAwsVerifiedpermissionsPolicyStore({
    required super.localName,
    required TfArg<String> id,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'id': id, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsVerifiedpermissionsPolicyStoreSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `deletion_protection` attribute.
  TfRef<String> get deletionProtection =>
      TfRef.attribute<String>(this, 'deletion_protection');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `last_updated_date` attribute.
  TfRef<String> get lastUpdatedDate =>
      TfRef.attribute<String>(this, 'last_updated_date');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `validation_settings` attribute.
  TfRef<List<Map<String, Object?>>> get validationSettings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'validation_settings');
}
