// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrock_guardrail_version`.
const Set<String> _awsBedrockGuardrailVersionSensitive = <String>{};

/// Factory wrapper for `aws_bedrock_guardrail_version`.
final class AwsBedrockGuardrailVersion extends Resource {
  static const String tfType = 'aws_bedrock_guardrail_version';

  AwsBedrockGuardrailVersion(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> guardrailArn,
    TfArg<String>? region,
    TfArg<bool>? skipDestroy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'guardrail_arn': guardrailArn,
           'region': ?region,
           'skip_destroy': ?skipDestroy,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockGuardrailVersionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockGuardrailVersion>`.
  RefTo<AwsBedrockGuardrailVersion> get ref => RefTo.of(this);

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `guardrail_arn` attribute.
  TfRef<String> get guardrailArn =>
      TfRef.attribute<String>(this, 'guardrail_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `skip_destroy` attribute.
  TfRef<bool> get skipDestroy => TfRef.attribute<bool>(this, 'skip_destroy');
}
