// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_imagebuilder_workflow`.
const Set<String> _awsImagebuilderWorkflowSensitive = <String>{};

/// Imagebuilder Workflow enum for `type`.
extension type const ImagebuilderWorkflowType._(TfArg<String> _)
    implements TfArg<String> {
  ImagebuilderWorkflowType.variable(String name) : this._(TfArg.variable(name));
  ImagebuilderWorkflowType.expression(String template)
    : this._(TfArg.expression(template));
  const ImagebuilderWorkflowType.arg(TfArg<String> arg) : this._(arg);

  static const build = ImagebuilderWorkflowType._(TfArgLiteral('BUILD'));
  static const test = ImagebuilderWorkflowType._(TfArgLiteral('TEST'));
  static const distribution = ImagebuilderWorkflowType._(
    TfArgLiteral('DISTRIBUTION'),
  );

  static const List<ImagebuilderWorkflowType> values = [
    build,
    test,
    distribution,
  ];
}

/// Exactly one of `data`, `uri` on `aws_imagebuilder_workflow`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.data(...)`.
sealed class ImagebuilderWorkflowDocument {
  const ImagebuilderWorkflowDocument();

  /// Sets `data`.
  const factory ImagebuilderWorkflowDocument.data(TfArg<String> data) =
      ImagebuilderWorkflowDocumentData;

  /// Sets `uri`.
  const factory ImagebuilderWorkflowDocument.uri(TfArg<String> uri) =
      ImagebuilderWorkflowDocumentUri;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ImagebuilderWorkflowDocument.data] choice: sets `data`.
final class ImagebuilderWorkflowDocumentData
    extends ImagebuilderWorkflowDocument {
  const ImagebuilderWorkflowDocumentData(this.data);

  final TfArg<String> data;

  @internal
  @override
  String get blockKey => 'data';

  @internal
  @override
  Map<String, Object?> encode() => {'data': data.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'data': data};
}

/// The [ImagebuilderWorkflowDocument.uri] choice: sets `uri`.
final class ImagebuilderWorkflowDocumentUri
    extends ImagebuilderWorkflowDocument {
  const ImagebuilderWorkflowDocumentUri(this.uri);

  final TfArg<String> uri;

  @internal
  @override
  String get blockKey => 'uri';

  @internal
  @override
  Map<String, Object?> encode() => {'uri': uri.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'uri': uri};
}

/// Factory wrapper for `aws_imagebuilder_workflow`.
final class AwsImagebuilderWorkflow extends Resource {
  static const String tfType = 'aws_imagebuilder_workflow';

  AwsImagebuilderWorkflow(
    super.localName, {
    TfArg<String>? changeDescription,
    required ImagebuilderWorkflowDocument document,
    TfArg<String>? description,
    RefTo<AwsKmsKey>? kmsKeyId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required ImagebuilderWorkflowType type,
    required TfArg<String> version,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'change_description': ?changeDescription,
           ...document.argMap,
           'description': ?description,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'name': name,
           'region': ?region,
           'tags': ?tags,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `date_created` attribute.
  TfRef<String> get dateCreated =>
      TfRef.attribute<String>(this, 'date_created');

  /// Reference to `owner` attribute.
  TfRef<String> get owner => TfRef.attribute<String>(this, 'owner');

  /// Reference to `change_description` attribute.
  TfRef<String> get changeDescription =>
      TfRef.attribute<String>(this, 'change_description');

  /// Reference to `data` attribute.
  TfRef<String> get data => TfRef.attribute<String>(this, 'data');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `uri` attribute.
  TfRef<String> get uri => TfRef.attribute<String>(this, 'uri');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
