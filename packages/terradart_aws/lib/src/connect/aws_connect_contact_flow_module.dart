// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_connect_contact_flow_module`.
const Set<String> _awsConnectContactFlowModuleSensitive = <String>{};

/// At most one of `content`, `filename` on `aws_connect_contact_flow_module`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.content(...)`.
sealed class ConnectContactFlowModuleContent {
  const ConnectContactFlowModuleContent();

  /// Sets `content`.
  const factory ConnectContactFlowModuleContent.content(TfArg<String> content) =
      ConnectContactFlowModuleContentChoice;

  /// Sets `filename`.
  const factory ConnectContactFlowModuleContent.filename(
    TfArg<String> filename,
  ) = ConnectContactFlowModuleContentFilename;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ConnectContactFlowModuleContent.content] choice: sets `content`.
final class ConnectContactFlowModuleContentChoice
    extends ConnectContactFlowModuleContent {
  const ConnectContactFlowModuleContentChoice(this.content);

  final TfArg<String> content;

  @override
  String get blockKey => 'content';

  @override
  Map<String, Object?> encode() => {'content': content.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'content': content};
}

/// The [ConnectContactFlowModuleContent.filename] choice: sets `filename`.
final class ConnectContactFlowModuleContentFilename
    extends ConnectContactFlowModuleContent {
  const ConnectContactFlowModuleContentFilename(this.filename);

  final TfArg<String> filename;

  @override
  String get blockKey => 'filename';

  @override
  Map<String, Object?> encode() => {'filename': filename.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'filename': filename};
}

/// Factory wrapper for `aws_connect_contact_flow_module`.
final class AwsConnectContactFlowModule extends Resource {
  static const String tfType = 'aws_connect_contact_flow_module';

  AwsConnectContactFlowModule({
    required super.localName,
    ConnectContactFlowModuleContent? content,
    TfArg<String>? contentHash,
    TfArg<String>? description,
    required TfArg<String> instanceId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?content?.argMap,
           'content_hash': ?contentHash,
           'description': ?description,
           'instance_id': instanceId,
           'name': name,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectContactFlowModuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsConnectContactFlowModule>`.
  RefTo<AwsConnectContactFlowModule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `contact_flow_module_id` attribute.
  TfRef<String> get contactFlowModuleId =>
      TfRef.attribute<String>(this, 'contact_flow_module_id');

  /// Reference to `content` attribute.
  TfRef<String> get contentRef => TfRef.attribute<String>(this, 'content');

  /// Reference to `content_hash` attribute.
  TfRef<String> get contentHashRef =>
      TfRef.attribute<String>(this, 'content_hash');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `filename` attribute.
  TfRef<String> get filenameRef => TfRef.attribute<String>(this, 'filename');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceIdRef =>
      TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
