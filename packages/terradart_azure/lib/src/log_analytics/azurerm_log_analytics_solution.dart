// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_log_analytics_solution`.
const Set<String> _azurermLogAnalyticsSolutionSensitive = <String>{};

/// Typed helper for the `plan` block of
/// `azurerm_log_analytics_solution` (derived from provider schema).
@immutable
final class LogAnalyticsSolutionPlan {
  const LogAnalyticsSolutionPlan({
    required this.product,
    this.promotionCode,
    required this.publisher,
  });

  final TfArg<String> product;

  final TfArg<String>? promotionCode;

  final TfArg<String> publisher;

  @internal
  Map<String, Object?> encode() => {
    'product': product.toTfJson(),
    'promotion_code': ?promotionCode?.toTfJson(),
    'publisher': publisher.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_log_analytics_solution`.
final class AzurermLogAnalyticsSolution extends Resource {
  static const String tfType = 'azurerm_log_analytics_solution';

  AzurermLogAnalyticsSolution(
    super.localName, {
    required TfArg<String> location,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> solutionName,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> workspaceName,
    required TfArg<String> workspaceResourceId,
    required LogAnalyticsSolutionPlan plan,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'solution_name': solutionName,
           'tags': ?tags,
           'workspace_name': workspaceName,
           'workspace_resource_id': workspaceResourceId,
           'plan': TfArg.literal(plan.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermLogAnalyticsSolutionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLogAnalyticsSolution>`.
  RefTo<AzurermLogAnalyticsSolution> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `solution_name` attribute.
  TfRef<String> get solutionName =>
      TfRef.attribute<String>(this, 'solution_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `workspace_name` attribute.
  TfRef<String> get workspaceName =>
      TfRef.attribute<String>(this, 'workspace_name');

  /// Reference to `workspace_resource_id` attribute.
  TfRef<String> get workspaceResourceId =>
      TfRef.attribute<String>(this, 'workspace_resource_id');
}
