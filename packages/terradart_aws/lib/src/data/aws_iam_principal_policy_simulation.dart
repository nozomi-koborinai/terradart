// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_principal_policy_simulation`.
const Set<String> _awsIamPrincipalPolicySimulationSensitive = <String>{};

/// Typed helper for the `context` block of
/// `aws_iam_principal_policy_simulation` (derived from provider schema).
@immutable
final class DataIamPrincipalPolicySimulationContext {
  const DataIamPrincipalPolicySimulationContext({
    required this.key,
    required this.type,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<String> type;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'type': type.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_iam_principal_policy_simulation`.
final class DataAwsIamPrincipalPolicySimulation extends Data {
  static const String tfType = 'aws_iam_principal_policy_simulation';

  DataAwsIamPrincipalPolicySimulation({
    required super.localName,
    required TfArg<List<String>> actionNames,
    TfArg<List<String>>? additionalPoliciesJson,
    TfArg<String>? callerArn,
    TfArg<List<String>>? permissionsBoundaryPoliciesJson,
    required TfArg<String> policySourceArn,
    TfArg<List<String>>? resourceArns,
    TfArg<String>? resourceHandlingOption,
    TfArg<String>? resourceOwnerAccountId,
    TfArg<String>? resourcePolicyJson,
    List<DataIamPrincipalPolicySimulationContext>? context,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action_names': actionNames,
           if (additionalPoliciesJson != null)
             'additional_policies_json': additionalPoliciesJson,
           if (callerArn != null) 'caller_arn': callerArn,
           if (permissionsBoundaryPoliciesJson != null)
             'permissions_boundary_policies_json':
                 permissionsBoundaryPoliciesJson,
           'policy_source_arn': policySourceArn,
           if (resourceArns != null) 'resource_arns': resourceArns,
           if (resourceHandlingOption != null)
             'resource_handling_option': resourceHandlingOption,
           if (resourceOwnerAccountId != null)
             'resource_owner_account_id': resourceOwnerAccountId,
           if (resourcePolicyJson != null)
             'resource_policy_json': resourcePolicyJson,
           if (context != null)
             'context': TfArg.literal([for (final e in context) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamPrincipalPolicySimulationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `all_allowed` attribute.
  TfRef<bool> get allAllowed => TfRef.attribute<bool>(this, 'all_allowed');

  /// Reference to `results` attribute.
  TfRef<List<Map<String, Object?>>> get results =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'results');
}
