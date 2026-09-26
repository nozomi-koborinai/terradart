// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssmquicksetup_configuration_manager`.
const Set<String> _awsSsmquicksetupConfigurationManagerSensitive = <String>{};

/// Typed helper for the `configuration_definition` block of
/// `aws_ssmquicksetup_configuration_manager` (derived from provider schema).
@immutable
final class SsmquicksetupConfigurationManagerConfigurationDefinition {
  const SsmquicksetupConfigurationManagerConfigurationDefinition({
    this.localDeploymentAdministrationRoleArn,
    this.localDeploymentExecutionRoleName,
    required this.parameters,
    required this.type,
    this.typeVersion,
  });

  final TfArg<String>? localDeploymentAdministrationRoleArn;

  final TfArg<String>? localDeploymentExecutionRoleName;

  final TfArg<Map<String, String>> parameters;

  final TfArg<String> type;

  final TfArg<String>? typeVersion;

  Map<String, Object?> encode() => {
    if (localDeploymentAdministrationRoleArn != null)
      'local_deployment_administration_role_arn':
          localDeploymentAdministrationRoleArn!.toTfJson(),
    if (localDeploymentExecutionRoleName != null)
      'local_deployment_execution_role_name': localDeploymentExecutionRoleName!
          .toTfJson(),
    'parameters': parameters.toTfJson(),
    'type': type.toTfJson(),
    if (typeVersion != null) 'type_version': typeVersion!.toTfJson(),
  };
}

/// Factory wrapper for `aws_ssmquicksetup_configuration_manager`.
final class AwsSsmquicksetupConfigurationManager extends Resource {
  static const String tfType = 'aws_ssmquicksetup_configuration_manager';

  AwsSsmquicksetupConfigurationManager({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<SsmquicksetupConfigurationManagerConfigurationDefinition>?
    configurationDefinition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (configurationDefinition != null)
             'configuration_definition': TfArg.literal([
               for (final e in configurationDefinition) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSsmquicksetupConfigurationManagerSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `manager_arn` attribute.
  TfRef<String> get managerArn => TfRef.attribute<String>(this, 'manager_arn');

  /// Reference to `status_summaries` attribute.
  TfRef<List<Map<String, Object?>>> get statusSummaries =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'status_summaries');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
