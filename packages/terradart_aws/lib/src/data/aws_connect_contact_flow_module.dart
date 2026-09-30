// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../connect/aws_connect_contact_flow_module.dart';

/// Sensitive field paths for `aws_connect_contact_flow_module`.
const Set<String> _awsConnectContactFlowModuleSensitive = <String>{};

/// Factory wrapper for `aws_connect_contact_flow_module`.
final class DataAwsConnectContactFlowModule extends Data {
  static const String tfType = 'aws_connect_contact_flow_module';

  DataAwsConnectContactFlowModule({
    required super.localName,
    TfArg<String>? contactFlowModuleId,
    required TfArg<String> instanceId,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'contact_flow_module_id': ?contactFlowModuleId,
           'instance_id': instanceId,
           'name': ?name,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectContactFlowModuleSensitive;

  /// A reference to the `aws_connect_contact_flow_module` this data source reads, for
  /// arguments typed `RefTo<AwsConnectContactFlowModule>`.
  RefTo<AwsConnectContactFlowModule> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `content` attribute.
  TfRef<String> get content => TfRef.attribute<String>(this, 'content');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `contact_flow_module_id` attribute.
  TfRef<String> get contactFlowModuleIdRef =>
      TfRef.attribute<String>(this, 'contact_flow_module_id');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceIdRef =>
      TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
