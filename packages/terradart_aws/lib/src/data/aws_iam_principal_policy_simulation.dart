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

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'type': type.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_iam_principal_policy_simulation`.
final class DataAwsIamPrincipalPolicySimulation extends Data {
  static const String tfType = 'aws_iam_principal_policy_simulation';

  DataAwsIamPrincipalPolicySimulation(
    super.localName, {
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
           'additional_policies_json': ?additionalPoliciesJson,
           'caller_arn': ?callerArn,
           'permissions_boundary_policies_json':
               ?permissionsBoundaryPoliciesJson,
           'policy_source_arn': policySourceArn,
           'resource_arns': ?resourceArns,
           'resource_handling_option': ?resourceHandlingOption,
           'resource_owner_account_id': ?resourceOwnerAccountId,
           'resource_policy_json': ?resourcePolicyJson,
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

  /// Reference to `action_names` attribute.
  TfRef<List<String>> get actionNames =>
      TfRef.attribute<List<String>>(this, 'action_names');

  /// Reference to `additional_policies_json` attribute.
  TfRef<List<String>> get additionalPoliciesJson =>
      TfRef.attribute<List<String>>(this, 'additional_policies_json');

  /// Reference to `caller_arn` attribute.
  TfRef<String> get callerArn => TfRef.attribute<String>(this, 'caller_arn');

  /// Reference to `permissions_boundary_policies_json` attribute.
  TfRef<List<String>> get permissionsBoundaryPoliciesJson =>
      TfRef.attribute<List<String>>(this, 'permissions_boundary_policies_json');

  /// Reference to `policy_source_arn` attribute.
  TfRef<String> get policySourceArn =>
      TfRef.attribute<String>(this, 'policy_source_arn');

  /// Reference to `resource_arns` attribute.
  TfRef<List<String>> get resourceArns =>
      TfRef.attribute<List<String>>(this, 'resource_arns');

  /// Reference to `resource_handling_option` attribute.
  TfRef<String> get resourceHandlingOption =>
      TfRef.attribute<String>(this, 'resource_handling_option');

  /// Reference to `resource_owner_account_id` attribute.
  TfRef<String> get resourceOwnerAccountId =>
      TfRef.attribute<String>(this, 'resource_owner_account_id');

  /// Reference to `resource_policy_json` attribute.
  TfRef<String> get resourcePolicyJson =>
      TfRef.attribute<String>(this, 'resource_policy_json');
}
