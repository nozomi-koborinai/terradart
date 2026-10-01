// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lexv2models_bot_version`.
const Set<String> _awsLexv2modelsBotVersionSensitive = <String>{};

/// Factory wrapper for `aws_lexv2models_bot_version`.
final class AwsLexv2modelsBotVersion extends Resource {
  static const String tfType = 'aws_lexv2models_bot_version';

  AwsLexv2modelsBotVersion(
    super.localName, {
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
           'bot_version': ?botVersion,
           'description': ?description,
           'locale_specification': localeSpecification,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLexv2modelsBotVersionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLexv2modelsBotVersion>`.
  RefTo<AwsLexv2modelsBotVersion> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bot_id` attribute.
  TfRef<String> get botId => TfRef.attribute<String>(this, 'bot_id');

  /// Reference to `bot_version` attribute.
  TfRef<String> get botVersion => TfRef.attribute<String>(this, 'bot_version');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `locale_specification` attribute.
  TfRef<Map<String, Map<String, Object?>>> get localeSpecification =>
      TfRef.attribute<Map<String, Map<String, Object?>>>(
        this,
        'locale_specification',
      );

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
