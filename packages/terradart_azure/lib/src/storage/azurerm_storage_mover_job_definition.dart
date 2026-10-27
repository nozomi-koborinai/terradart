// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_storage_mover_job_definition`.
const Set<String> _azurermStorageMoverJobDefinitionSensitive = <String>{};

/// Storage Mover Job Definition Copy enum for `copy_mode`.
extension type const StorageMoverJobDefinitionCopyMode._(TfArg<String> _)
    implements TfArg<String> {
  StorageMoverJobDefinitionCopyMode.variable(String name)
    : this._(TfArg.variable(name));
  StorageMoverJobDefinitionCopyMode.expression(String template)
    : this._(TfArg.expression(template));
  const StorageMoverJobDefinitionCopyMode.arg(TfArg<String> arg) : this._(arg);

  static const additive = StorageMoverJobDefinitionCopyMode._(
    TfArgLiteral('Additive'),
  );
  static const mirror = StorageMoverJobDefinitionCopyMode._(
    TfArgLiteral('Mirror'),
  );

  static const List<StorageMoverJobDefinitionCopyMode> values = [
    additive,
    mirror,
  ];
}

/// Factory wrapper for `azurerm_storage_mover_job_definition`.
final class AzurermStorageMoverJobDefinition extends Resource {
  static const String tfType = 'azurerm_storage_mover_job_definition';

  AzurermStorageMoverJobDefinition(
    super.localName, {
    TfArg<String>? agentName,
    required StorageMoverJobDefinitionCopyMode copyMode,
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<String> sourceName,
    TfArg<String>? sourceSubPath,
    required TfArg<String> storageMoverProjectId,
    required TfArg<String> targetName,
    TfArg<String>? targetSubPath,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'agent_name': ?agentName,
           'copy_mode': copyMode,
           'description': ?description,
           'name': name,
           'source_name': sourceName,
           'source_sub_path': ?sourceSubPath,
           'storage_mover_project_id': storageMoverProjectId,
           'target_name': targetName,
           'target_sub_path': ?targetSubPath,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStorageMoverJobDefinitionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStorageMoverJobDefinition>`.
  RefTo<AzurermStorageMoverJobDefinition> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `agent_name` attribute.
  TfRef<String> get agentName => TfRef.attribute<String>(this, 'agent_name');

  /// Reference to `copy_mode` attribute.
  TfRef<String> get copyMode => TfRef.attribute<String>(this, 'copy_mode');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `source_name` attribute.
  TfRef<String> get sourceName => TfRef.attribute<String>(this, 'source_name');

  /// Reference to `source_sub_path` attribute.
  TfRef<String> get sourceSubPath =>
      TfRef.attribute<String>(this, 'source_sub_path');

  /// Reference to `storage_mover_project_id` attribute.
  TfRef<String> get storageMoverProjectId =>
      TfRef.attribute<String>(this, 'storage_mover_project_id');

  /// Reference to `target_name` attribute.
  TfRef<String> get targetName => TfRef.attribute<String>(this, 'target_name');

  /// Reference to `target_sub_path` attribute.
  TfRef<String> get targetSubPath =>
      TfRef.attribute<String>(this, 'target_sub_path');
}
