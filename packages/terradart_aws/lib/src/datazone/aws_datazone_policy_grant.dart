// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datazone_policy_grant`.
const Set<String> _awsDatazonePolicyGrantSensitive = <String>{};

/// Typed helper for the `detail` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantDetail {
  const DatazonePolicyGrantDetail({
    this.addToProjectMemberPool,
    this.createAssetType,
    this.createDomainUnit,
    this.createEnvironment,
    this.createEnvironmentFromBlueprint,
    this.createEnvironmentProfile,
    this.createFormType,
    this.createGlossary,
    this.createProject,
    this.createProjectFromProjectProfile,
    this.delegateCreateEnvironmentProfile,
    this.overrideDomainUnitOwners,
    this.overrideProjectOwners,
    this.useAssetType,
  });

  final List<DatazonePolicyGrantDetailAddToProjectMemberPool>?
  addToProjectMemberPool;

  final List<DatazonePolicyGrantDetailCreateAssetType>? createAssetType;

  final List<DatazonePolicyGrantDetailCreateDomainUnit>? createDomainUnit;

  final List<DatazonePolicyGrantDetailCreateEnvironment>? createEnvironment;

  final List<DatazonePolicyGrantDetailCreateEnvironmentFromBlueprint>?
  createEnvironmentFromBlueprint;

  final List<DatazonePolicyGrantDetailCreateEnvironmentProfile>?
  createEnvironmentProfile;

  final List<DatazonePolicyGrantDetailCreateFormType>? createFormType;

  final List<DatazonePolicyGrantDetailCreateGlossary>? createGlossary;

  final List<DatazonePolicyGrantDetailCreateProject>? createProject;

  final List<DatazonePolicyGrantDetailCreateProjectFromProjectProfile>?
  createProjectFromProjectProfile;

  final List<DatazonePolicyGrantDetailDelegateCreateEnvironmentProfile>?
  delegateCreateEnvironmentProfile;

  final List<DatazonePolicyGrantDetailOverrideDomainUnitOwners>?
  overrideDomainUnitOwners;

  final List<DatazonePolicyGrantDetailOverrideProjectOwners>?
  overrideProjectOwners;

  final List<DatazonePolicyGrantDetailUseAssetType>? useAssetType;

  Map<String, Object?> encode() => {
    if (addToProjectMemberPool != null)
      'add_to_project_member_pool': [
        for (final e in addToProjectMemberPool!) e.encode(),
      ],
    if (createAssetType != null)
      'create_asset_type': [for (final e in createAssetType!) e.encode()],
    if (createDomainUnit != null)
      'create_domain_unit': [for (final e in createDomainUnit!) e.encode()],
    if (createEnvironment != null)
      'create_environment': [for (final e in createEnvironment!) e.encode()],
    if (createEnvironmentFromBlueprint != null)
      'create_environment_from_blueprint': [
        for (final e in createEnvironmentFromBlueprint!) e.encode(),
      ],
    if (createEnvironmentProfile != null)
      'create_environment_profile': [
        for (final e in createEnvironmentProfile!) e.encode(),
      ],
    if (createFormType != null)
      'create_form_type': [for (final e in createFormType!) e.encode()],
    if (createGlossary != null)
      'create_glossary': [for (final e in createGlossary!) e.encode()],
    if (createProject != null)
      'create_project': [for (final e in createProject!) e.encode()],
    if (createProjectFromProjectProfile != null)
      'create_project_from_project_profile': [
        for (final e in createProjectFromProjectProfile!) e.encode(),
      ],
    if (delegateCreateEnvironmentProfile != null)
      'delegate_create_environment_profile': [
        for (final e in delegateCreateEnvironmentProfile!) e.encode(),
      ],
    if (overrideDomainUnitOwners != null)
      'override_domain_unit_owners': [
        for (final e in overrideDomainUnitOwners!) e.encode(),
      ],
    if (overrideProjectOwners != null)
      'override_project_owners': [
        for (final e in overrideProjectOwners!) e.encode(),
      ],
    if (useAssetType != null)
      'use_asset_type': [for (final e in useAssetType!) e.encode()],
  };
}

/// Typed helper for the `detail.add_to_project_member_pool` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantDetailAddToProjectMemberPool {
  const DatazonePolicyGrantDetailAddToProjectMemberPool({
    this.includeChildDomainUnits,
  });

  final TfArg<bool>? includeChildDomainUnits;

  Map<String, Object?> encode() => {
    if (includeChildDomainUnits != null)
      'include_child_domain_units': includeChildDomainUnits!.toTfJson(),
  };
}

/// Typed helper for the `detail.create_asset_type` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantDetailCreateAssetType {
  const DatazonePolicyGrantDetailCreateAssetType({
    this.includeChildDomainUnits,
  });

  final TfArg<bool>? includeChildDomainUnits;

  Map<String, Object?> encode() => {
    if (includeChildDomainUnits != null)
      'include_child_domain_units': includeChildDomainUnits!.toTfJson(),
  };
}

/// Typed helper for the `detail.create_domain_unit` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantDetailCreateDomainUnit {
  const DatazonePolicyGrantDetailCreateDomainUnit({
    this.includeChildDomainUnits,
  });

  final TfArg<bool>? includeChildDomainUnits;

  Map<String, Object?> encode() => {
    if (includeChildDomainUnits != null)
      'include_child_domain_units': includeChildDomainUnits!.toTfJson(),
  };
}

/// Typed helper for the `detail.create_environment` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantDetailCreateEnvironment {
  const DatazonePolicyGrantDetailCreateEnvironment();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `detail.create_environment_from_blueprint` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantDetailCreateEnvironmentFromBlueprint {
  const DatazonePolicyGrantDetailCreateEnvironmentFromBlueprint();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `detail.create_environment_profile` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantDetailCreateEnvironmentProfile {
  const DatazonePolicyGrantDetailCreateEnvironmentProfile({this.domainUnitId});

  final TfArg<String>? domainUnitId;

  Map<String, Object?> encode() => {
    if (domainUnitId != null) 'domain_unit_id': domainUnitId!.toTfJson(),
  };
}

/// Typed helper for the `detail.create_form_type` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantDetailCreateFormType {
  const DatazonePolicyGrantDetailCreateFormType({this.includeChildDomainUnits});

  final TfArg<bool>? includeChildDomainUnits;

  Map<String, Object?> encode() => {
    if (includeChildDomainUnits != null)
      'include_child_domain_units': includeChildDomainUnits!.toTfJson(),
  };
}

/// Typed helper for the `detail.create_glossary` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantDetailCreateGlossary {
  const DatazonePolicyGrantDetailCreateGlossary({this.includeChildDomainUnits});

  final TfArg<bool>? includeChildDomainUnits;

  Map<String, Object?> encode() => {
    if (includeChildDomainUnits != null)
      'include_child_domain_units': includeChildDomainUnits!.toTfJson(),
  };
}

/// Typed helper for the `detail.create_project` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantDetailCreateProject {
  const DatazonePolicyGrantDetailCreateProject({this.includeChildDomainUnits});

  final TfArg<bool>? includeChildDomainUnits;

  Map<String, Object?> encode() => {
    if (includeChildDomainUnits != null)
      'include_child_domain_units': includeChildDomainUnits!.toTfJson(),
  };
}

/// Typed helper for the `detail.create_project_from_project_profile` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantDetailCreateProjectFromProjectProfile {
  const DatazonePolicyGrantDetailCreateProjectFromProjectProfile({
    this.includeChildDomainUnits,
    this.projectProfiles,
  });

  final TfArg<bool>? includeChildDomainUnits;

  final TfArg<List<Object?>>? projectProfiles;

  Map<String, Object?> encode() => {
    if (includeChildDomainUnits != null)
      'include_child_domain_units': includeChildDomainUnits!.toTfJson(),
    if (projectProfiles != null)
      'project_profiles': projectProfiles!.toTfJson(),
  };
}

/// Typed helper for the `detail.delegate_create_environment_profile` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantDetailDelegateCreateEnvironmentProfile {
  const DatazonePolicyGrantDetailDelegateCreateEnvironmentProfile();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `detail.override_domain_unit_owners` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantDetailOverrideDomainUnitOwners {
  const DatazonePolicyGrantDetailOverrideDomainUnitOwners({
    this.includeChildDomainUnits,
  });

  final TfArg<bool>? includeChildDomainUnits;

  Map<String, Object?> encode() => {
    if (includeChildDomainUnits != null)
      'include_child_domain_units': includeChildDomainUnits!.toTfJson(),
  };
}

/// Typed helper for the `detail.override_project_owners` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantDetailOverrideProjectOwners {
  const DatazonePolicyGrantDetailOverrideProjectOwners({
    this.includeChildDomainUnits,
  });

  final TfArg<bool>? includeChildDomainUnits;

  Map<String, Object?> encode() => {
    if (includeChildDomainUnits != null)
      'include_child_domain_units': includeChildDomainUnits!.toTfJson(),
  };
}

/// Typed helper for the `detail.use_asset_type` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantDetailUseAssetType {
  const DatazonePolicyGrantDetailUseAssetType({this.domainUnitId});

  final TfArg<String>? domainUnitId;

  Map<String, Object?> encode() => {
    if (domainUnitId != null) 'domain_unit_id': domainUnitId!.toTfJson(),
  };
}

/// Typed helper for the `principal` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantPrincipal {
  const DatazonePolicyGrantPrincipal({
    this.domainUnit,
    this.group,
    this.project,
    this.user,
  });

  final List<DatazonePolicyGrantPrincipalDomainUnit>? domainUnit;

  final List<DatazonePolicyGrantPrincipalGroup>? group;

  final List<DatazonePolicyGrantPrincipalProject>? project;

  final List<DatazonePolicyGrantPrincipalUser>? user;

  Map<String, Object?> encode() => {
    if (domainUnit != null)
      'domain_unit': [for (final e in domainUnit!) e.encode()],
    if (group != null) 'group': [for (final e in group!) e.encode()],
    if (project != null) 'project': [for (final e in project!) e.encode()],
    if (user != null) 'user': [for (final e in user!) e.encode()],
  };
}

/// Typed helper for the `principal.domain_unit` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantPrincipalDomainUnit {
  const DatazonePolicyGrantPrincipalDomainUnit({
    required this.domainUnitDesignation,
    this.domainUnitIdentifier,
    this.allDomainUnitsGrantFilter,
  });

  final TfArg<String> domainUnitDesignation;

  final TfArg<String>? domainUnitIdentifier;

  final List<DatazonePolicyGrantPrincipalDomainUnitAllDomainUnitsGrantFilter>?
  allDomainUnitsGrantFilter;

  Map<String, Object?> encode() => {
    'domain_unit_designation': domainUnitDesignation.toTfJson(),
    if (domainUnitIdentifier != null)
      'domain_unit_identifier': domainUnitIdentifier!.toTfJson(),
    if (allDomainUnitsGrantFilter != null)
      'all_domain_units_grant_filter': [
        for (final e in allDomainUnitsGrantFilter!) e.encode(),
      ],
  };
}

/// Typed helper for the `principal.domain_unit.all_domain_units_grant_filter` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantPrincipalDomainUnitAllDomainUnitsGrantFilter {
  const DatazonePolicyGrantPrincipalDomainUnitAllDomainUnitsGrantFilter();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `principal.group` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantPrincipalGroup {
  const DatazonePolicyGrantPrincipalGroup({required this.groupIdentifier});

  final TfArg<String> groupIdentifier;

  Map<String, Object?> encode() => {
    'group_identifier': groupIdentifier.toTfJson(),
  };
}

/// Typed helper for the `principal.project` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantPrincipalProject {
  const DatazonePolicyGrantPrincipalProject({
    required this.projectDesignation,
    this.projectIdentifier,
    this.domainUnitFilter,
  });

  final TfArg<String> projectDesignation;

  final TfArg<String>? projectIdentifier;

  final List<DatazonePolicyGrantPrincipalProjectDomainUnitFilter>?
  domainUnitFilter;

  Map<String, Object?> encode() => {
    'project_designation': projectDesignation.toTfJson(),
    if (projectIdentifier != null)
      'project_identifier': projectIdentifier!.toTfJson(),
    if (domainUnitFilter != null)
      'domain_unit_filter': [for (final e in domainUnitFilter!) e.encode()],
  };
}

/// Typed helper for the `principal.project.domain_unit_filter` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantPrincipalProjectDomainUnitFilter {
  const DatazonePolicyGrantPrincipalProjectDomainUnitFilter({
    required this.domainUnit,
    this.includeChildDomainUnits,
  });

  final TfArg<String> domainUnit;

  final TfArg<bool>? includeChildDomainUnits;

  Map<String, Object?> encode() => {
    'domain_unit': domainUnit.toTfJson(),
    if (includeChildDomainUnits != null)
      'include_child_domain_units': includeChildDomainUnits!.toTfJson(),
  };
}

/// Typed helper for the `principal.user` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantPrincipalUser {
  const DatazonePolicyGrantPrincipalUser({
    this.userIdentifier,
    this.allUsersGrantFilter,
  });

  final TfArg<String>? userIdentifier;

  final List<DatazonePolicyGrantPrincipalUserAllUsersGrantFilter>?
  allUsersGrantFilter;

  Map<String, Object?> encode() => {
    if (userIdentifier != null) 'user_identifier': userIdentifier!.toTfJson(),
    if (allUsersGrantFilter != null)
      'all_users_grant_filter': [
        for (final e in allUsersGrantFilter!) e.encode(),
      ],
  };
}

/// Typed helper for the `principal.user.all_users_grant_filter` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantPrincipalUserAllUsersGrantFilter {
  const DatazonePolicyGrantPrincipalUserAllUsersGrantFilter();

  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `aws_datazone_policy_grant`.
final class AwsDatazonePolicyGrant extends Resource {
  static const String tfType = 'aws_datazone_policy_grant';

  AwsDatazonePolicyGrant({
    required super.localName,
    required TfArg<String> domainIdentifier,
    required TfArg<String> entityIdentifier,
    required TfArg<String> entityType,
    required TfArg<String> policyType,
    TfArg<String>? region,
    List<DatazonePolicyGrantDetail>? detail,
    List<DatazonePolicyGrantPrincipal>? principal,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_identifier': domainIdentifier,
           'entity_identifier': entityIdentifier,
           'entity_type': entityType,
           'policy_type': policyType,
           if (region != null) 'region': region,
           if (detail != null)
             'detail': TfArg.literal([for (final e in detail) e.encode()]),
           if (principal != null)
             'principal': TfArg.literal([
               for (final e in principal) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatazonePolicyGrantSensitive;

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `created_by` attribute.
  TfRef<String> get createdBy => TfRef.attribute<String>(this, 'created_by');

  /// Reference to `grant_id` attribute.
  TfRef<String> get grantId => TfRef.attribute<String>(this, 'grant_id');
}
