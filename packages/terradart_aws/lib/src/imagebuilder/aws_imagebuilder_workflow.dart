// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_imagebuilder_workflow`.
const Set<String> _awsImagebuilderWorkflowSensitive = <String>{};

/// Imagebuilder Workflow enum for `type`.
enum ImagebuilderWorkflowType implements TerraformEnum {
  build('BUILD'),
  test('TEST'),
  distribution('DISTRIBUTION');

  const ImagebuilderWorkflowType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `data`, `uri` on `aws_imagebuilder_workflow`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.data(...)`.
sealed class ImagebuilderWorkflowDataOrUri {
  const ImagebuilderWorkflowDataOrUri();

  /// Sets `data`.
  const factory ImagebuilderWorkflowDataOrUri.data(TfArg<String> data) =
      ImagebuilderWorkflowDataOrUriData;

  /// Sets `uri`.
  const factory ImagebuilderWorkflowDataOrUri.uri(TfArg<String> uri) =
      ImagebuilderWorkflowDataOrUriUri;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ImagebuilderWorkflowDataOrUri.data] choice: sets `data`.
final class ImagebuilderWorkflowDataOrUriData
    extends ImagebuilderWorkflowDataOrUri {
  const ImagebuilderWorkflowDataOrUriData(this.data);

  final TfArg<String> data;

  @override
  String get blockKey => 'data';

  @override
  Map<String, Object?> encode() => {'data': data.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'data': data};
}

/// The [ImagebuilderWorkflowDataOrUri.uri] choice: sets `uri`.
final class ImagebuilderWorkflowDataOrUriUri
    extends ImagebuilderWorkflowDataOrUri {
  const ImagebuilderWorkflowDataOrUriUri(this.uri);

  final TfArg<String> uri;

  @override
  String get blockKey => 'uri';

  @override
  Map<String, Object?> encode() => {'uri': uri.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'uri': uri};
}

/// Factory wrapper for `aws_imagebuilder_workflow`.
final class AwsImagebuilderWorkflow extends Resource {
  static const String tfType = 'aws_imagebuilder_workflow';

  AwsImagebuilderWorkflow({
    required super.localName,
    TfArg<String>? changeDescription,
    required ImagebuilderWorkflowDataOrUri dataOrUri,
    TfArg<String>? description,
    TfArg<String>? kmsKeyId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<ImagebuilderWorkflowType> type,
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
           ...dataOrUri.argMap,
           if (description != null) 'description': description,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'type': type,
           'version': version,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsImagebuilderWorkflowSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsImagebuilderWorkflow>`.
  RefTo<AwsImagebuilderWorkflow> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `date_created` attribute.
  TfRef<String> get dateCreated =>
      TfRef.attribute<String>(this, 'date_created');

  /// Reference to `owner` attribute.
  TfRef<String> get owner => TfRef.attribute<String>(this, 'owner');
}
