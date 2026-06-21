// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_app_engine_service_split_traffic`.
const Set<String> _googleAppEngineServiceSplitTrafficSensitive = <String>{};

/// Factory wrapper for `google_app_engine_service_split_traffic`.
///
/// Traffic routing configuration for versions within a single service. Traffic
/// splits define how traffic directed to the service is assigned to versions.
final class GoogleAppEngineServiceSplitTraffic extends Resource {
  static const String tfType = 'google_app_engine_service_split_traffic';

  GoogleAppEngineServiceSplitTraffic({
    required super.localName,
    required TfArg<String> service,
    required TfArg<Map<String, dynamic>> split,
    TfArg<bool>? migrateTraffic,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service': service,
           'split': split,
           if (migrateTraffic != null) 'migrate_traffic': migrateTraffic,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAppEngineServiceSplitTrafficSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
