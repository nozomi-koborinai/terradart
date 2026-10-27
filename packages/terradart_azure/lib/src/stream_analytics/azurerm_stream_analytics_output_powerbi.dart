// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_stream_analytics_output_powerbi`.
const Set<String> _azurermStreamAnalyticsOutputPowerbiSensitive = <String>{};

/// Factory wrapper for `azurerm_stream_analytics_output_powerbi`.
final class AzurermStreamAnalyticsOutputPowerbi extends Resource {
  static const String tfType = 'azurerm_stream_analytics_output_powerbi';

  AzurermStreamAnalyticsOutputPowerbi(
    super.localName, {
    required TfArg<String> dataset,
    required TfArg<String> groupId,
    required TfArg<String> groupName,
    required TfArg<String> name,
    required TfArg<String> streamAnalyticsJobId,
    required TfArg<String> table,
    TfArg<String>? tokenUserDisplayName,
    TfArg<String>? tokenUserPrincipalName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataset': dataset,
           'group_id': groupId,
           'group_name': groupName,
           'name': name,
           'stream_analytics_job_id': streamAnalyticsJobId,
           'table': table,
           'token_user_display_name': ?tokenUserDisplayName,
           'token_user_principal_name': ?tokenUserPrincipalName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermStreamAnalyticsOutputPowerbiSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStreamAnalyticsOutputPowerbi>`.
  RefTo<AzurermStreamAnalyticsOutputPowerbi> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dataset` attribute.
  TfRef<String> get dataset => TfRef.attribute<String>(this, 'dataset');

  /// Reference to `group_id` attribute.
  TfRef<String> get groupId => TfRef.attribute<String>(this, 'group_id');

  /// Reference to `group_name` attribute.
  TfRef<String> get groupName => TfRef.attribute<String>(this, 'group_name');

  /// Reference to `stream_analytics_job_id` attribute.
  TfRef<String> get streamAnalyticsJobId =>
      TfRef.attribute<String>(this, 'stream_analytics_job_id');

  /// Reference to `table` attribute.
  TfRef<String> get table => TfRef.attribute<String>(this, 'table');

  /// Reference to `token_user_display_name` attribute.
  TfRef<String> get tokenUserDisplayName =>
      TfRef.attribute<String>(this, 'token_user_display_name');

  /// Reference to `token_user_principal_name` attribute.
  TfRef<String> get tokenUserPrincipalName =>
      TfRef.attribute<String>(this, 'token_user_principal_name');
}
