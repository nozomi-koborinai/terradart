// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_lighthouse_definition`.
const Set<String> _azurermLighthouseDefinitionSensitive = <String>{};

/// Typed helper for the `authorization` block of
/// `azurerm_lighthouse_definition` (derived from provider schema).
@immutable
final class LighthouseDefinitionAuthorization {
  const LighthouseDefinitionAuthorization({
    this.delegatedRoleDefinitionIds,
    this.principalDisplayName,
    required this.principalId,
    required this.roleDefinitionId,
  });

  final TfArg<List<String>>? delegatedRoleDefinitionIds;

  final TfArg<String>? principalDisplayName;

  final TfArg<String> principalId;

  final TfArg<String> roleDefinitionId;

  @internal
  Map<String, Object?> encode() => {
    'delegated_role_definition_ids': ?delegatedRoleDefinitionIds?.toTfJson(),
    'principal_display_name': ?principalDisplayName?.toTfJson(),
    'principal_id': principalId.toTfJson(),
    'role_definition_id': roleDefinitionId.toTfJson(),
  };
}

/// Typed helper for the `eligible_authorization` block of
/// `azurerm_lighthouse_definition` (derived from provider schema).
@immutable
final class LighthouseDefinitionEligibleAuthorization {
  const LighthouseDefinitionEligibleAuthorization({
    this.principalDisplayName,
    required this.principalId,
    required this.roleDefinitionId,
    this.justInTimeAccessPolicy,
  });

  final TfArg<String>? principalDisplayName;

  final TfArg<String> principalId;

  final TfArg<String> roleDefinitionId;

  final LighthouseDefinitionJustInTimeAccessPolicy? justInTimeAccessPolicy;

  @internal
  Map<String, Object?> encode() => {
    'principal_display_name': ?principalDisplayName?.toTfJson(),
    'principal_id': principalId.toTfJson(),
    'role_definition_id': roleDefinitionId.toTfJson(),
    'just_in_time_access_policy': ?justInTimeAccessPolicy?.encode(),
  };
}

/// Typed helper for the `eligible_authorization.just_in_time_access_policy` block of
/// `azurerm_lighthouse_definition` (derived from provider schema).
@immutable
final class LighthouseDefinitionJustInTimeAccessPolicy {
  const LighthouseDefinitionJustInTimeAccessPolicy({
    this.maximumActivationDuration,
    this.multiFactorAuthProvider,
    this.approver,
  });

  final TfArg<String>? maximumActivationDuration;

  final LighthouseDefinitionMultiFactorAuthProvider? multiFactorAuthProvider;

  final List<LighthouseDefinitionApprover>? approver;

  @internal
  Map<String, Object?> encode() => {
    'maximum_activation_duration': ?maximumActivationDuration?.toTfJson(),
    'multi_factor_auth_provider': ?multiFactorAuthProvider?.toTfJson(),
    if (approver != null) 'approver': [for (final e in approver!) e.encode()],
  };
}

/// `multi_factor_auth_provider` — derived from the provider schema description.
extension type const LighthouseDefinitionMultiFactorAuthProvider._(
  TfArg<String> _
) implements TfArg<String> {
  LighthouseDefinitionMultiFactorAuthProvider.variable(String name)
    : this._(TfArg.variable(name));
  LighthouseDefinitionMultiFactorAuthProvider.expression(String template)
    : this._(TfArg.expression(template));
  const LighthouseDefinitionMultiFactorAuthProvider.arg(TfArg<String> arg)
    : this._(arg);

  static const azure = LighthouseDefinitionMultiFactorAuthProvider._(
    TfArgLiteral('Azure'),
  );

  static const List<LighthouseDefinitionMultiFactorAuthProvider> values = [
    azure,
  ];
}

/// Typed helper for the `eligible_authorization.just_in_time_access_policy.approver` block of
/// `azurerm_lighthouse_definition` (derived from provider schema).
@immutable
final class LighthouseDefinitionApprover {
  const LighthouseDefinitionApprover({
    this.principalDisplayName,
    required this.principalId,
  });

  final TfArg<String>? principalDisplayName;

  final TfArg<String> principalId;

  @internal
  Map<String, Object?> encode() => {
    'principal_display_name': ?principalDisplayName?.toTfJson(),
    'principal_id': principalId.toTfJson(),
  };
}

/// Typed helper for the `plan` block of
/// `azurerm_lighthouse_definition` (derived from provider schema).
@immutable
final class LighthouseDefinitionPlan {
  const LighthouseDefinitionPlan({
    required this.name,
    required this.product,
    required this.publisher,
    required this.version,
  });

  final TfArg<String> name;

  final TfArg<String> product;

  final TfArg<String> publisher;

  final TfArg<String> version;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'product': product.toTfJson(),
    'publisher': publisher.toTfJson(),
    'version': version.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_lighthouse_definition`.
final class AzurermLighthouseDefinition extends Resource {
  static const String tfType = 'azurerm_lighthouse_definition';

  AzurermLighthouseDefinition(
    super.localName, {
    TfArg<String>? description,
    TfArg<String>? lighthouseDefinitionId,
    required TfArg<String> managingTenantId,
    required TfArg<String> name,
    required TfArg<String> scope,
    required List<LighthouseDefinitionAuthorization> authorization,
    List<LighthouseDefinitionEligibleAuthorization>? eligibleAuthorization,
    LighthouseDefinitionPlan? plan,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'lighthouse_definition_id': ?lighthouseDefinitionId,
           'managing_tenant_id': managingTenantId,
           'name': name,
           'scope': scope,
           'authorization': TfArg.literal([
             for (final e in authorization) e.encode(),
           ]),
           if (eligibleAuthorization != null)
             'eligible_authorization': TfArg.literal([
               for (final e in eligibleAuthorization) e.encode(),
             ]),
           if (plan != null) 'plan': TfArg.literal(plan.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermLighthouseDefinitionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLighthouseDefinition>`.
  RefTo<AzurermLighthouseDefinition> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `lighthouse_definition_id` attribute.
  TfRef<String> get lighthouseDefinitionId =>
      TfRef.attribute<String>(this, 'lighthouse_definition_id');

  /// Reference to `managing_tenant_id` attribute.
  TfRef<String> get managingTenantId =>
      TfRef.attribute<String>(this, 'managing_tenant_id');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');
}
