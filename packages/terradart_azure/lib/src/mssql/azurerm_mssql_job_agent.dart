// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_mssql_job_agent`.
const Set<String> _azurermMssqlJobAgentSensitive = <String>{};

/// Typed helper for the `identity` block of
/// `azurerm_mssql_job_agent` (derived from provider schema).
@immutable
final class MssqlJobAgentIdentity {
  const MssqlJobAgentIdentity({required this.identityIds, required this.type});

  final TfArg<List<String>> identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': identityIds.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_mssql_job_agent`.
final class AzurermMssqlJobAgent extends Resource {
  static const String tfType = 'azurerm_mssql_job_agent';

  AzurermMssqlJobAgent(
    super.localName, {
    required TfArg<String> databaseId,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? sku,
    TfArg<Map<String, String>>? tags,
    MssqlJobAgentIdentity? identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database_id': databaseId,
           'location': location,
           'name': name,
           'sku': ?sku,
           'tags': ?tags,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMssqlJobAgentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMssqlJobAgent>`.
  RefTo<AzurermMssqlJobAgent> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `database_id` attribute.
  TfRef<String> get databaseId => TfRef.attribute<String>(this, 'database_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
