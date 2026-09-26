// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datasync_location_object_storage`.
const Set<String> _awsDatasyncLocationObjectStorageSensitive = <String>{
  'secret_key',
};

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
    TfArg<String>? serverProtocol,
    TfArg<String>? subdirectory,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accessKey != null) 'access_key': accessKey,
           if (agentArns != null) 'agent_arns': agentArns,
           'bucket_name': bucketName,
           if (region != null) 'region': region,
           if (secretKey != null) 'secret_key': secretKey,
           if (serverCertificate != null)
             'server_certificate': serverCertificate,
           'server_hostname': serverHostname,
           if (serverPort != null) 'server_port': serverPort,
           if (serverProtocol != null) 'server_protocol': serverProtocol,
           if (subdirectory != null) 'subdirectory': subdirectory,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatasyncLocationObjectStorageSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `uri` attribute.
  TfRef<String> get uri => TfRef.attribute<String>(this, 'uri');
}
