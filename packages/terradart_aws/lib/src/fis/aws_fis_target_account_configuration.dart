// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

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
    RefTo<AwsIamRole>? roleArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'description': ?description,
           'experiment_template_id': experimentTemplateId,
           'region': ?region,
           'role_arn': ?roleArn?.encodeAs('arn'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFisTargetAccountConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsFisTargetAccountConfiguration>`.
  RefTo<AwsFisTargetAccountConfiguration> get ref => RefTo.of(this);

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `experiment_template_id` attribute.
  TfRef<String> get experimentTemplateId =>
      TfRef.attribute<String>(this, 'experiment_template_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');
}
