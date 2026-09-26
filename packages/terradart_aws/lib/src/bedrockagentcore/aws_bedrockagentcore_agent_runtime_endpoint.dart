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

  AwsBedrockagentcoreAgentRuntimeEndpoint({
    required super.localName,
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
           if (agentRuntimeVersion != null)
             'agent_runtime_version': agentRuntimeVersion,
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsBedrockagentcoreAgentRuntimeEndpointSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `agent_runtime_arn` attribute.
  TfRef<String> get agentRuntimeArn =>
      TfRef.attribute<String>(this, 'agent_runtime_arn');

  /// Reference to `agent_runtime_endpoint_arn` attribute.
  TfRef<String> get agentRuntimeEndpointArn =>
      TfRef.attribute<String>(this, 'agent_runtime_endpoint_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
