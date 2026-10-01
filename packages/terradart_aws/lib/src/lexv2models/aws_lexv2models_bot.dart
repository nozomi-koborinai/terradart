// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_lexv2models_bot`.
const Set<String> _awsLexv2modelsBotSensitive = <String>{};

/// Lexv2models Bot enum for `type`.
enum Lexv2modelsBotType implements TerraformEnum {
  bot('Bot'),
  botnetwork('BotNetwork');

  const Lexv2modelsBotType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `data_privacy` block of
/// `aws_lexv2models_bot` (derived from provider schema).
@immutable
final class Lexv2modelsBotDataPrivacy {
  const Lexv2modelsBotDataPrivacy({required this.childDirected});

  final TfArg<bool> childDirected;

  Map<String, Object?> encode() => {'child_directed': childDirected.toTfJson()};
}

/// Typed helper for the `members` block of
/// `aws_lexv2models_bot` (derived from provider schema).
@immutable
final class Lexv2modelsBotMembers {
  const Lexv2modelsBotMembers({
    required this.aliasId,
    required this.aliasName,
    required this.id,
    required this.name,
    required this.version,
  });

  final TfArg<String> aliasId;

  final TfArg<String> aliasName;

  final TfArg<String> id;

  final TfArg<String> name;

  final TfArg<String> version;

  Map<String, Object?> encode() => {
    'alias_id': aliasId.toTfJson(),
    'alias_name': aliasName.toTfJson(),
    'id': id.toTfJson(),
    'name': name.toTfJson(),
    'version': version.toTfJson(),
  };
}

/// Factory wrapper for `aws_lexv2models_bot`.
final class AwsLexv2modelsBot extends Resource {
  static const String tfType = 'aws_lexv2models_bot';

  AwsLexv2modelsBot({
    required super.localName,
    TfArg<String>? description,
    required TfArg<num> idleSessionTtlInSeconds,
    required TfArg<String> name,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    TfArg<Map<String, String>>? tags,
    TfArg<Map<String, String>>? testBotAliasTags,
    TfArg<Lexv2modelsBotType>? type,
    List<Lexv2modelsBotDataPrivacy>? dataPrivacy,
    List<Lexv2modelsBotMembers>? members,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'idle_session_ttl_in_seconds': idleSessionTtlInSeconds,
           'name': name,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'tags': ?tags,
           'test_bot_alias_tags': ?testBotAliasTags,
           'type': ?type,
           if (dataPrivacy != null)
             'data_privacy': TfArg.literal([
               for (final e in dataPrivacy) e.encode(),
             ]),
           if (members != null)
             'members': TfArg.literal([for (final e in members) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLexv2modelsBotSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLexv2modelsBot>`.
  RefTo<AwsLexv2modelsBot> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `idle_session_ttl_in_seconds` attribute.
  TfRef<num> get idleSessionTtlInSeconds =>
      TfRef.attribute<num>(this, 'idle_session_ttl_in_seconds');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `test_bot_alias_tags` attribute.
  TfRef<Map<String, String>> get testBotAliasTags =>
      TfRef.attribute<Map<String, String>>(this, 'test_bot_alias_tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
