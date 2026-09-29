// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_imagebuilder_component`.
const Set<String> _awsImagebuilderComponentSensitive = <String>{};

/// Imagebuilder Component enum for `platform`.
enum ImagebuilderComponentPlatform implements TerraformEnum {
  windows('Windows'),
  linux('Linux'),
  macos('macOS');

  const ImagebuilderComponentPlatform(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `data`, `uri` on `aws_imagebuilder_component`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.data(...)`.
sealed class ImagebuilderComponentDocument {
  const ImagebuilderComponentDocument();

  /// Sets `data`.
  const factory ImagebuilderComponentDocument.data(TfArg<String> data) =
      ImagebuilderComponentDocumentData;

  /// Sets `uri`.
  const factory ImagebuilderComponentDocument.uri(TfArg<String> uri) =
      ImagebuilderComponentDocumentUri;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ImagebuilderComponentDocument.data] choice: sets `data`.
final class ImagebuilderComponentDocumentData
    extends ImagebuilderComponentDocument {
  const ImagebuilderComponentDocumentData(this.data);

  final TfArg<String> data;

  @override
  String get blockKey => 'data';

  @override
  Map<String, Object?> encode() => {'data': data.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'data': data};
}

/// The [ImagebuilderComponentDocument.uri] choice: sets `uri`.
final class ImagebuilderComponentDocumentUri
    extends ImagebuilderComponentDocument {
  const ImagebuilderComponentDocumentUri(this.uri);

  final TfArg<String> uri;

  @override
  String get blockKey => 'uri';

  @override
  Map<String, Object?> encode() => {'uri': uri.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'uri': uri};
}

/// Factory wrapper for `aws_imagebuilder_component`.
final class AwsImagebuilderComponent extends Resource {
  static const String tfType = 'aws_imagebuilder_component';

  AwsImagebuilderComponent({
    required super.localName,
    TfArg<String>? changeDescription,
    required ImagebuilderComponentDocument document,
    TfArg<String>? description,
    TfArg<String>? kmsKeyId,
    required TfArg<String> name,
    required TfArg<ImagebuilderComponentPlatform> platform,
    TfArg<String>? region,
    TfArg<bool>? skipDestroy,
    TfArg<List<String>>? supportedOsVersions,
    TfArg<Map<String, String>>? tags,
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
           ...document.argMap,
           if (description != null) 'description': description,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           'name': name,
           'platform': platform,
           if (region != null) 'region': region,
           if (skipDestroy != null) 'skip_destroy': skipDestroy,
           if (supportedOsVersions != null)
             'supported_os_versions': supportedOsVersions,
           if (tags != null) 'tags': tags,
           'version': version,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsImagebuilderComponentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsImagebuilderComponent>`.
  RefTo<AwsImagebuilderComponent> get ref => RefTo.of(this);

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
