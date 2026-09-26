// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lexv2models_bot_version`.
const Set<String> _awsLexv2modelsBotVersionSensitive = <String>{};

/// Factory wrapper for `aws_lexv2models_bot_version`.
final class AwsLexv2modelsBotVersion extends Resource {
  static const String tfType = 'aws_lexv2models_bot_version';

  AwsLexv2modelsBotVersion({
    required super.localName,
    required TfArg<String> botId,
    TfArg<String>? botVersion,
    TfArg<String>? description,
    required TfArg<Map<String, Map<String, Object?>>> localeSpecification,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bot_id': botId,
           if (botVersion != null) 'bot_version': botVersion,
           if (description != null) 'description': description,
           'locale_specification': localeSpecification,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLexv2modelsBotVersionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
