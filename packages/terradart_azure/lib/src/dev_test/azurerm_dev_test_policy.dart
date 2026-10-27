// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_dev_test_policy`.
const Set<String> _azurermDevTestPolicySensitive = <String>{};

/// Dev Test Policy Evaluator enum for `evaluator_type`.
extension type const DevTestPolicyEvaluatorType._(TfArg<String> _)
    implements TfArg<String> {
  DevTestPolicyEvaluatorType.variable(String name)
    : this._(TfArg.variable(name));
  DevTestPolicyEvaluatorType.expression(String template)
    : this._(TfArg.expression(template));
  const DevTestPolicyEvaluatorType.arg(TfArg<String> arg) : this._(arg);

  static const allowedvaluespolicy = DevTestPolicyEvaluatorType._(
    TfArgLiteral('AllowedValuesPolicy'),
  );
  static const maxvaluepolicy = DevTestPolicyEvaluatorType._(
    TfArgLiteral('MaxValuePolicy'),
  );

  static const List<DevTestPolicyEvaluatorType> values = [
    allowedvaluespolicy,
    maxvaluepolicy,
  ];
}

/// Factory wrapper for `azurerm_dev_test_policy`.
final class AzurermDevTestPolicy extends Resource {
  static const String tfType = 'azurerm_dev_test_policy';

  AzurermDevTestPolicy(
    super.localName, {
    TfArg<String>? description,
    required DevTestPolicyEvaluatorType evaluatorType,
    TfArg<String>? factData,
    required TfArg<String> labName,
    required TfArg<String> name,
    required TfArg<String> policySetName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> threshold,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'evaluator_type': evaluatorType,
           'fact_data': ?factData,
           'lab_name': labName,
           'name': name,
           'policy_set_name': policySetName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'threshold': threshold,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDevTestPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDevTestPolicy>`.
  RefTo<AzurermDevTestPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `evaluator_type` attribute.
  TfRef<String> get evaluatorType =>
      TfRef.attribute<String>(this, 'evaluator_type');

  /// Reference to `fact_data` attribute.
  TfRef<String> get factData => TfRef.attribute<String>(this, 'fact_data');

  /// Reference to `lab_name` attribute.
  TfRef<String> get labName => TfRef.attribute<String>(this, 'lab_name');

  /// Reference to `policy_set_name` attribute.
  TfRef<String> get policySetName =>
      TfRef.attribute<String>(this, 'policy_set_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `threshold` attribute.
  TfRef<String> get threshold => TfRef.attribute<String>(this, 'threshold');
}
