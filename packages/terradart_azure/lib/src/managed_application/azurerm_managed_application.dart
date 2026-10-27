// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_managed_application`.
const Set<String> _azurermManagedApplicationSensitive = <String>{};

/// Managed Application enum for `kind`.
extension type const ManagedApplicationKind._(TfArg<String> _)
    implements TfArg<String> {
  ManagedApplicationKind.variable(String name) : this._(TfArg.variable(name));
  ManagedApplicationKind.expression(String template)
    : this._(TfArg.expression(template));
  const ManagedApplicationKind.arg(TfArg<String> arg) : this._(arg);

  static const marketplace = ManagedApplicationKind._(
    TfArgLiteral('MarketPlace'),
  );
  static const servicecatalog = ManagedApplicationKind._(
    TfArgLiteral('ServiceCatalog'),
  );

  static const List<ManagedApplicationKind> values = [
    marketplace,
    servicecatalog,
  ];
}

/// Typed helper for the `identity` block of
/// `azurerm_managed_application` (derived from provider schema).
@immutable
final class ManagedApplicationIdentity {
  const ManagedApplicationIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `plan` block of
/// `azurerm_managed_application` (derived from provider schema).
@immutable
final class ManagedApplicationPlan {
  const ManagedApplicationPlan({
    required this.name,
    required this.product,
    this.promotionCode,
    required this.publisher,
    required this.version,
  });

  final TfArg<String> name;

  final TfArg<String> product;

  final TfArg<String>? promotionCode;

  final TfArg<String> publisher;

  final TfArg<String> version;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'product': product.toTfJson(),
    'promotion_code': ?promotionCode?.toTfJson(),
    'publisher': publisher.toTfJson(),
    'version': version.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_managed_application`.
final class AzurermManagedApplication extends Resource {
  static const String tfType = 'azurerm_managed_application';

  AzurermManagedApplication(
    super.localName, {
    TfArg<String>? applicationDefinitionId,
    required ManagedApplicationKind kind,
    required TfArg<String> location,
    required TfArg<String> managedResourceGroupName,
    required TfArg<String> name,
    TfArg<String>? parameterValues,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    ManagedApplicationIdentity? identity,
    ManagedApplicationPlan? plan,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_definition_id': ?applicationDefinitionId,
           'kind': kind,
           'location': location,
           'managed_resource_group_name': managedResourceGroupName,
           'name': name,
           'parameter_values': ?parameterValues,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (plan != null) 'plan': TfArg.literal(plan.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermManagedApplicationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermManagedApplication>`.
  RefTo<AzurermManagedApplication> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `outputs` attribute.
  TfRef<Map<String, String>> get outputs =>
      TfRef.attribute<Map<String, String>>(this, 'outputs');

  /// Reference to `application_definition_id` attribute.
  TfRef<String> get applicationDefinitionId =>
      TfRef.attribute<String>(this, 'application_definition_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `managed_resource_group_name` attribute.
  TfRef<String> get managedResourceGroupName =>
      TfRef.attribute<String>(this, 'managed_resource_group_name');

  /// Reference to `parameter_values` attribute.
  TfRef<String> get parameterValues =>
      TfRef.attribute<String>(this, 'parameter_values');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
