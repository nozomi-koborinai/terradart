// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datasync_location_object_storage`.
const Set<String> _awsDatasyncLocationObjectStorageSensitive = <String>{
  'secret_key',
};

/// Datasync Location Object Storage Server enum for `server_protocol`.
enum DatasyncLocationObjectStorageServerProtocol implements TerraformEnum {
  https('HTTPS'),
  http('HTTP');

  const DatasyncLocationObjectStorageServerProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_datasync_location_object_storage`.
final class AwsDatasyncLocationObjectStorage extends Resource {
  static const String tfType = 'aws_datasync_location_object_storage';

  AwsDatasyncLocationObjectStorage({
    required super.localName,
    TfArg<String>? accessKey,
    TfArg<List<String>>? agentArns,
    required TfArg<String> bucketName,
    TfArg<String>? region,
    TfArg<String>? secretKey,
    TfArg<String>? serverCertificate,
    required TfArg<String> serverHostname,
    TfArg<num>? serverPort,
    TfArg<DatasyncLocationObjectStorageServerProtocol>? serverProtocol,
    TfArg<String>? subdirectory,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_key': ?accessKey,
           'agent_arns': ?agentArns,
           'bucket_name': bucketName,
           'region': ?region,
           'secret_key': ?secretKey,
           'server_certificate': ?serverCertificate,
           'server_hostname': serverHostname,
           'server_port': ?serverPort,
           'server_protocol': ?serverProtocol,
           'subdirectory': ?subdirectory,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatasyncLocationObjectStorageSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDatasyncLocationObjectStorage>`.
  RefTo<AwsDatasyncLocationObjectStorage> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `uri` attribute.
  TfRef<String> get uri => TfRef.attribute<String>(this, 'uri');
}
