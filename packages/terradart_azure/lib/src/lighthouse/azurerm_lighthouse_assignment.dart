// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_lighthouse_assignment`.
const Set<String> _azurermLighthouseAssignmentSensitive = <String>{};

/// Factory wrapper for `azurerm_lighthouse_assignment`.
final class AzurermLighthouseAssignment extends Resource {
  static const String tfType = 'azurerm_lighthouse_assignment';

  AzurermLighthouseAssignment(
    super.localName, {
    required TfArg<String> lighthouseDefinitionId,
    TfArg<String>? name,
    required TfArg<String> scope,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'lighthouse_definition_id': lighthouseDefinitionId,
           'name': ?name,
           'scope': scope,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermLighthouseAssignmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLighthouseAssignment>`.
  RefTo<AzurermLighthouseAssignment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `lighthouse_definition_id` attribute.
  TfRef<String> get lighthouseDefinitionId =>
      TfRef.attribute<String>(this, 'lighthouse_definition_id');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');
}
