// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_blueprint_assignment`.
const Set<String> _azurermBlueprintAssignmentSensitive = <String>{};

/// Blueprint Assignment Lock enum for `lock_mode`.
extension type const BlueprintAssignmentLockMode._(TfArg<String> _)
    implements TfArg<String> {
  BlueprintAssignmentLockMode.variable(String name)
    : this._(TfArg.variable(name));
  BlueprintAssignmentLockMode.expression(String template)
    : this._(TfArg.expression(template));
  const BlueprintAssignmentLockMode.arg(TfArg<String> arg) : this._(arg);

  static const allresourcesdonotdelete = BlueprintAssignmentLockMode._(
    TfArgLiteral('AllResourcesDoNotDelete'),
  );
  static const allresourcesreadonly = BlueprintAssignmentLockMode._(
    TfArgLiteral('AllResourcesReadOnly'),
  );
  static const none = BlueprintAssignmentLockMode._(TfArgLiteral('None'));

  static const List<BlueprintAssignmentLockMode> values = [
    allresourcesdonotdelete,
    allresourcesreadonly,
    none,
  ];
}

/// Typed helper for the `identity` block of
/// `azurerm_blueprint_assignment` (derived from provider schema).
@immutable
final class BlueprintAssignmentIdentity {
  const BlueprintAssignmentIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_blueprint_assignment`.
final class AzurermBlueprintAssignment extends Resource {
  static const String tfType = 'azurerm_blueprint_assignment';

  AzurermBlueprintAssignment(
    super.localName, {
    required TfArg<String> location,
    TfArg<List<String>>? lockExcludeActions,
    TfArg<List<String>>? lockExcludePrincipals,
    BlueprintAssignmentLockMode? lockMode,
    required TfArg<String> name,
    TfArg<String>? parameterValues,
    TfArg<String>? resourceGroups,
    required TfArg<String> targetSubscriptionId,
    required TfArg<String> versionId,
    required BlueprintAssignmentIdentity identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'lock_exclude_actions': ?lockExcludeActions,
           'lock_exclude_principals': ?lockExcludePrincipals,
           'lock_mode': ?lockMode,
           'name': name,
           'parameter_values': ?parameterValues,
           'resource_groups': ?resourceGroups,
           'target_subscription_id': targetSubscriptionId,
           'version_id': versionId,
           'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermBlueprintAssignmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermBlueprintAssignment>`.
  RefTo<AzurermBlueprintAssignment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `blueprint_name` attribute.
  TfRef<String> get blueprintName =>
      TfRef.attribute<String>(this, 'blueprint_name');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `lock_exclude_actions` attribute.
  TfRef<List<String>> get lockExcludeActions =>
      TfRef.attribute<List<String>>(this, 'lock_exclude_actions');

  /// Reference to `lock_exclude_principals` attribute.
  TfRef<List<String>> get lockExcludePrincipals =>
      TfRef.attribute<List<String>>(this, 'lock_exclude_principals');

  /// Reference to `lock_mode` attribute.
  TfRef<String> get lockMode => TfRef.attribute<String>(this, 'lock_mode');

  /// Reference to `parameter_values` attribute.
  TfRef<String> get parameterValues =>
      TfRef.attribute<String>(this, 'parameter_values');

  /// Reference to `resource_groups` attribute.
  TfRef<String> get resourceGroups =>
      TfRef.attribute<String>(this, 'resource_groups');

  /// Reference to `target_subscription_id` attribute.
  TfRef<String> get targetSubscriptionId =>
      TfRef.attribute<String>(this, 'target_subscription_id');

  /// Reference to `version_id` attribute.
  TfRef<String> get versionId => TfRef.attribute<String>(this, 'version_id');
}
