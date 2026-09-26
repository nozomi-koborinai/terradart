// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagentcore_policy`.
const Set<String> _awsBedrockagentcorePolicySensitive = <String>{};

/// Typed helper for the `definition` block of
/// `aws_bedrockagentcore_policy` (derived from provider schema).
@immutable
final class BedrockagentcorePolicyDefinition {
  const BedrockagentcorePolicyDefinition({this.cedar});

  final List<BedrockagentcorePolicyDefinitionCedar>? cedar;

  Map<String, Object?> encode() => {
    if (cedar != null) 'cedar': [for (final e in cedar!) e.encode()],
  };
}

/// Typed helper for the `definition.cedar` block of
/// `aws_bedrockagentcore_policy` (derived from provider schema).
@immutable
final class BedrockagentcorePolicyDefinitionCedar {
  const BedrockagentcorePolicyDefinitionCedar({required this.statement});

  final TfArg<String> statement;

  Map<String, Object?> encode() => {'statement': statement.toTfJson()};
}

/// Factory wrapper for `aws_bedrockagentcore_policy`.
final class AwsBedrockagentcorePolicy extends Resource {
  static const String tfType = 'aws_bedrockagentcore_policy';

  AwsBedrockagentcorePolicy({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<String> policyEngineId,
    TfArg<String>? region,
    TfArg<String>? validationMode,
    List<BedrockagentcorePolicyDefinition>? definition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'name': name,
           'policy_engine_id': policyEngineId,
           if (region != null) 'region': region,
           if (validationMode != null) 'validation_mode': validationMode,
           if (definition != null)
             'definition': TfArg.literal([
               for (final e in definition) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockagentcorePolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `policy_arn` attribute.
  TfRef<String> get policyArn => TfRef.attribute<String>(this, 'policy_arn');

  /// Reference to `policy_id` attribute.
  TfRef<String> get policyId => TfRef.attribute<String>(this, 'policy_id');
}
