// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_imagebuilder_component`.
const Set<String> _awsImagebuilderComponentSensitive = <String>{};

/// Factory wrapper for `aws_imagebuilder_component`.
final class DataAwsImagebuilderComponent extends Data {
  static const String tfType = 'aws_imagebuilder_component';

  DataAwsImagebuilderComponent({
    required super.localName,
    required TfArg<String> arn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'arn': arn,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsImagebuilderComponentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `change_description` attribute.
  TfRef<String> get changeDescription =>
      TfRef.attribute<String>(this, 'change_description');

  /// Reference to `data` attribute.
  TfRef<String> get data => TfRef.attribute<String>(this, 'data');

  /// Reference to `date_created` attribute.
  TfRef<String> get dateCreated =>
      TfRef.attribute<String>(this, 'date_created');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `encrypted` attribute.
  TfRef<bool> get encrypted => TfRef.attribute<bool>(this, 'encrypted');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `owner` attribute.
  TfRef<String> get owner => TfRef.attribute<String>(this, 'owner');

  /// Reference to `platform` attribute.
  TfRef<String> get platform => TfRef.attribute<String>(this, 'platform');

  /// Reference to `supported_os_versions` attribute.
  TfRef<List<String>> get supportedOsVersions =>
      TfRef.attribute<List<String>>(this, 'supported_os_versions');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
