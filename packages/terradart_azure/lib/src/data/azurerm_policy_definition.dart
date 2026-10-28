// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../policy/azurerm_policy_definition.dart';

/// Sensitive field paths for `azurerm_policy_definition`.
const Set<String> _azurermPolicyDefinitionSensitive = <String>{};

/// Exactly one of `display_name`, `name` on `data.azurerm_policy_definition`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.displayName(...)`.
sealed class DataPolicyDefinitionIdentifier {
  const DataPolicyDefinitionIdentifier();

  /// Sets `display_name`.
  const factory DataPolicyDefinitionIdentifier.displayName(
    TfArg<String> displayName,
  ) = DataPolicyDefinitionIdentifierDisplayName;

  /// Sets `name`.
  const factory DataPolicyDefinitionIdentifier.name(TfArg<String> name) =
      DataPolicyDefinitionIdentifierName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DataPolicyDefinitionIdentifier.displayName] choice: sets `display_name`.
final class DataPolicyDefinitionIdentifierDisplayName
    extends DataPolicyDefinitionIdentifier {
  const DataPolicyDefinitionIdentifierDisplayName(this.displayName);

  final TfArg<String> displayName;

  @internal
  @override
  String get blockKey => 'display_name';

  @internal
  @override
  Map<String, Object?> encode() => {'display_name': displayName.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'display_name': displayName};
}

/// The [DataPolicyDefinitionIdentifier.name] choice: sets `name`.
final class DataPolicyDefinitionIdentifierName
    extends DataPolicyDefinitionIdentifier {
  const DataPolicyDefinitionIdentifierName(this.name);

  final TfArg<String> name;

  @internal
  @override
  String get blockKey => 'name';

  @internal
  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// Factory wrapper for `azurerm_policy_definition`.
final class DataAzurermPolicyDefinition extends Data {
  static const String tfType = 'azurerm_policy_definition';

  DataAzurermPolicyDefinition(
    super.localName, {
    required DataPolicyDefinitionIdentifier identifier,
    TfArg<String>? managementGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...identifier.argMap,
           'management_group_name': ?managementGroupName,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermPolicyDefinitionSensitive;

  /// A reference to the `azurerm_policy_definition` this data source reads, for
  /// arguments typed `RefTo<AzurermPolicyDefinition>`.
  RefTo<AzurermPolicyDefinition> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `metadata` attribute.
  TfRef<String> get metadata => TfRef.attribute<String>(this, 'metadata');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `parameters` attribute.
  TfRef<String> get parameters => TfRef.attribute<String>(this, 'parameters');

  /// Reference to `policy_rule` attribute.
  TfRef<String> get policyRule => TfRef.attribute<String>(this, 'policy_rule');

  /// Reference to `policy_type` attribute.
  TfRef<String> get policyType => TfRef.attribute<String>(this, 'policy_type');

  /// Reference to `role_definition_ids` attribute.
  TfRef<List<String>> get roleDefinitionIds =>
      TfRef.attribute<List<String>>(this, 'role_definition_ids');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `management_group_name` attribute.
  TfRef<String> get managementGroupName =>
      TfRef.attribute<String>(this, 'management_group_name');
}
