// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_managed_devops_pool`.
const Set<String> _azurermManagedDevopsPoolSensitive = <String>{};

/// Exactly one of `stateful_agent`, `stateless_agent` on `azurerm_managed_devops_pool`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.statefulAgent(...)`.
sealed class ManagedDevopsPoolAgent {
  const ManagedDevopsPoolAgent();

  /// Sets `stateful_agent`.
  const factory ManagedDevopsPoolAgent.statefulAgent(
    ManagedDevopsPoolStatefulAgent statefulAgent,
  ) = ManagedDevopsPoolStatefulAgentChoice;

  /// Sets `stateless_agent`.
  const factory ManagedDevopsPoolAgent.statelessAgent(
    ManagedDevopsPoolStatelessAgent statelessAgent,
  ) = ManagedDevopsPoolStatelessAgentChoice;

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

/// The [ManagedDevopsPoolAgent.statefulAgent] choice: sets `stateful_agent`.
final class ManagedDevopsPoolStatefulAgentChoice
    extends ManagedDevopsPoolAgent {
  const ManagedDevopsPoolStatefulAgentChoice(this.statefulAgent);

  final ManagedDevopsPoolStatefulAgent statefulAgent;

  @internal
  @override
  String get blockKey => 'stateful_agent';

  @internal
  @override
  Map<String, Object?> encode() => {'stateful_agent': statefulAgent.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'stateful_agent': TfArg.literal(statefulAgent.encode()),
  };
}

/// The [ManagedDevopsPoolAgent.statelessAgent] choice: sets `stateless_agent`.
final class ManagedDevopsPoolStatelessAgentChoice
    extends ManagedDevopsPoolAgent {
  const ManagedDevopsPoolStatelessAgentChoice(this.statelessAgent);

  final ManagedDevopsPoolStatelessAgent statelessAgent;

  @internal
  @override
  String get blockKey => 'stateless_agent';

  @internal
  @override
  Map<String, Object?> encode() => {'stateless_agent': statelessAgent.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'stateless_agent': TfArg.literal(statelessAgent.encode()),
  };
}

/// Typed helper for the `azure_devops_organization` block of
/// `azurerm_managed_devops_pool` (derived from provider schema).
@immutable
final class ManagedDevopsPoolAzureDevopsOrganization {
  const ManagedDevopsPoolAzureDevopsOrganization({
    required this.organization,
    this.permission,
  });

  final List<ManagedDevopsPoolOrganization> organization;

  final ManagedDevopsPoolPermission? permission;

  @internal
  Map<String, Object?> encode() => {
    'organization': [for (final e in organization) e.encode()],
    'permission': ?permission?.encode(),
  };
}

/// Typed helper for the `azure_devops_organization.organization` block of
/// `azurerm_managed_devops_pool` (derived from provider schema).
@immutable
final class ManagedDevopsPoolOrganization {
  const ManagedDevopsPoolOrganization({
    required this.parallelism,
    this.projects,
    required this.url,
  });

  final TfArg<num> parallelism;

  final TfArg<List<String>>? projects;

  final TfArg<String> url;

  @internal
  Map<String, Object?> encode() => {
    'parallelism': parallelism.toTfJson(),
    'projects': ?projects?.toTfJson(),
    'url': url.toTfJson(),
  };
}

/// Typed helper for the `azure_devops_organization.permission` block of
/// `azurerm_managed_devops_pool` (derived from provider schema).
@immutable
final class ManagedDevopsPoolPermission {
  const ManagedDevopsPoolPermission({
    required this.kind,
    this.administratorAccount,
  });

  final ManagedDevopsPoolKind kind;

  final ManagedDevopsPoolAdministratorAccount? administratorAccount;

  @internal
  Map<String, Object?> encode() => {
    'kind': kind.toTfJson(),
    'administrator_account': ?administratorAccount?.encode(),
  };
}

/// `kind` — derived from the provider schema description.
extension type const ManagedDevopsPoolKind._(TfArg<String> _)
    implements TfArg<String> {
  ManagedDevopsPoolKind.variable(String name) : this._(TfArg.variable(name));
  ManagedDevopsPoolKind.expression(String template)
    : this._(TfArg.expression(template));
  const ManagedDevopsPoolKind.arg(TfArg<String> arg) : this._(arg);

  static const creatoronly = ManagedDevopsPoolKind._(
    TfArgLiteral('CreatorOnly'),
  );
  static const inherit = ManagedDevopsPoolKind._(TfArgLiteral('Inherit'));
  static const specificaccounts = ManagedDevopsPoolKind._(
    TfArgLiteral('SpecificAccounts'),
  );

  static const List<ManagedDevopsPoolKind> values = [
    creatoronly,
    inherit,
    specificaccounts,
  ];
}

/// Typed helper for the `azure_devops_organization.permission.administrator_account` block of
/// `azurerm_managed_devops_pool` (derived from provider schema).
@immutable
final class ManagedDevopsPoolAdministratorAccount {
  const ManagedDevopsPoolAdministratorAccount({this.groups, this.users});

  final TfArg<List<String>>? groups;

  final TfArg<List<String>>? users;

  @internal
  Map<String, Object?> encode() => {
    'groups': ?groups?.toTfJson(),
    'users': ?users?.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_managed_devops_pool` (derived from provider schema).
@immutable
final class ManagedDevopsPoolIdentity {
  const ManagedDevopsPoolIdentity({
    required this.identityIds,
    required this.type,
  });

  final TfArg<List<String>> identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': identityIds.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `stateful_agent` block of
/// `azurerm_managed_devops_pool` (derived from provider schema).
@immutable
final class ManagedDevopsPoolStatefulAgent {
  const ManagedDevopsPoolStatefulAgent({
    this.gracePeriodTimeSpan,
    this.maximumAgentLifetime,
    this.automaticResourcePrediction,
    this.manualResourcePrediction,
  });

  final TfArg<String>? gracePeriodTimeSpan;

  final TfArg<String>? maximumAgentLifetime;

  final ManagedDevopsPoolAutomaticResourcePrediction?
  automaticResourcePrediction;

  final ManagedDevopsPoolManualResourcePrediction? manualResourcePrediction;

  @internal
  Map<String, Object?> encode() => {
    'grace_period_time_span': ?gracePeriodTimeSpan?.toTfJson(),
    'maximum_agent_lifetime': ?maximumAgentLifetime?.toTfJson(),
    'automatic_resource_prediction': ?automaticResourcePrediction?.encode(),
    'manual_resource_prediction': ?manualResourcePrediction?.encode(),
  };
}

/// Typed helper for the `stateful_agent.automatic_resource_prediction` block of
/// `azurerm_managed_devops_pool` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ManagedDevopsPoolAutomaticResourcePrediction {
  const ManagedDevopsPoolAutomaticResourcePrediction({
    this.predictionPreference,
  });

  final ManagedDevopsPoolPredictionPreference? predictionPreference;

  @internal
  Map<String, Object?> encode() => {
    'prediction_preference': ?predictionPreference?.toTfJson(),
  };
}

/// `prediction_preference` — derived from the provider schema description.
extension type const ManagedDevopsPoolPredictionPreference._(TfArg<String> _)
    implements TfArg<String> {
  ManagedDevopsPoolPredictionPreference.variable(String name)
    : this._(TfArg.variable(name));
  ManagedDevopsPoolPredictionPreference.expression(String template)
    : this._(TfArg.expression(template));
  const ManagedDevopsPoolPredictionPreference.arg(TfArg<String> arg)
    : this._(arg);

  static const balanced = ManagedDevopsPoolPredictionPreference._(
    TfArgLiteral('Balanced'),
  );
  static const bestperformance = ManagedDevopsPoolPredictionPreference._(
    TfArgLiteral('BestPerformance'),
  );
  static const morecosteffective = ManagedDevopsPoolPredictionPreference._(
    TfArgLiteral('MoreCostEffective'),
  );
  static const moreperformance = ManagedDevopsPoolPredictionPreference._(
    TfArgLiteral('MorePerformance'),
  );
  static const mostcosteffective = ManagedDevopsPoolPredictionPreference._(
    TfArgLiteral('MostCostEffective'),
  );

  static const List<ManagedDevopsPoolPredictionPreference> values = [
    balanced,
    bestperformance,
    morecosteffective,
    moreperformance,
    mostcosteffective,
  ];
}

/// Typed helper for the `stateful_agent.manual_resource_prediction` block of
/// `azurerm_managed_devops_pool` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ManagedDevopsPoolManualResourcePrediction {
  const ManagedDevopsPoolManualResourcePrediction({
    this.allWeekSchedule,
    this.timeZoneName,
    this.fridaySchedule,
    this.mondaySchedule,
    this.saturdaySchedule,
    this.sundaySchedule,
    this.thursdaySchedule,
    this.tuesdaySchedule,
    this.wednesdaySchedule,
  });

  final TfArg<num>? allWeekSchedule;

  final TfArg<String>? timeZoneName;

  final List<ManagedDevopsPoolFridaySchedule>? fridaySchedule;

  final List<ManagedDevopsPoolMondaySchedule>? mondaySchedule;

  final List<ManagedDevopsPoolSaturdaySchedule>? saturdaySchedule;

  final List<ManagedDevopsPoolSundaySchedule>? sundaySchedule;

  final List<ManagedDevopsPoolThursdaySchedule>? thursdaySchedule;

  final List<ManagedDevopsPoolTuesdaySchedule>? tuesdaySchedule;

  final List<ManagedDevopsPoolWednesdaySchedule>? wednesdaySchedule;

  @internal
  Map<String, Object?> encode() => {
    'all_week_schedule': ?allWeekSchedule?.toTfJson(),
    'time_zone_name': ?timeZoneName?.toTfJson(),
    if (fridaySchedule != null)
      'friday_schedule': [for (final e in fridaySchedule!) e.encode()],
    if (mondaySchedule != null)
      'monday_schedule': [for (final e in mondaySchedule!) e.encode()],
    if (saturdaySchedule != null)
      'saturday_schedule': [for (final e in saturdaySchedule!) e.encode()],
    if (sundaySchedule != null)
      'sunday_schedule': [for (final e in sundaySchedule!) e.encode()],
    if (thursdaySchedule != null)
      'thursday_schedule': [for (final e in thursdaySchedule!) e.encode()],
    if (tuesdaySchedule != null)
      'tuesday_schedule': [for (final e in tuesdaySchedule!) e.encode()],
    if (wednesdaySchedule != null)
      'wednesday_schedule': [for (final e in wednesdaySchedule!) e.encode()],
  };
}

/// Typed helper for the `stateful_agent.manual_resource_prediction.friday_schedule` block of
/// `azurerm_managed_devops_pool` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ManagedDevopsPoolFridaySchedule {
  const ManagedDevopsPoolFridaySchedule({
    required this.count,
    required this.time,
  });

  final TfArg<num> count;

  final TfArg<String> time;

  @internal
  Map<String, Object?> encode() => {
    'count': count.toTfJson(),
    'time': time.toTfJson(),
  };
}

/// Typed helper for the `stateful_agent.manual_resource_prediction.monday_schedule` block of
/// `azurerm_managed_devops_pool` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ManagedDevopsPoolMondaySchedule {
  const ManagedDevopsPoolMondaySchedule({
    required this.count,
    required this.time,
  });

  final TfArg<num> count;

  final TfArg<String> time;

  @internal
  Map<String, Object?> encode() => {
    'count': count.toTfJson(),
    'time': time.toTfJson(),
  };
}

/// Typed helper for the `stateful_agent.manual_resource_prediction.saturday_schedule` block of
/// `azurerm_managed_devops_pool` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ManagedDevopsPoolSaturdaySchedule {
  const ManagedDevopsPoolSaturdaySchedule({
    required this.count,
    required this.time,
  });

  final TfArg<num> count;

  final TfArg<String> time;

  @internal
  Map<String, Object?> encode() => {
    'count': count.toTfJson(),
    'time': time.toTfJson(),
  };
}

/// Typed helper for the `stateful_agent.manual_resource_prediction.sunday_schedule` block of
/// `azurerm_managed_devops_pool` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ManagedDevopsPoolSundaySchedule {
  const ManagedDevopsPoolSundaySchedule({
    required this.count,
    required this.time,
  });

  final TfArg<num> count;

  final TfArg<String> time;

  @internal
  Map<String, Object?> encode() => {
    'count': count.toTfJson(),
    'time': time.toTfJson(),
  };
}

/// Typed helper for the `stateful_agent.manual_resource_prediction.thursday_schedule` block of
/// `azurerm_managed_devops_pool` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ManagedDevopsPoolThursdaySchedule {
  const ManagedDevopsPoolThursdaySchedule({
    required this.count,
    required this.time,
  });

  final TfArg<num> count;

  final TfArg<String> time;

  @internal
  Map<String, Object?> encode() => {
    'count': count.toTfJson(),
    'time': time.toTfJson(),
  };
}

/// Typed helper for the `stateful_agent.manual_resource_prediction.tuesday_schedule` block of
/// `azurerm_managed_devops_pool` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ManagedDevopsPoolTuesdaySchedule {
  const ManagedDevopsPoolTuesdaySchedule({
    required this.count,
    required this.time,
  });

  final TfArg<num> count;

  final TfArg<String> time;

  @internal
  Map<String, Object?> encode() => {
    'count': count.toTfJson(),
    'time': time.toTfJson(),
  };
}

/// Typed helper for the `stateful_agent.manual_resource_prediction.wednesday_schedule` block of
/// `azurerm_managed_devops_pool` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ManagedDevopsPoolWednesdaySchedule {
  const ManagedDevopsPoolWednesdaySchedule({
    required this.count,
    required this.time,
  });

  final TfArg<num> count;

  final TfArg<String> time;

  @internal
  Map<String, Object?> encode() => {
    'count': count.toTfJson(),
    'time': time.toTfJson(),
  };
}

/// Typed helper for the `stateless_agent` block of
/// `azurerm_managed_devops_pool` (derived from provider schema).
@immutable
final class ManagedDevopsPoolStatelessAgent {
  const ManagedDevopsPoolStatelessAgent({
    this.automaticResourcePrediction,
    this.manualResourcePrediction,
  });

  final ManagedDevopsPoolAutomaticResourcePrediction?
  automaticResourcePrediction;

  final ManagedDevopsPoolManualResourcePrediction? manualResourcePrediction;

  @internal
  Map<String, Object?> encode() => {
    'automatic_resource_prediction': ?automaticResourcePrediction?.encode(),
    'manual_resource_prediction': ?manualResourcePrediction?.encode(),
  };
}

/// Typed helper for the `virtual_machine_scale_set_fabric` block of
/// `azurerm_managed_devops_pool` (derived from provider schema).
@immutable
final class ManagedDevopsPoolVirtualMachineScaleSetFabric {
  const ManagedDevopsPoolVirtualMachineScaleSetFabric({
    this.osDiskStorageAccountType,
    required this.skuName,
    this.subnetId,
    required this.image,
    this.security,
    this.storage,
  });

  final ManagedDevopsPoolOsDiskStorageAccountType? osDiskStorageAccountType;

  final TfArg<String> skuName;

  final TfArg<String>? subnetId;

  final List<ManagedDevopsPoolImage> image;

  final ManagedDevopsPoolSecurity? security;

  final ManagedDevopsPoolStorage? storage;

  @internal
  Map<String, Object?> encode() => {
    'os_disk_storage_account_type': ?osDiskStorageAccountType?.toTfJson(),
    'sku_name': skuName.toTfJson(),
    'subnet_id': ?subnetId?.toTfJson(),
    'image': [for (final e in image) e.encode()],
    'security': ?security?.encode(),
    'storage': ?storage?.encode(),
  };
}

/// `os_disk_storage_account_type` — derived from the provider schema description.
extension type const ManagedDevopsPoolOsDiskStorageAccountType._(
  TfArg<String> _
) implements TfArg<String> {
  ManagedDevopsPoolOsDiskStorageAccountType.variable(String name)
    : this._(TfArg.variable(name));
  ManagedDevopsPoolOsDiskStorageAccountType.expression(String template)
    : this._(TfArg.expression(template));
  const ManagedDevopsPoolOsDiskStorageAccountType.arg(TfArg<String> arg)
    : this._(arg);

  static const premium = ManagedDevopsPoolOsDiskStorageAccountType._(
    TfArgLiteral('Premium'),
  );
  static const standard = ManagedDevopsPoolOsDiskStorageAccountType._(
    TfArgLiteral('Standard'),
  );
  static const standardssd = ManagedDevopsPoolOsDiskStorageAccountType._(
    TfArgLiteral('StandardSSD'),
  );

  static const List<ManagedDevopsPoolOsDiskStorageAccountType> values = [
    premium,
    standard,
    standardssd,
  ];
}

/// Typed helper for the `virtual_machine_scale_set_fabric.image` block of
/// `azurerm_managed_devops_pool` (derived from provider schema).
@immutable
final class ManagedDevopsPoolImage {
  const ManagedDevopsPoolImage({
    this.aliases,
    this.buffer,
    this.id,
    this.wellKnownImageName,
  });

  final TfArg<List<String>>? aliases;

  final TfArg<String>? buffer;

  final TfArg<String>? id;

  final TfArg<String>? wellKnownImageName;

  @internal
  Map<String, Object?> encode() => {
    'aliases': ?aliases?.toTfJson(),
    'buffer': ?buffer?.toTfJson(),
    'id': ?id?.toTfJson(),
    'well_known_image_name': ?wellKnownImageName?.toTfJson(),
  };
}

/// Typed helper for the `virtual_machine_scale_set_fabric.security` block of
/// `azurerm_managed_devops_pool` (derived from provider schema).
@immutable
final class ManagedDevopsPoolSecurity {
  const ManagedDevopsPoolSecurity({
    this.interactiveLogonEnabled,
    this.keyVaultManagement,
  });

  final TfArg<bool>? interactiveLogonEnabled;

  final ManagedDevopsPoolKeyVaultManagement? keyVaultManagement;

  @internal
  Map<String, Object?> encode() => {
    'interactive_logon_enabled': ?interactiveLogonEnabled?.toTfJson(),
    'key_vault_management': ?keyVaultManagement?.encode(),
  };
}

/// Typed helper for the `virtual_machine_scale_set_fabric.security.key_vault_management` block of
/// `azurerm_managed_devops_pool` (derived from provider schema).
@immutable
final class ManagedDevopsPoolKeyVaultManagement {
  const ManagedDevopsPoolKeyVaultManagement({
    this.certificateStoreLocation,
    this.certificateStoreName,
    this.keyExportEnabled,
    required this.keyVaultCertificateIds,
  });

  final TfArg<String>? certificateStoreLocation;

  final ManagedDevopsPoolCertificateStoreName? certificateStoreName;

  final TfArg<bool>? keyExportEnabled;

  final TfArg<List<String>> keyVaultCertificateIds;

  @internal
  Map<String, Object?> encode() => {
    'certificate_store_location': ?certificateStoreLocation?.toTfJson(),
    'certificate_store_name': ?certificateStoreName?.toTfJson(),
    'key_export_enabled': ?keyExportEnabled?.toTfJson(),
    'key_vault_certificate_ids': keyVaultCertificateIds.toTfJson(),
  };
}

/// `certificate_store_name` — derived from the provider schema description.
extension type const ManagedDevopsPoolCertificateStoreName._(TfArg<String> _)
    implements TfArg<String> {
  ManagedDevopsPoolCertificateStoreName.variable(String name)
    : this._(TfArg.variable(name));
  ManagedDevopsPoolCertificateStoreName.expression(String template)
    : this._(TfArg.expression(template));
  const ManagedDevopsPoolCertificateStoreName.arg(TfArg<String> arg)
    : this._(arg);

  static const my = ManagedDevopsPoolCertificateStoreName._(TfArgLiteral('My'));
  static const root = ManagedDevopsPoolCertificateStoreName._(
    TfArgLiteral('Root'),
  );

  static const List<ManagedDevopsPoolCertificateStoreName> values = [my, root];
}

/// Typed helper for the `virtual_machine_scale_set_fabric.storage` block of
/// `azurerm_managed_devops_pool` (derived from provider schema).
@immutable
final class ManagedDevopsPoolStorage {
  const ManagedDevopsPoolStorage({
    this.caching,
    required this.diskSizeInGb,
    this.driveLetter,
    this.storageAccountType,
  });

  final TfArg<String>? caching;

  final TfArg<num> diskSizeInGb;

  final TfArg<String>? driveLetter;

  final ManagedDevopsPoolStorageAccountType? storageAccountType;

  @internal
  Map<String, Object?> encode() => {
    'caching': ?caching?.toTfJson(),
    'disk_size_in_gb': diskSizeInGb.toTfJson(),
    'drive_letter': ?driveLetter?.toTfJson(),
    'storage_account_type': ?storageAccountType?.toTfJson(),
  };
}

/// `storage_account_type` — derived from the provider schema description.
extension type const ManagedDevopsPoolStorageAccountType._(TfArg<String> _)
    implements TfArg<String> {
  ManagedDevopsPoolStorageAccountType.variable(String name)
    : this._(TfArg.variable(name));
  ManagedDevopsPoolStorageAccountType.expression(String template)
    : this._(TfArg.expression(template));
  const ManagedDevopsPoolStorageAccountType.arg(TfArg<String> arg)
    : this._(arg);

  static const premiumLrs = ManagedDevopsPoolStorageAccountType._(
    TfArgLiteral('Premium_LRS'),
  );
  static const premiumZrs = ManagedDevopsPoolStorageAccountType._(
    TfArgLiteral('Premium_ZRS'),
  );
  static const standardLrs = ManagedDevopsPoolStorageAccountType._(
    TfArgLiteral('Standard_LRS'),
  );
  static const standardssdLrs = ManagedDevopsPoolStorageAccountType._(
    TfArgLiteral('StandardSSD_LRS'),
  );
  static const standardssdZrs = ManagedDevopsPoolStorageAccountType._(
    TfArgLiteral('StandardSSD_ZRS'),
  );

  static const List<ManagedDevopsPoolStorageAccountType> values = [
    premiumLrs,
    premiumZrs,
    standardLrs,
    standardssdLrs,
    standardssdZrs,
  ];
}

/// Factory wrapper for `azurerm_managed_devops_pool`.
final class AzurermManagedDevopsPool extends Resource {
  static const String tfType = 'azurerm_managed_devops_pool';

  AzurermManagedDevopsPool(
    super.localName, {
    required TfArg<String> devCenterProjectId,
    required TfArg<String> location,
    required TfArg<num> maximumConcurrency,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? workFolder,
    required ManagedDevopsPoolAzureDevopsOrganization azureDevopsOrganization,
    ManagedDevopsPoolIdentity? identity,
    required ManagedDevopsPoolAgent agent,
    required ManagedDevopsPoolVirtualMachineScaleSetFabric
    virtualMachineScaleSetFabric,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dev_center_project_id': devCenterProjectId,
           'location': location,
           'maximum_concurrency': maximumConcurrency,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'work_folder': ?workFolder,
           'azure_devops_organization': TfArg.literal(
             azureDevopsOrganization.encode(),
           ),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           ...agent.argMap,
           'virtual_machine_scale_set_fabric': TfArg.literal(
             virtualMachineScaleSetFabric.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermManagedDevopsPoolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermManagedDevopsPool>`.
  RefTo<AzurermManagedDevopsPool> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dev_center_project_id` attribute.
  TfRef<String> get devCenterProjectId =>
      TfRef.attribute<String>(this, 'dev_center_project_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `maximum_concurrency` attribute.
  TfRef<num> get maximumConcurrency =>
      TfRef.attribute<num>(this, 'maximum_concurrency');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `work_folder` attribute.
  TfRef<String> get workFolder => TfRef.attribute<String>(this, 'work_folder');
}
