// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sqs_queues`.
const Set<String> _awsSqsQueuesSensitive = <String>{};

/// Factory wrapper for `aws_sqs_queues`.
final class DataAwsSqsQueues extends Data {
  static const String tfType = 'aws_sqs_queues';

  DataAwsSqsQueues({
    required super.localName,
    TfArg<String>? queueNamePrefix,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (queueNamePrefix != null) 'queue_name_prefix': queueNamePrefix,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSqsQueuesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `queue_urls` attribute.
  TfRef<List<String>> get queueUrls =>
      TfRef.attribute<List<String>>(this, 'queue_urls');
}
