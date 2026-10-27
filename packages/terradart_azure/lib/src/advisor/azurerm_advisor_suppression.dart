// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_advisor_suppression`.
const Set<String> _azurermAdvisorSuppressionSensitive = <String>{};

/// Factory wrapper for `azurerm_advisor_suppression`.
final class AzurermAdvisorSuppression extends Resource {
  static const String tfType = 'azurerm_advisor_suppression';

  AzurermAdvisorSuppression(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> recommendationId,
    required TfArg<String> resourceId,
    TfArg<String>? ttl,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'recommendation_id': recommendationId,
           'resource_id': resourceId,
           'ttl': ?ttl,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAdvisorSuppressionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAdvisorSuppression>`.
  RefTo<AzurermAdvisorSuppression> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `suppression_id` attribute.
  TfRef<String> get suppressionId =>
      TfRef.attribute<String>(this, 'suppression_id');

  /// Reference to `recommendation_id` attribute.
  TfRef<String> get recommendationId =>
      TfRef.attribute<String>(this, 'recommendation_id');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `ttl` attribute.
  TfRef<String> get ttl => TfRef.attribute<String>(this, 'ttl');
}
