// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_connect_contact_flow`.
const Set<String> _awsConnectContactFlowSensitive = <String>{};

/// Connect Contact Flow enum for `type`.
enum ConnectContactFlowType implements TerraformEnum {
  contactFlow('CONTACT_FLOW'),
  customerQueue('CUSTOMER_QUEUE'),
  customerHold('CUSTOMER_HOLD'),
  customerWhisper('CUSTOMER_WHISPER'),
  agentHold('AGENT_HOLD'),
  agentWhisper('AGENT_WHISPER'),
  outboundWhisper('OUTBOUND_WHISPER'),
  agentTransfer('AGENT_TRANSFER'),
  queueTransfer('QUEUE_TRANSFER'),
  campaign('CAMPAIGN');

  const ConnectContactFlowType(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `content`, `filename` on `aws_connect_contact_flow`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.content(...)`.
sealed class ConnectContactFlowContentOrFilename {
  const ConnectContactFlowContentOrFilename();

  /// Sets `content`.
  const factory ConnectContactFlowContentOrFilename.content(
    TfArg<String> content,
  ) = ConnectContactFlowContentOrFilenameContent;

  /// Sets `filename`.
  const factory ConnectContactFlowContentOrFilename.filename(
    TfArg<String> filename,
  ) = ConnectContactFlowContentOrFilenameFilename;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ConnectContactFlowContentOrFilename.content] choice: sets `content`.
final class ConnectContactFlowContentOrFilenameContent
    extends ConnectContactFlowContentOrFilename {
  const ConnectContactFlowContentOrFilenameContent(this.content);

  final TfArg<String> content;

  @override
  String get blockKey => 'content';

  @override
  Map<String, Object?> encode() => {'content': content.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'content': content};
}

/// The [ConnectContactFlowContentOrFilename.filename] choice: sets `filename`.
final class ConnectContactFlowContentOrFilenameFilename
    extends ConnectContactFlowContentOrFilename {
  const ConnectContactFlowContentOrFilenameFilename(this.filename);

  final TfArg<String> filename;

  @override
  String get blockKey => 'filename';

  @override
  Map<String, Object?> encode() => {'filename': filename.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'filename': filename};
}

/// Factory wrapper for `aws_connect_contact_flow`.
final class AwsConnectContactFlow extends Resource {
  static const String tfType = 'aws_connect_contact_flow';

  AwsConnectContactFlow({
    required super.localName,
    ConnectContactFlowContentOrFilename? contentOrFilename,
    TfArg<String>? contentHash,
    TfArg<String>? description,
    required TfArg<String> instanceId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<ConnectContactFlowType>? type,
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
           if (type != null) 'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectContactFlowSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsConnectContactFlow>`.
  RefTo<AwsConnectContactFlow> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `contact_flow_id` attribute.
  TfRef<String> get contactFlowId =>
      TfRef.attribute<String>(this, 'contact_flow_id');
}
