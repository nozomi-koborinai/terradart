// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_connect_contact_flow_module`.
const Set<String> _awsConnectContactFlowModuleSensitive = <String>{};

/// At most one of `content`, `filename` on `aws_connect_contact_flow_module`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
sealed class ConnectContactFlowModuleContentOrFilename {
  const ConnectContactFlowModuleContentOrFilename();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `content` (one of the [ConnectContactFlowModuleContentOrFilename] choices).
final class ConnectContactFlowModuleContentOption
    extends ConnectContactFlowModuleContentOrFilename {
  const ConnectContactFlowModuleContentOption({required this.content});

  final TfArg<String> content;

  @override
  String get blockKey => 'content';

  @override
  Map<String, Object?> encode() => {'content': content.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'content': content};
}

/// Sets `filename` (one of the [ConnectContactFlowModuleContentOrFilename] choices).
final class ConnectContactFlowModuleFilenameOption
    extends ConnectContactFlowModuleContentOrFilename {
  const ConnectContactFlowModuleFilenameOption({required this.filename});

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
    ConnectContactFlowModuleContentOrFilename? contentOrFilename,
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
           ...?contentOrFilename?.argMap,
           if (contentHash != null) 'content_hash': contentHash,
           if (description != null) 'description': description,
           'instance_id': instanceId,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectContactFlowModuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `contact_flow_module_id` attribute.
  TfRef<String> get contactFlowModuleId =>
      TfRef.attribute<String>(this, 'contact_flow_module_id');
}
