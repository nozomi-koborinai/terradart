// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagentcore_agent_runtime_endpoint`.
const Set<String> _awsBedrockagentcoreAgentRuntimeEndpointSensitive =
    <String>{};

/// Factory wrapper for `aws_bedrockagentcore_agent_runtime_endpoint`.
final class AwsBedrockagentcoreAgentRuntimeEndpoint extends Resource {
  static const String tfType = 'aws_bedrockagentcore_agent_runtime_endpoint';

  AwsBedrockagentcoreAgentRuntimeEndpoint(
    super.localName, {
    required TfArg<String> agentRuntimeId,
    TfArg<String>? agentRuntimeVersion,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'agent_runtime_id': agentRuntimeId,
           'agent_runtime_version': ?agentRuntimeVersion,
           'description': ?description,
           'name': name,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsBedrockagentcoreAgentRuntimeEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockagentcoreAgentRuntimeEndpoint>`.
  RefTo<AwsBedrockagentcoreAgentRuntimeEndpoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `agent_runtime_arn` attribute.
  TfRef<String> get agentRuntimeArn =>
      TfRef.attribute<String>(this, 'agent_runtime_arn');

  /// Reference to `agent_runtime_endpoint_arn` attribute.
  TfRef<String> get agentRuntimeEndpointArn =>
      TfRef.attribute<String>(this, 'agent_runtime_endpoint_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `agent_runtime_id` attribute.
  TfRef<String> get agentRuntimeId =>
      TfRef.attribute<String>(this, 'agent_runtime_id');

  /// Reference to `agent_runtime_version` attribute.
  TfRef<String> get agentRuntimeVersion =>
      TfRef.attribute<String>(this, 'agent_runtime_version');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
