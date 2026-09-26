// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_imagebuilder_component`.
const Set<String> _awsImagebuilderComponentSensitive = <String>{};

/// Factory wrapper for `aws_imagebuilder_component`.
final class AwsImagebuilderComponent extends Resource {
  static const String tfType = 'aws_imagebuilder_component';

  AwsImagebuilderComponent({
    required super.localName,
    TfArg<String>? changeDescription,
    TfArg<String>? data,
    TfArg<String>? description,
    TfArg<String>? kmsKeyId,
    required TfArg<String> name,
    required TfArg<String> platform,
    TfArg<String>? region,
    TfArg<bool>? skipDestroy,
    TfArg<List<String>>? supportedOsVersions,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? uri,
    required TfArg<String> version,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (changeDescription != null)
             'change_description': changeDescription,
           if (data != null) 'data': data,
           if (description != null) 'description': description,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           'name': name,
           'platform': platform,
           if (region != null) 'region': region,
           if (skipDestroy != null) 'skip_destroy': skipDestroy,
           if (supportedOsVersions != null)
             'supported_os_versions': supportedOsVersions,
           if (tags != null) 'tags': tags,
           if (uri != null) 'uri': uri,
           'version': version,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsImagebuilderComponentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `date_created` attribute.
  TfRef<String> get dateCreated =>
      TfRef.attribute<String>(this, 'date_created');

  /// Reference to `encrypted` attribute.
  TfRef<bool> get encrypted => TfRef.attribute<bool>(this, 'encrypted');

  /// Reference to `owner` attribute.
  TfRef<String> get owner => TfRef.attribute<String>(this, 'owner');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
