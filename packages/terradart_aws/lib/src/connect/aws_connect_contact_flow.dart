// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_connect_contact_flow`.
const Set<String> _awsConnectContactFlowSensitive = <String>{};

/// Connect Contact Flow enum for `type`.
extension type const ConnectContactFlowType._(TfArg<String> _)
    implements TfArg<String> {
  ConnectContactFlowType.variable(String name) : this._(TfArg.variable(name));
  ConnectContactFlowType.expression(String template)
    : this._(TfArg.expression(template));
  const ConnectContactFlowType.arg(TfArg<String> arg) : this._(arg);

  static const contactFlow = ConnectContactFlowType._(
    TfArgLiteral('CONTACT_FLOW'),
  );
  static const customerQueue = ConnectContactFlowType._(
    TfArgLiteral('CUSTOMER_QUEUE'),
  );
  static const customerHold = ConnectContactFlowType._(
    TfArgLiteral('CUSTOMER_HOLD'),
  );
  static const customerWhisper = ConnectContactFlowType._(
    TfArgLiteral('CUSTOMER_WHISPER'),
  );
  static const agentHold = ConnectContactFlowType._(TfArgLiteral('AGENT_HOLD'));
  static const agentWhisper = ConnectContactFlowType._(
    TfArgLiteral('AGENT_WHISPER'),
  );
  static const outboundWhisper = ConnectContactFlowType._(
    TfArgLiteral('OUTBOUND_WHISPER'),
  );
  static const agentTransfer = ConnectContactFlowType._(
    TfArgLiteral('AGENT_TRANSFER'),
  );
  static const queueTransfer = ConnectContactFlowType._(
    TfArgLiteral('QUEUE_TRANSFER'),
  );
  static const campaign = ConnectContactFlowType._(TfArgLiteral('CAMPAIGN'));

  static const List<ConnectContactFlowType> values = [
    contactFlow,
    customerQueue,
    customerHold,
    customerWhisper,
    agentHold,
    agentWhisper,
    outboundWhisper,
    agentTransfer,
    queueTransfer,
    campaign,
  ];
}

/// At most one of `content`, `filename` on `aws_connect_contact_flow`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.content(...)`.
sealed class ConnectContactFlowContent {
  const ConnectContactFlowContent();

  /// Sets `content`.
  const factory ConnectContactFlowContent.content(TfArg<String> content) =
      ConnectContactFlowContentChoice;

  /// Sets `filename`.
  const factory ConnectContactFlowContent.filename(TfArg<String> filename) =
      ConnectContactFlowContentFilename;

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

/// The [ConnectContactFlowContent.content] choice: sets `content`.
final class ConnectContactFlowContentChoice extends ConnectContactFlowContent {
  const ConnectContactFlowContentChoice(this.content);

  final TfArg<String> content;

  @internal
  @override
  String get blockKey => 'content';

  @internal
  @override
  Map<String, Object?> encode() => {'content': content.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'content': content};
}

/// The [ConnectContactFlowContent.filename] choice: sets `filename`.
final class ConnectContactFlowContentFilename
    extends ConnectContactFlowContent {
  const ConnectContactFlowContentFilename(this.filename);

  final TfArg<String> filename;

  @internal
  @override
  String get blockKey => 'filename';

  @internal
  @override
  Map<String, Object?> encode() => {'filename': filename.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'filename': filename};
}

/// Factory wrapper for `aws_connect_contact_flow`.
final class AwsConnectContactFlow extends Resource {
  static const String tfType = 'aws_connect_contact_flow';

  AwsConnectContactFlow(
    super.localName, {
    ConnectContactFlowContent? content,
    TfArg<String>? contentHash,
    TfArg<String>? description,
    required TfArg<String> instanceId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    ConnectContactFlowType? type,
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
           'type': ?type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectContactFlowSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsConnectContactFlow>`.
  RefTo<AwsConnectContactFlow> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `contact_flow_id` attribute.
  TfRef<String> get contactFlowId =>
      TfRef.attribute<String>(this, 'contact_flow_id');

  /// Reference to `content` attribute.
  TfRef<String> get content => TfRef.attribute<String>(this, 'content');

  /// Reference to `content_hash` attribute.
  TfRef<String> get contentHash =>
      TfRef.attribute<String>(this, 'content_hash');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `filename` attribute.
  TfRef<String> get filename => TfRef.attribute<String>(this, 'filename');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceId => TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
