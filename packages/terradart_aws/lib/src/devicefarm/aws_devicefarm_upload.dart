// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_devicefarm_upload`.
const Set<String> _awsDevicefarmUploadSensitive = <String>{};

/// Factory wrapper for `aws_devicefarm_upload`.
final class AwsDevicefarmUpload extends Resource {
  static const String tfType = 'aws_devicefarm_upload';

  AwsDevicefarmUpload({
    required super.localName,
    TfArg<String>? contentType,
    required TfArg<String> name,
    required TfArg<String> projectArn,
    TfArg<String>? region,
    required TfArg<String> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (contentType != null) 'content_type': contentType,
           'name': name,
           'project_arn': projectArn,
           if (region != null) 'region': region,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDevicefarmUploadSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `category` attribute.
  TfRef<String> get category => TfRef.attribute<String>(this, 'category');

  /// Reference to `metadata` attribute.
  TfRef<String> get metadata => TfRef.attribute<String>(this, 'metadata');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');
}
