// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../connect/aws_connect_contact_flow.dart';

/// Sensitive field paths for `aws_connect_contact_flow`.
const Set<String> _awsConnectContactFlowSensitive = <String>{};

/// Factory wrapper for `aws_connect_contact_flow`.
final class DataAwsConnectContactFlow extends Data {
  static const String tfType = 'aws_connect_contact_flow';

  DataAwsConnectContactFlow({
    required super.localName,
    TfArg<String>? contactFlowId,
    required TfArg<String> instanceId,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? type,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (contactFlowId != null) 'contact_flow_id': contactFlowId,
           'instance_id': instanceId,
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (type != null) 'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectContactFlowSensitive;

  /// A reference to the `aws_connect_contact_flow` this data source reads, for
  /// arguments typed `RefTo<AwsConnectContactFlow>`.
  RefTo<AwsConnectContactFlow> get ref =>
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
}
