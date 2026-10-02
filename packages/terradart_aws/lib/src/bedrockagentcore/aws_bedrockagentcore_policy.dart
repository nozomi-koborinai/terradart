// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagentcore_policy`.
const Set<String> _awsBedrockagentcorePolicySensitive = <String>{};

/// Bedrockagentcore Policy Validation enum for `validation_mode`.
extension type const BedrockagentcorePolicyValidationMode._(TfArg<String> _)
    implements TfArg<String> {
  BedrockagentcorePolicyValidationMode.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentcorePolicyValidationMode.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentcorePolicyValidationMode.arg(TfArg<String> arg)
    : this._(arg);

  static const failOnAnyFindings = BedrockagentcorePolicyValidationMode._(
    TfArgLiteral('FAIL_ON_ANY_FINDINGS'),
  );
  static const ignoreAllFindings = BedrockagentcorePolicyValidationMode._(
    TfArgLiteral('IGNORE_ALL_FINDINGS'),
  );

  static const List<BedrockagentcorePolicyValidationMode> values = [
    failOnAnyFindings,
    ignoreAllFindings,
  ];
}

/// Typed helper for the `definition` block of
/// `aws_bedrockagentcore_policy` (derived from provider schema).
@immutable
final class BedrockagentcorePolicyDefinition {
  const BedrockagentcorePolicyDefinition({this.cedar});

  final List<BedrockagentcorePolicyCedar>? cedar;

  @internal
  Map<String, Object?> encode() => {
    if (cedar != null) 'cedar': [for (final e in cedar!) e.encode()],
  };
}

/// Typed helper for the `definition.cedar` block of
/// `aws_bedrockagentcore_policy` (derived from provider schema).
@immutable
final class BedrockagentcorePolicyCedar {
  const BedrockagentcorePolicyCedar({required this.statement});

  final TfArg<String> statement;

  @internal
  Map<String, Object?> encode() => {'statement': statement.toTfJson()};
}

/// Factory wrapper for `aws_bedrockagentcore_policy`.
final class AwsBedrockagentcorePolicy extends Resource {
  static const String tfType = 'aws_bedrockagentcore_policy';

  AwsBedrockagentcorePolicy(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<String> policyEngineId,
    TfArg<String>? region,
    BedrockagentcorePolicyValidationMode? validationMode,
    List<BedrockagentcorePolicyDefinition>? definition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': name,
           'policy_engine_id': policyEngineId,
           'region': ?region,
           'validation_mode': ?validationMode,
           if (definition != null)
             'definition': TfArg.literal([
               for (final e in definition) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockagentcorePolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockagentcorePolicy>`.
  RefTo<AwsBedrockagentcorePolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `policy_arn` attribute.
  TfRef<String> get policyArn => TfRef.attribute<String>(this, 'policy_arn');

  /// Reference to `policy_id` attribute.
  TfRef<String> get policyId => TfRef.attribute<String>(this, 'policy_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `policy_engine_id` attribute.
  TfRef<String> get policyEngineId =>
      TfRef.attribute<String>(this, 'policy_engine_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `validation_mode` attribute.
  TfRef<String> get validationMode =>
      TfRef.attribute<String>(this, 'validation_mode');
}
