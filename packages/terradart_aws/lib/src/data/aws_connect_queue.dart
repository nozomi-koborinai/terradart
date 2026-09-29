// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../connect/aws_connect_queue.dart';

/// Sensitive field paths for `aws_connect_queue`.
const Set<String> _awsConnectQueueSensitive = <String>{};

/// Factory wrapper for `aws_connect_queue`.
final class DataAwsConnectQueue extends Data {
  static const String tfType = 'aws_connect_queue';

  DataAwsConnectQueue({
    required super.localName,
    required TfArg<String> instanceId,
    TfArg<String>? name,
    TfArg<String>? queueId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_id': instanceId,
           'name': ?name,
           'queue_id': ?queueId,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectQueueSensitive;

  /// A reference to the `aws_connect_queue` this data source reads, for
  /// arguments typed `RefTo<AwsConnectQueue>`.
  RefTo<AwsConnectQueue> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `hours_of_operation_id` attribute.
  TfRef<String> get hoursOfOperationId =>
      TfRef.attribute<String>(this, 'hours_of_operation_id');

  /// Reference to `max_contacts` attribute.
  TfRef<num> get maxContacts => TfRef.attribute<num>(this, 'max_contacts');

  /// Reference to `outbound_caller_config` attribute.
  TfRef<List<Map<String, Object?>>> get outboundCallerConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'outbound_caller_config',
      );

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
