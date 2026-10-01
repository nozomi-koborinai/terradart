// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagent_agent_alias`.
const Set<String> _awsBedrockagentAgentAliasSensitive = <String>{};

/// Factory wrapper for `aws_bedrockagent_agent_alias`.
final class AwsBedrockagentAgentAlias extends Resource {
  static const String tfType = 'aws_bedrockagent_agent_alias';

  AwsBedrockagentAgentAlias({
    required super.localName,
    required TfArg<String> agentAliasName,
    required TfArg<String> agentId,
    TfArg<String>? description,
    TfArg<String>? region,
    TfArg<List<Map<String, Object?>>>? routingConfiguration,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'agent_alias_name': agentAliasName,
           'agent_id': agentId,
           'description': ?description,
           'region': ?region,
           'routing_configuration': ?routingConfiguration,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockagentAgentAliasSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockagentAgentAlias>`.
  RefTo<AwsBedrockagentAgentAlias> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `agent_alias_arn` attribute.
  TfRef<String> get agentAliasArn =>
      TfRef.attribute<String>(this, 'agent_alias_arn');

  /// Reference to `agent_alias_id` attribute.
  TfRef<String> get agentAliasId =>
      TfRef.attribute<String>(this, 'agent_alias_id');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `agent_alias_name` attribute.
  TfRef<String> get agentAliasName =>
      TfRef.attribute<String>(this, 'agent_alias_name');

  /// Reference to `agent_id` attribute.
  TfRef<String> get agentId => TfRef.attribute<String>(this, 'agent_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `routing_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get routingConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'routing_configuration',
      );

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
