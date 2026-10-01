// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_odb_db_servers`.
const Set<String> _awsOdbDbServersSensitive = <String>{};

/// Factory wrapper for `aws_odb_db_servers`.
final class DataAwsOdbDbServers extends Data {
  static const String tfType = 'aws_odb_db_servers';

  DataAwsOdbDbServers({
    required super.localName,
    required TfArg<String> cloudExadataInfrastructureId,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cloud_exadata_infrastructure_id': cloudExadataInfrastructureId,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOdbDbServersSensitive;

  /// Reference to `db_servers` attribute.
  TfRef<List<Map<String, Object?>>> get dbServers =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'db_servers');

  /// Reference to `cloud_exadata_infrastructure_id` attribute.
  TfRef<String> get cloudExadataInfrastructureId =>
      TfRef.attribute<String>(this, 'cloud_exadata_infrastructure_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
