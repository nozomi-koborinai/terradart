// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_accountaccess_application`.
const Set<String> _awsAccountaccessApplicationSensitive = <String>{};

/// Factory wrapper for `aws_accountaccess_application`.
final class DataAwsAccountaccessApplication extends Data {
  static const String tfType = 'aws_accountaccess_application';

  DataAwsAccountaccessApplication({
    required super.localName,
    TfArg<String>? arn,
    TfArg<String>? identityCenterInstanceArn,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (arn != null) 'arn': arn,
           if (identityCenterInstanceArn != null)
             'identity_center_instance_arn': identityCenterInstanceArn,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAccountaccessApplicationSensitive;

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `identity_source` attribute.
  TfRef<List<Map<String, Object?>>> get identitySource =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity_source');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
