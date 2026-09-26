// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagent_agent_versions`.
const Set<String> _awsBedrockagentAgentVersionsSensitive = <String>{};

/// Typed helper for the `agent_version_summaries` block of
/// `aws_bedrockagent_agent_versions` (derived from provider schema).
@immutable
final class DataBedrockagentAgentVersionsAgentVersionSummaries {
  const DataBedrockagentAgentVersionsAgentVersionSummaries({
    this.guardrailConfiguration,
  });

  final List<
    DataBedrockagentAgentVersionsAgentVersionSummariesGuardrailConfiguration
  >?
  guardrailConfiguration;

  Map<String, Object?> encode() => {
    if (guardrailConfiguration != null)
      'guardrail_configuration': [
        for (final e in guardrailConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `agent_version_summaries.guardrail_configuration` block of
/// `aws_bedrockagent_agent_versions` (derived from provider schema).
@immutable
final class DataBedrockagentAgentVersionsAgentVersionSummariesGuardrailConfiguration {
  const DataBedrockagentAgentVersionsAgentVersionSummariesGuardrailConfiguration();

  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `aws_bedrockagent_agent_versions`.
final class DataAwsBedrockagentAgentVersions extends Data {
  static const String tfType = 'aws_bedrockagent_agent_versions';

  DataAwsBedrockagentAgentVersions({
    required super.localName,
    required TfArg<String> agentId,
    TfArg<String>? region,
    List<DataBedrockagentAgentVersionsAgentVersionSummaries>?
    agentVersionSummaries,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'agent_id': agentId,
           if (region != null) 'region': region,
           if (agentVersionSummaries != null)
             'agent_version_summaries': TfArg.literal([
               for (final e in agentVersionSummaries) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockagentAgentVersionsSensitive;
}
