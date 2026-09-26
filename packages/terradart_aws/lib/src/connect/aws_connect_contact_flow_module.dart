// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_connect_contact_flow_module`.
const Set<String> _awsConnectContactFlowModuleSensitive = <String>{};

/// Factory wrapper for `aws_connect_contact_flow_module`.
final class AwsConnectContactFlowModule extends Resource {
  static const String tfType = 'aws_connect_contact_flow_module';

  AwsConnectContactFlowModule({
    required super.localName,
    TfArg<String>? content,
    TfArg<String>? contentHash,
    TfArg<String>? description,
    TfArg<String>? filename,
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
           if (content != null) 'content': content,
           if (contentHash != null) 'content_hash': contentHash,
           if (description != null) 'description': description,
           if (filename != null) 'filename': filename,
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
