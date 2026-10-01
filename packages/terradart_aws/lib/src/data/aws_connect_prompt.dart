// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_connect_prompt`.
const Set<String> _awsConnectPromptSensitive = <String>{};

/// Factory wrapper for `aws_connect_prompt`.
final class DataAwsConnectPrompt extends Data {
  static const String tfType = 'aws_connect_prompt';

  DataAwsConnectPrompt(
    super.localName, {
    required TfArg<String> instanceId,
    required TfArg<String> name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'instance_id': instanceId, 'name': name, 'region': ?region},
       );

  @override
  Set<String> get sensitiveFields => _awsConnectPromptSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `prompt_id` attribute.
  TfRef<String> get promptId => TfRef.attribute<String>(this, 'prompt_id');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceId => TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
