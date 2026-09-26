// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_connect_queue`.
const Set<String> _awsConnectQueueSensitive = <String>{};

/// Typed helper for the `outbound_caller_config` block of
/// `aws_connect_queue` (derived from provider schema).
@immutable
final class ConnectQueueOutboundCallerConfig {
  const ConnectQueueOutboundCallerConfig({
    this.outboundCallerIdName,
    this.outboundCallerIdNumberId,
    this.outboundFlowId,
  });

  final TfArg<String>? outboundCallerIdName;

  final TfArg<String>? outboundCallerIdNumberId;

  final TfArg<String>? outboundFlowId;

  Map<String, Object?> encode() => {
    if (outboundCallerIdName != null)
      'outbound_caller_id_name': outboundCallerIdName!.toTfJson(),
    if (outboundCallerIdNumberId != null)
      'outbound_caller_id_number_id': outboundCallerIdNumberId!.toTfJson(),
    if (outboundFlowId != null) 'outbound_flow_id': outboundFlowId!.toTfJson(),
  };
}

/// Factory wrapper for `aws_connect_queue`.
final class AwsConnectQueue extends Resource {
  static const String tfType = 'aws_connect_queue';

  AwsConnectQueue({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> hoursOfOperationId,
    required TfArg<String> instanceId,
    TfArg<num>? maxContacts,
    required TfArg<String> name,
    TfArg<List<String>>? quickConnectIds,
    TfArg<String>? region,
    TfArg<String>? status,
    TfArg<Map<String, String>>? tags,
    ConnectQueueOutboundCallerConfig? outboundCallerConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'hours_of_operation_id': hoursOfOperationId,
           'instance_id': instanceId,
           if (maxContacts != null) 'max_contacts': maxContacts,
           'name': name,
           if (quickConnectIds != null) 'quick_connect_ids': quickConnectIds,
           if (region != null) 'region': region,
           if (status != null) 'status': status,
           if (tags != null) 'tags': tags,
           if (outboundCallerConfig != null)
             'outbound_caller_config': TfArg.literal(
               outboundCallerConfig.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectQueueSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `queue_id` attribute.
  TfRef<String> get queueId => TfRef.attribute<String>(this, 'queue_id');
}
