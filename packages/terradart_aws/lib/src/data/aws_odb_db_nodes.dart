// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_odb_db_nodes`.
const Set<String> _awsOdbDbNodesSensitive = <String>{};

/// Factory wrapper for `aws_odb_db_nodes`.
final class DataAwsOdbDbNodes extends Data {
  static const String tfType = 'aws_odb_db_nodes';

  DataAwsOdbDbNodes({
    required super.localName,
    required TfArg<String> cloudVmClusterId,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cloud_vm_cluster_id': cloudVmClusterId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOdbDbNodesSensitive;

  /// Reference to `db_nodes` attribute.
  TfRef<List<Map<String, Object?>>> get dbNodes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'db_nodes');
}
