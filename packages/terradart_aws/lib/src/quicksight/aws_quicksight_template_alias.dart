// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_template_alias`.
const Set<String> _awsQuicksightTemplateAliasSensitive = <String>{};

/// Factory wrapper for `aws_quicksight_template_alias`.
final class AwsQuicksightTemplateAlias extends Resource {
  static const String tfType = 'aws_quicksight_template_alias';

  AwsQuicksightTemplateAlias({
    required super.localName,
    required TfArg<String> aliasName,
    TfArg<String>? awsAccountId,
    TfArg<String>? region,
    required TfArg<String> templateId,
    required TfArg<num> templateVersionNumber,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'alias_name': aliasName,
           if (awsAccountId != null) 'aws_account_id': awsAccountId,
           if (region != null) 'region': region,
           'template_id': templateId,
           'template_version_number': templateVersionNumber,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightTemplateAliasSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
