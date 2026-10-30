// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_discovery_engine_data_stores`.
const Set<String> _googleDiscoveryEngineDataStoresSensitive = <String>{};

/// Data Discovery Engine Data Stores enum for `location`.
extension type const DataDiscoveryEngineDataStoresLocation._(TfArg<String> _)
    implements TfArg<String> {
  DataDiscoveryEngineDataStoresLocation.variable(String name)
    : this._(TfArg.variable(name));
  DataDiscoveryEngineDataStoresLocation.expression(String template)
    : this._(TfArg.expression(template));
  const DataDiscoveryEngineDataStoresLocation.arg(TfArg<String> arg)
    : this._(arg);

  static const global = DataDiscoveryEngineDataStoresLocation._(
    TfArgLiteral('global'),
  );
  static const us = DataDiscoveryEngineDataStoresLocation._(TfArgLiteral('us'));
  static const eu = DataDiscoveryEngineDataStoresLocation._(TfArgLiteral('eu'));

  static const List<DataDiscoveryEngineDataStoresLocation> values = [
    global,
    us,
    eu,
  ];
}

/// Factory wrapper for `google_discovery_engine_data_stores`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleDiscoveryEngineDataStores extends Data {
  static const String tfType = 'google_discovery_engine_data_stores';

  DataGoogleDiscoveryEngineDataStores(
    super.localName, {
    DataDiscoveryEngineDataStoresLocation? location,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'location': ?location, 'project': ?project},
       );

  @override
  Set<String> get sensitiveFields => _googleDiscoveryEngineDataStoresSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `data_stores` attribute.
  TfRef<List<Map<String, Object?>>> get dataStores =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'data_stores');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
