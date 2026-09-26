// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_fis_target_account_configuration`.
const Set<String> _awsFisTargetAccountConfigurationSensitive = <String>{};

/// Factory wrapper for `aws_fis_target_account_configuration`.
final class AwsFisTargetAccountConfiguration extends Resource {
  static const String tfType = 'aws_fis_target_account_configuration';

  AwsFisTargetAccountConfiguration({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? description,
    required TfArg<String> experimentTemplateId,
    TfArg<String>? region,
    TfArg<String>? roleArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (description != null) 'description': description,
           'experiment_template_id': experimentTemplateId,
           if (region != null) 'region': region,
           if (roleArn != null) 'role_arn': roleArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFisTargetAccountConfigurationSensitive;
}
