// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_mssql_job`.
const Set<String> _azurermMssqlJobSensitive = <String>{};

/// Factory wrapper for `azurerm_mssql_job`.
final class AzurermMssqlJob extends Resource {
  static const String tfType = 'azurerm_mssql_job';

  AzurermMssqlJob(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> jobAgentId,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'job_agent_id': jobAgentId,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMssqlJobSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMssqlJob>`.
  RefTo<AzurermMssqlJob> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `job_agent_id` attribute.
  TfRef<String> get jobAgentId => TfRef.attribute<String>(this, 'job_agent_id');
}
