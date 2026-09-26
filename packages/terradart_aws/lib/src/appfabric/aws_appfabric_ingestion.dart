// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appfabric_ingestion`.
const Set<String> _awsAppfabricIngestionSensitive = <String>{};

/// Factory wrapper for `aws_appfabric_ingestion`.
final class AwsAppfabricIngestion extends Resource {
  static const String tfType = 'aws_appfabric_ingestion';

  AwsAppfabricIngestion({
    required super.localName,
    required TfArg<String> app,
    required TfArg<String> appBundleArn,
    required TfArg<String> ingestionType,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> tenantId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app': app,
           'app_bundle_arn': appBundleArn,
           'ingestion_type': ingestionType,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'tenant_id': tenantId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppfabricIngestionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
