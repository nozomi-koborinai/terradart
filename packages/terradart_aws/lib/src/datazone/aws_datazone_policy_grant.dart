// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datazone_policy_grant`.
const Set<String> _awsDatazonePolicyGrantSensitive = <String>{};

/// Datazone Policy Grant Entity enum for `entity_type`.
extension type const DatazonePolicyGrantEntityType._(TfArg<String> _)
    implements TfArg<String> {
  DatazonePolicyGrantEntityType.variable(String name)
    : this._(TfArg.variable(name));
  DatazonePolicyGrantEntityType.expression(String template)
    : this._(TfArg.expression(template));
  const DatazonePolicyGrantEntityType.arg(TfArg<String> arg) : this._(arg);

  static const domainUnit = DatazonePolicyGrantEntityType._(
    TfArgLiteral('DOMAIN_UNIT'),
  );
  static const environmentBlueprintConfiguration =
      DatazonePolicyGrantEntityType._(
        TfArgLiteral('ENVIRONMENT_BLUEPRINT_CONFIGURATION'),
      );
  static const environmentProfile = DatazonePolicyGrantEntityType._(
    TfArgLiteral('ENVIRONMENT_PROFILE'),
  );
  static const assetType = DatazonePolicyGrantEntityType._(
    TfArgLiteral('ASSET_TYPE'),
  );

  static const List<DatazonePolicyGrantEntityType> values = [
    domainUnit,
    environmentBlueprintConfiguration,
    environmentProfile,
    assetType,
  ];
}

/// Datazone Policy Grant Policy enum for `policy_type`.
extension type const DatazonePolicyGrantPolicyType._(TfArg<String> _)
    implements TfArg<String> {
  DatazonePolicyGrantPolicyType.variable(String name)
    : this._(TfArg.variable(name));
  DatazonePolicyGrantPolicyType.expression(String template)
    : this._(TfArg.expression(template));
  const DatazonePolicyGrantPolicyType.arg(TfArg<String> arg) : this._(arg);

  static const createDomainUnit = DatazonePolicyGrantPolicyType._(
    TfArgLiteral('CREATE_DOMAIN_UNIT'),
  );
  static const overrideDomainUnitOwners = DatazonePolicyGrantPolicyType._(
    TfArgLiteral('OVERRIDE_DOMAIN_UNIT_OWNERS'),
  );
  static const addToProjectMemberPool = DatazonePolicyGrantPolicyType._(
    TfArgLiteral('ADD_TO_PROJECT_MEMBER_POOL'),
  );
  static const overrideProjectOwners = DatazonePolicyGrantPolicyType._(
    TfArgLiteral('OVERRIDE_PROJECT_OWNERS'),
  );
  static const createGlossary = DatazonePolicyGrantPolicyType._(
    TfArgLiteral('CREATE_GLOSSARY'),
  );
  static const createFormType = DatazonePolicyGrantPolicyType._(
    TfArgLiteral('CREATE_FORM_TYPE'),
  );
  static const createAssetType = DatazonePolicyGrantPolicyType._(
    TfArgLiteral('CREATE_ASSET_TYPE'),
  );
  static const createProject = DatazonePolicyGrantPolicyType._(
    TfArgLiteral('CREATE_PROJECT'),
  );
  static const createEnvironmentProfile = DatazonePolicyGrantPolicyType._(
    TfArgLiteral('CREATE_ENVIRONMENT_PROFILE'),
  );
  static const delegateCreateEnvironmentProfile =
      DatazonePolicyGrantPolicyType._(
        TfArgLiteral('DELEGATE_CREATE_ENVIRONMENT_PROFILE'),
      );
  static const createEnvironment = DatazonePolicyGrantPolicyType._(
    TfArgLiteral('CREATE_ENVIRONMENT'),
  );
  static const createEnvironmentFromBlueprint = DatazonePolicyGrantPolicyType._(
    TfArgLiteral('CREATE_ENVIRONMENT_FROM_BLUEPRINT'),
  );
  static const createProjectFromProjectProfile =
      DatazonePolicyGrantPolicyType._(
        TfArgLiteral('CREATE_PROJECT_FROM_PROJECT_PROFILE'),
      );
  static const useAssetType = DatazonePolicyGrantPolicyType._(
    TfArgLiteral('USE_ASSET_TYPE'),
  );

  static const List<DatazonePolicyGrantPolicyType> values = [
    createDomainUnit,
    overrideDomainUnitOwners,
    addToProjectMemberPool,
    overrideProjectOwners,
    createGlossary,
    createFormType,
    createAssetType,
    createProject,
    createEnvironmentProfile,
    delegateCreateEnvironmentProfile,
    createEnvironment,
    createEnvironmentFromBlueprint,
    createProjectFromProjectProfile,
    useAssetType,
  ];
}

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

  final List<DatazonePolicyGrantAddToProjectMemberPool>? addToProjectMemberPool;

  final List<DatazonePolicyGrantCreateAssetType>? createAssetType;

  final List<DatazonePolicyGrantCreateDomainUnit>? createDomainUnit;

  final List<DatazonePolicyGrantCreateEnvironment>? createEnvironment;

  final List<DatazonePolicyGrantCreateEnvironmentFromBlueprint>?
  createEnvironmentFromBlueprint;

  final List<DatazonePolicyGrantCreateEnvironmentProfile>?
  createEnvironmentProfile;

  final List<DatazonePolicyGrantCreateFormType>? createFormType;

  final List<DatazonePolicyGrantCreateGlossary>? createGlossary;

  final List<DatazonePolicyGrantCreateProject>? createProject;

  final List<DatazonePolicyGrantCreateProjectFromProjectProfile>?
  createProjectFromProjectProfile;

  final List<DatazonePolicyGrantDelegateCreateEnvironmentProfile>?
  delegateCreateEnvironmentProfile;

  final List<DatazonePolicyGrantOverrideDomainUnitOwners>?
  overrideDomainUnitOwners;

  final List<DatazonePolicyGrantOverrideProjectOwners>? overrideProjectOwners;

  final List<DatazonePolicyGrantUseAssetType>? useAssetType;

  @internal
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
final class DatazonePolicyGrantAddToProjectMemberPool {
  const DatazonePolicyGrantAddToProjectMemberPool({
    this.includeChildDomainUnits,
  });

  final TfArg<bool>? includeChildDomainUnits;

  @internal
  Map<String, Object?> encode() => {
    'include_child_domain_units': ?includeChildDomainUnits?.toTfJson(),
  };
}

/// Typed helper for the `detail.create_asset_type` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantCreateAssetType {
  const DatazonePolicyGrantCreateAssetType({this.includeChildDomainUnits});

  final TfArg<bool>? includeChildDomainUnits;

  @internal
  Map<String, Object?> encode() => {
    'include_child_domain_units': ?includeChildDomainUnits?.toTfJson(),
  };
}

/// Typed helper for the `detail.create_domain_unit` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantCreateDomainUnit {
  const DatazonePolicyGrantCreateDomainUnit({this.includeChildDomainUnits});

  final TfArg<bool>? includeChildDomainUnits;

  @internal
  Map<String, Object?> encode() => {
    'include_child_domain_units': ?includeChildDomainUnits?.toTfJson(),
  };
}

/// Typed helper for the `detail.create_environment` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantCreateEnvironment {
  const DatazonePolicyGrantCreateEnvironment();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `detail.create_environment_from_blueprint` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantCreateEnvironmentFromBlueprint {
  const DatazonePolicyGrantCreateEnvironmentFromBlueprint();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `detail.create_environment_profile` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantCreateEnvironmentProfile {
  const DatazonePolicyGrantCreateEnvironmentProfile({this.domainUnitId});

  final TfArg<String>? domainUnitId;

  @internal
  Map<String, Object?> encode() => {
    'domain_unit_id': ?domainUnitId?.toTfJson(),
  };
}

/// Typed helper for the `detail.create_form_type` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantCreateFormType {
  const DatazonePolicyGrantCreateFormType({this.includeChildDomainUnits});

  final TfArg<bool>? includeChildDomainUnits;

  @internal
  Map<String, Object?> encode() => {
    'include_child_domain_units': ?includeChildDomainUnits?.toTfJson(),
  };
}

/// Typed helper for the `detail.create_glossary` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantCreateGlossary {
  const DatazonePolicyGrantCreateGlossary({this.includeChildDomainUnits});

  final TfArg<bool>? includeChildDomainUnits;

  @internal
  Map<String, Object?> encode() => {
    'include_child_domain_units': ?includeChildDomainUnits?.toTfJson(),
  };
}

/// Typed helper for the `detail.create_project` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantCreateProject {
  const DatazonePolicyGrantCreateProject({this.includeChildDomainUnits});

  final TfArg<bool>? includeChildDomainUnits;

  @internal
  Map<String, Object?> encode() => {
    'include_child_domain_units': ?includeChildDomainUnits?.toTfJson(),
  };
}

/// Typed helper for the `detail.create_project_from_project_profile` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantCreateProjectFromProjectProfile {
  const DatazonePolicyGrantCreateProjectFromProjectProfile({
    this.includeChildDomainUnits,
    this.projectProfiles,
  });

  final TfArg<bool>? includeChildDomainUnits;

  final TfArg<List<String>>? projectProfiles;

  @internal
  Map<String, Object?> encode() => {
    'include_child_domain_units': ?includeChildDomainUnits?.toTfJson(),
    'project_profiles': ?projectProfiles?.toTfJson(),
  };
}

/// Typed helper for the `detail.delegate_create_environment_profile` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantDelegateCreateEnvironmentProfile {
  const DatazonePolicyGrantDelegateCreateEnvironmentProfile();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `detail.override_domain_unit_owners` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantOverrideDomainUnitOwners {
  const DatazonePolicyGrantOverrideDomainUnitOwners({
    this.includeChildDomainUnits,
  });

  final TfArg<bool>? includeChildDomainUnits;

  @internal
  Map<String, Object?> encode() => {
    'include_child_domain_units': ?includeChildDomainUnits?.toTfJson(),
  };
}

/// Typed helper for the `detail.override_project_owners` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantOverrideProjectOwners {
  const DatazonePolicyGrantOverrideProjectOwners({
    this.includeChildDomainUnits,
  });

  final TfArg<bool>? includeChildDomainUnits;

  @internal
  Map<String, Object?> encode() => {
    'include_child_domain_units': ?includeChildDomainUnits?.toTfJson(),
  };
}

/// Typed helper for the `detail.use_asset_type` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantUseAssetType {
  const DatazonePolicyGrantUseAssetType({this.domainUnitId});

  final TfArg<String>? domainUnitId;

  @internal
  Map<String, Object?> encode() => {
    'domain_unit_id': ?domainUnitId?.toTfJson(),
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

  final List<DatazonePolicyGrantDomainUnit>? domainUnit;

  final List<DatazonePolicyGrantGroup>? group;

  final List<DatazonePolicyGrantProject>? project;

  final List<DatazonePolicyGrantUser>? user;

  @internal
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
final class DatazonePolicyGrantDomainUnit {
  const DatazonePolicyGrantDomainUnit({
    required this.domainUnitDesignation,
    this.domainUnitIdentifier,
    this.allDomainUnitsGrantFilter,
  });

  final DatazonePolicyGrantDomainUnitDesignation domainUnitDesignation;

  final TfArg<String>? domainUnitIdentifier;

  final List<DatazonePolicyGrantAllDomainUnitsGrantFilter>?
  allDomainUnitsGrantFilter;

  @internal
  Map<String, Object?> encode() => {
    'domain_unit_designation': domainUnitDesignation.toTfJson(),
    'domain_unit_identifier': ?domainUnitIdentifier?.toTfJson(),
    if (allDomainUnitsGrantFilter != null)
      'all_domain_units_grant_filter': [
        for (final e in allDomainUnitsGrantFilter!) e.encode(),
      ],
  };
}

/// `domain_unit_designation` — derived from the provider schema description.
extension type const DatazonePolicyGrantDomainUnitDesignation._(TfArg<String> _)
    implements TfArg<String> {
  DatazonePolicyGrantDomainUnitDesignation.variable(String name)
    : this._(TfArg.variable(name));
  DatazonePolicyGrantDomainUnitDesignation.expression(String template)
    : this._(TfArg.expression(template));
  const DatazonePolicyGrantDomainUnitDesignation.arg(TfArg<String> arg)
    : this._(arg);

  static const owner = DatazonePolicyGrantDomainUnitDesignation._(
    TfArgLiteral('OWNER'),
  );

  static const List<DatazonePolicyGrantDomainUnitDesignation> values = [owner];
}

/// Typed helper for the `principal.domain_unit.all_domain_units_grant_filter` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantAllDomainUnitsGrantFilter {
  const DatazonePolicyGrantAllDomainUnitsGrantFilter();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `principal.group` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantGroup {
  const DatazonePolicyGrantGroup({required this.groupIdentifier});

  final TfArg<String> groupIdentifier;

  @internal
  Map<String, Object?> encode() => {
    'group_identifier': groupIdentifier.toTfJson(),
  };
}

/// Typed helper for the `principal.project` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantProject {
  const DatazonePolicyGrantProject({
    required this.projectDesignation,
    this.projectIdentifier,
    this.domainUnitFilter,
  });

  final DatazonePolicyGrantProjectDesignation projectDesignation;

  final TfArg<String>? projectIdentifier;

  final List<DatazonePolicyGrantDomainUnitFilter>? domainUnitFilter;

  @internal
  Map<String, Object?> encode() => {
    'project_designation': projectDesignation.toTfJson(),
    'project_identifier': ?projectIdentifier?.toTfJson(),
    if (domainUnitFilter != null)
      'domain_unit_filter': [for (final e in domainUnitFilter!) e.encode()],
  };
}

/// `project_designation` — derived from the provider schema description.
extension type const DatazonePolicyGrantProjectDesignation._(TfArg<String> _)
    implements TfArg<String> {
  DatazonePolicyGrantProjectDesignation.variable(String name)
    : this._(TfArg.variable(name));
  DatazonePolicyGrantProjectDesignation.expression(String template)
    : this._(TfArg.expression(template));
  const DatazonePolicyGrantProjectDesignation.arg(TfArg<String> arg)
    : this._(arg);

  static const owner = DatazonePolicyGrantProjectDesignation._(
    TfArgLiteral('OWNER'),
  );
  static const contributor = DatazonePolicyGrantProjectDesignation._(
    TfArgLiteral('CONTRIBUTOR'),
  );
  static const projectCatalogSteward = DatazonePolicyGrantProjectDesignation._(
    TfArgLiteral('PROJECT_CATALOG_STEWARD'),
  );

  static const List<DatazonePolicyGrantProjectDesignation> values = [
    owner,
    contributor,
    projectCatalogSteward,
  ];
}

/// Typed helper for the `principal.project.domain_unit_filter` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantDomainUnitFilter {
  const DatazonePolicyGrantDomainUnitFilter({
    required this.domainUnit,
    this.includeChildDomainUnits,
  });

  final TfArg<String> domainUnit;

  final TfArg<bool>? includeChildDomainUnits;

  @internal
  Map<String, Object?> encode() => {
    'domain_unit': domainUnit.toTfJson(),
    'include_child_domain_units': ?includeChildDomainUnits?.toTfJson(),
  };
}

/// Typed helper for the `principal.user` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantUser {
  const DatazonePolicyGrantUser({
    this.userIdentifier,
    this.allUsersGrantFilter,
  });

  final TfArg<String>? userIdentifier;

  final List<DatazonePolicyGrantAllUsersGrantFilter>? allUsersGrantFilter;

  @internal
  Map<String, Object?> encode() => {
    'user_identifier': ?userIdentifier?.toTfJson(),
    if (allUsersGrantFilter != null)
      'all_users_grant_filter': [
        for (final e in allUsersGrantFilter!) e.encode(),
      ],
  };
}

/// Typed helper for the `principal.user.all_users_grant_filter` block of
/// `aws_datazone_policy_grant` (derived from provider schema).
@immutable
final class DatazonePolicyGrantAllUsersGrantFilter {
  const DatazonePolicyGrantAllUsersGrantFilter();

  @internal
  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `aws_datazone_policy_grant`.
final class AwsDatazonePolicyGrant extends Resource {
  static const String tfType = 'aws_datazone_policy_grant';

  AwsDatazonePolicyGrant(
    super.localName, {
    required TfArg<String> domainIdentifier,
    required TfArg<String> entityIdentifier,
    required DatazonePolicyGrantEntityType entityType,
    required DatazonePolicyGrantPolicyType policyType,
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
           'region': ?region,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDatazonePolicyGrant>`.
  RefTo<AwsDatazonePolicyGrant> get ref => RefTo.of(this);

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `created_by` attribute.
  TfRef<String> get createdBy => TfRef.attribute<String>(this, 'created_by');

  /// Reference to `grant_id` attribute.
  TfRef<String> get grantId => TfRef.attribute<String>(this, 'grant_id');

  /// Reference to `domain_identifier` attribute.
  TfRef<String> get domainIdentifier =>
      TfRef.attribute<String>(this, 'domain_identifier');

  /// Reference to `entity_identifier` attribute.
  TfRef<String> get entityIdentifier =>
      TfRef.attribute<String>(this, 'entity_identifier');

  /// Reference to `entity_type` attribute.
  TfRef<String> get entityType => TfRef.attribute<String>(this, 'entity_type');

  /// Reference to `policy_type` attribute.
  TfRef<String> get policyType => TfRef.attribute<String>(this, 'policy_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
