// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appfabric_ingestion`.
const Set<String> _awsAppfabricIngestionSensitive = <String>{};

/// Appfabric Ingestion Ingestion enum for `ingestion_type`.
enum AppfabricIngestionIngestionType implements TerraformEnum {
  auditlog('auditLog');

  const AppfabricIngestionIngestionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_appfabric_ingestion`.
final class AwsAppfabricIngestion extends Resource {
  static const String tfType = 'aws_appfabric_ingestion';

  AwsAppfabricIngestion({
    required super.localName,
    required TfArg<String> app,
    required TfArg<String> appBundleArn,
    required TfArg<AppfabricIngestionIngestionType> ingestionType,
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
           'region': ?region,
           'tags': ?tags,
           'tenant_id': tenantId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppfabricIngestionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppfabricIngestion>`.
  RefTo<AwsAppfabricIngestion> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `app` attribute.
  TfRef<String> get appRef => TfRef.attribute<String>(this, 'app');

  /// Reference to `app_bundle_arn` attribute.
  TfRef<String> get appBundleArnRef =>
      TfRef.attribute<String>(this, 'app_bundle_arn');

  /// Reference to `ingestion_type` attribute.
  TfRef<String> get ingestionTypeRef =>
      TfRef.attribute<String>(this, 'ingestion_type');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantIdRef => TfRef.attribute<String>(this, 'tenant_id');
}
