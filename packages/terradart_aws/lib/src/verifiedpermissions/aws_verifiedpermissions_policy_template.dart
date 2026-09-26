// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_verifiedpermissions_policy_template`.
const Set<String> _awsVerifiedpermissionsPolicyTemplateSensitive = <String>{};

/// Factory wrapper for `aws_verifiedpermissions_policy_template`.
final class AwsVerifiedpermissionsPolicyTemplate extends Resource {
  static const String tfType = 'aws_verifiedpermissions_policy_template';

  AwsVerifiedpermissionsPolicyTemplate({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> policyStoreId,
    TfArg<String>? region,
    required TfArg<String> statement,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'policy_store_id': policyStoreId,
           if (region != null) 'region': region,
           'statement': statement,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsVerifiedpermissionsPolicyTemplateSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `policy_template_id` attribute.
  TfRef<String> get policyTemplateId =>
      TfRef.attribute<String>(this, 'policy_template_id');
}
