// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_ai_foundry_project`.
const Set<String> _azurermAiFoundryProjectSensitive = <String>{};

/// Typed helper for the `identity` block of
/// `azurerm_ai_foundry_project` (derived from provider schema).
@immutable
final class AiFoundryProjectIdentity {
  const AiFoundryProjectIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_ai_foundry_project`.
final class AzurermAiFoundryProject extends Resource {
  static const String tfType = 'azurerm_ai_foundry_project';

  AzurermAiFoundryProject(
    super.localName, {
    required TfArg<String> aiServicesHubId,
    TfArg<String>? description,
    TfArg<String>? friendlyName,
    TfArg<bool>? highBusinessImpactEnabled,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? primaryUserAssignedIdentity,
    TfArg<Map<String, String>>? tags,
    AiFoundryProjectIdentity? identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'ai_services_hub_id': aiServicesHubId,
           'description': ?description,
           'friendly_name': ?friendlyName,
           'high_business_impact_enabled': ?highBusinessImpactEnabled,
           'location': location,
           'name': name,
           'primary_user_assigned_identity': ?primaryUserAssignedIdentity,
           'tags': ?tags,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAiFoundryProjectSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAiFoundryProject>`.
  RefTo<AzurermAiFoundryProject> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `ai_services_hub_id` attribute.
  TfRef<String> get aiServicesHubId =>
      TfRef.attribute<String>(this, 'ai_services_hub_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `friendly_name` attribute.
  TfRef<String> get friendlyName =>
      TfRef.attribute<String>(this, 'friendly_name');

  /// Reference to `high_business_impact_enabled` attribute.
  TfRef<bool> get highBusinessImpactEnabled =>
      TfRef.attribute<bool>(this, 'high_business_impact_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `primary_user_assigned_identity` attribute.
  TfRef<String> get primaryUserAssignedIdentity =>
      TfRef.attribute<String>(this, 'primary_user_assigned_identity');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
