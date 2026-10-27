// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_batch_job`.
const Set<String> _azurermBatchJobSensitive = <String>{};

/// Factory wrapper for `azurerm_batch_job`.
final class AzurermBatchJob extends Resource {
  static const String tfType = 'azurerm_batch_job';

  AzurermBatchJob(
    super.localName, {
    required TfArg<String> batchPoolId,
    TfArg<Map<String, String>>? commonEnvironmentProperties,
    TfArg<String>? displayName,
    required TfArg<String> name,
    TfArg<num>? priority,
    TfArg<num>? taskRetryMaximum,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'batch_pool_id': batchPoolId,
           'common_environment_properties': ?commonEnvironmentProperties,
           'display_name': ?displayName,
           'name': name,
           'priority': ?priority,
           'task_retry_maximum': ?taskRetryMaximum,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermBatchJobSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermBatchJob>`.
  RefTo<AzurermBatchJob> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `batch_pool_id` attribute.
  TfRef<String> get batchPoolId =>
      TfRef.attribute<String>(this, 'batch_pool_id');

  /// Reference to `common_environment_properties` attribute.
  TfRef<Map<String, String>> get commonEnvironmentProperties =>
      TfRef.attribute<Map<String, String>>(
        this,
        'common_environment_properties',
      );

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `task_retry_maximum` attribute.
  TfRef<num> get taskRetryMaximum =>
      TfRef.attribute<num>(this, 'task_retry_maximum');
}
