// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datasync_location_azure_blob`.
const Set<String> _awsDatasyncLocationAzureBlobSensitive = <String>{};

/// Datasync Location Azure Blob Access enum for `access_tier`.
extension type const DatasyncLocationAzureBlobAccessTier._(TfArg<String> _)
    implements TfArg<String> {
  DatasyncLocationAzureBlobAccessTier.variable(String name)
    : this._(TfArg.variable(name));
  DatasyncLocationAzureBlobAccessTier.expression(String template)
    : this._(TfArg.expression(template));
  const DatasyncLocationAzureBlobAccessTier.arg(TfArg<String> arg)
    : this._(arg);

  static const hot = DatasyncLocationAzureBlobAccessTier._(TfArgLiteral('HOT'));
  static const cool = DatasyncLocationAzureBlobAccessTier._(
    TfArgLiteral('COOL'),
  );
  static const archive = DatasyncLocationAzureBlobAccessTier._(
    TfArgLiteral('ARCHIVE'),
  );

  static const List<DatasyncLocationAzureBlobAccessTier> values = [
    hot,
    cool,
    archive,
  ];
}

/// Datasync Location Azure Blob Authentication enum for `authentication_type`.
extension type const DatasyncLocationAzureBlobAuthenticationType._(
  TfArg<String> _
) implements TfArg<String> {
  DatasyncLocationAzureBlobAuthenticationType.variable(String name)
    : this._(TfArg.variable(name));
  DatasyncLocationAzureBlobAuthenticationType.expression(String template)
    : this._(TfArg.expression(template));
  const DatasyncLocationAzureBlobAuthenticationType.arg(TfArg<String> arg)
    : this._(arg);

  static const sas = DatasyncLocationAzureBlobAuthenticationType._(
    TfArgLiteral('SAS'),
  );
  static const none = DatasyncLocationAzureBlobAuthenticationType._(
    TfArgLiteral('NONE'),
  );

  static const List<DatasyncLocationAzureBlobAuthenticationType> values = [
    sas,
    none,
  ];
}

/// Datasync Location Azure Blob enum for `blob_type`.
extension type const DatasyncLocationAzureBlobType._(TfArg<String> _)
    implements TfArg<String> {
  DatasyncLocationAzureBlobType.variable(String name)
    : this._(TfArg.variable(name));
  DatasyncLocationAzureBlobType.expression(String template)
    : this._(TfArg.expression(template));
  const DatasyncLocationAzureBlobType.arg(TfArg<String> arg) : this._(arg);

  static const block = DatasyncLocationAzureBlobType._(TfArgLiteral('BLOCK'));

  static const List<DatasyncLocationAzureBlobType> values = [block];
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

  AwsDatasyncLocationAzureBlob(
    super.localName, {
    DatasyncLocationAzureBlobAccessTier? accessTier,
    required TfArg<List<String>> agentArns,
    required DatasyncLocationAzureBlobAuthenticationType authenticationType,
    DatasyncLocationAzureBlobType? blobType,
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
  TfRef<String> get accessTier => TfRef.attribute<String>(this, 'access_tier');

  /// Reference to `agent_arns` attribute.
  TfRef<List<String>> get agentArns =>
      TfRef.attribute<List<String>>(this, 'agent_arns');

  /// Reference to `authentication_type` attribute.
  TfRef<String> get authenticationType =>
      TfRef.attribute<String>(this, 'authentication_type');

  /// Reference to `blob_type` attribute.
  TfRef<String> get blobType => TfRef.attribute<String>(this, 'blob_type');

  /// Reference to `container_url` attribute.
  TfRef<String> get containerUrl =>
      TfRef.attribute<String>(this, 'container_url');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `subdirectory` attribute.
  TfRef<String> get subdirectory =>
      TfRef.attribute<String>(this, 'subdirectory');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
