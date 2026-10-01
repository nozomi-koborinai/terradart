// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datasync_location_azure_blob`.
const Set<String> _awsDatasyncLocationAzureBlobSensitive = <String>{};

/// Datasync Location Azure Blob Access enum for `access_tier`.
enum DatasyncLocationAzureBlobAccessTier implements TerraformEnum {
  hot('HOT'),
  cool('COOL'),
  archive('ARCHIVE');

  const DatasyncLocationAzureBlobAccessTier(this.terraformValue);
  @override
  final String terraformValue;
}

/// Datasync Location Azure Blob Authentication enum for `authentication_type`.
enum DatasyncLocationAzureBlobAuthenticationType implements TerraformEnum {
  sas('SAS'),
  none('NONE');

  const DatasyncLocationAzureBlobAuthenticationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Datasync Location Azure Blob enum for `blob_type`.
enum DatasyncLocationAzureBlobType implements TerraformEnum {
  block('BLOCK');

  const DatasyncLocationAzureBlobType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `sas_configuration` block of
/// `aws_datasync_location_azure_blob` (derived from provider schema).
@immutable
final class DatasyncLocationAzureBlobSasConfiguration {
  const DatasyncLocationAzureBlobSasConfiguration({required this.token});

  final TfArg<String> token;

  Map<String, Object?> encode() => {'token': token.toTfJson()};
}

/// Factory wrapper for `aws_datasync_location_azure_blob`.
final class AwsDatasyncLocationAzureBlob extends Resource {
  static const String tfType = 'aws_datasync_location_azure_blob';

  AwsDatasyncLocationAzureBlob({
    required super.localName,
    TfArg<DatasyncLocationAzureBlobAccessTier>? accessTier,
    required TfArg<List<String>> agentArns,
    required TfArg<DatasyncLocationAzureBlobAuthenticationType>
    authenticationType,
    TfArg<DatasyncLocationAzureBlobType>? blobType,
    required TfArg<String> containerUrl,
    TfArg<String>? region,
    TfArg<String>? subdirectory,
    TfArg<Map<String, String>>? tags,
    DatasyncLocationAzureBlobSasConfiguration? sasConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_tier': ?accessTier,
           'agent_arns': agentArns,
           'authentication_type': authenticationType,
           'blob_type': ?blobType,
           'container_url': containerUrl,
           'region': ?region,
           'subdirectory': ?subdirectory,
           'tags': ?tags,
           if (sasConfiguration != null)
             'sas_configuration': TfArg.literal(sasConfiguration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatasyncLocationAzureBlobSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDatasyncLocationAzureBlob>`.
  RefTo<AwsDatasyncLocationAzureBlob> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `uri` attribute.
  TfRef<String> get uri => TfRef.attribute<String>(this, 'uri');

  /// Reference to `access_tier` attribute.
  TfRef<String> get accessTierRef =>
      TfRef.attribute<String>(this, 'access_tier');

  /// Reference to `agent_arns` attribute.
  TfRef<List<String>> get agentArnsRef =>
      TfRef.attribute<List<String>>(this, 'agent_arns');

  /// Reference to `authentication_type` attribute.
  TfRef<String> get authenticationTypeRef =>
      TfRef.attribute<String>(this, 'authentication_type');

  /// Reference to `blob_type` attribute.
  TfRef<String> get blobTypeRef => TfRef.attribute<String>(this, 'blob_type');

  /// Reference to `container_url` attribute.
  TfRef<String> get containerUrlRef =>
      TfRef.attribute<String>(this, 'container_url');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `subdirectory` attribute.
  TfRef<String> get subdirectoryRef =>
      TfRef.attribute<String>(this, 'subdirectory');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
