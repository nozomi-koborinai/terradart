// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_acmpca_permission`.
const Set<String> _awsAcmpcaPermissionSensitive = <String>{};

/// Factory wrapper for `aws_acmpca_permission`.
final class AwsAcmpcaPermission extends Resource {
  static const String tfType = 'aws_acmpca_permission';

  AwsAcmpcaPermission({
    required super.localName,
    required TfArg<List<String>> actions,
    required TfArg<String> certificateAuthorityArn,
    required TfArg<String> principal,
    TfArg<String>? region,
    TfArg<String>? sourceAccount,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'actions': actions,
           'certificate_authority_arn': certificateAuthorityArn,
           'principal': principal,
           if (region != null) 'region': region,
           if (sourceAccount != null) 'source_account': sourceAccount,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAcmpcaPermissionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');
}
