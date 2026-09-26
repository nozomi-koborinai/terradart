// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datasync_location_azure_blob`.
const Set<String> _awsDatasyncLocationAzureBlobSensitive = <String>{};

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
    TfArg<String>? accessTier,
    required TfArg<List<String>> agentArns,
    required TfArg<String> authenticationType,
    TfArg<String>? blobType,
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
           if (accessTier != null) 'access_tier': accessTier,
           'agent_arns': agentArns,
           'authentication_type': authenticationType,
           if (blobType != null) 'blob_type': blobType,
           'container_url': containerUrl,
           if (region != null) 'region': region,
           if (subdirectory != null) 'subdirectory': subdirectory,
           if (tags != null) 'tags': tags,
           if (sasConfiguration != null)
             'sas_configuration': TfArg.literal(sasConfiguration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatasyncLocationAzureBlobSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `uri` attribute.
  TfRef<String> get uri => TfRef.attribute<String>(this, 'uri');
}
