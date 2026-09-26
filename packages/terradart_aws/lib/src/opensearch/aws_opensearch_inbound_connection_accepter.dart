// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_opensearch_inbound_connection_accepter`.
const Set<String> _awsOpensearchInboundConnectionAccepterSensitive = <String>{};

/// Factory wrapper for `aws_opensearch_inbound_connection_accepter`.
final class AwsOpensearchInboundConnectionAccepter extends Resource {
  static const String tfType = 'aws_opensearch_inbound_connection_accepter';

  AwsOpensearchInboundConnectionAccepter({
    required super.localName,
    required TfArg<String> connectionId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connection_id': connectionId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsOpensearchInboundConnectionAccepterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connection_status` attribute.
  TfRef<String> get connectionStatus =>
      TfRef.attribute<String>(this, 'connection_status');
}
