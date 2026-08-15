// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vpc_access_connector`.
const Set<String> _googleVpcAccessConnectorSensitive = <String>{};

/// Factory wrapper for `google_vpc_access_connector`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleVpcAccessConnector extends Data {
  static const String tfType = 'google_vpc_access_connector';

  DataGoogleVpcAccessConnector({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVpcAccessConnectorSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connected_projects` attribute.
  TfRef<List<String>> get connectedProjects =>
      TfRef.attribute<List<String>>(this, 'connected_projects');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `ip_cidr_range` attribute.
  TfRef<String> get ipCidrRange =>
      TfRef.attribute<String>(this, 'ip_cidr_range');

  /// Reference to `machine_type` attribute.
  TfRef<String> get machineType =>
      TfRef.attribute<String>(this, 'machine_type');

  /// Reference to `max_instances` attribute.
  TfRef<num> get maxInstances => TfRef.attribute<num>(this, 'max_instances');

  /// Reference to `max_throughput` attribute.
  TfRef<num> get maxThroughput => TfRef.attribute<num>(this, 'max_throughput');

  /// Reference to `min_instances` attribute.
  TfRef<num> get minInstances => TfRef.attribute<num>(this, 'min_instances');

  /// Reference to `min_throughput` attribute.
  TfRef<num> get minThroughput => TfRef.attribute<num>(this, 'min_throughput');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `subnet` attribute.
  TfRef<List<Map<String, Object?>>> get subnet =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'subnet');
}
