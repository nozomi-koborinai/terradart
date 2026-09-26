// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkflowmonitor_monitor`.
const Set<String> _awsNetworkflowmonitorMonitorSensitive = <String>{};

/// Typed helper for the `local_resource` block of
/// `aws_networkflowmonitor_monitor` (derived from provider schema).
@immutable
final class NetworkflowmonitorMonitorLocalResource {
  const NetworkflowmonitorMonitorLocalResource({
    required this.identifier,
    required this.type,
  });

  final TfArg<String> identifier;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'identifier': identifier.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `remote_resource` block of
/// `aws_networkflowmonitor_monitor` (derived from provider schema).
@immutable
final class NetworkflowmonitorMonitorRemoteResource {
  const NetworkflowmonitorMonitorRemoteResource({
    required this.identifier,
    required this.type,
  });

  final TfArg<String> identifier;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'identifier': identifier.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `aws_networkflowmonitor_monitor`.
final class AwsNetworkflowmonitorMonitor extends Resource {
  static const String tfType = 'aws_networkflowmonitor_monitor';

  AwsNetworkflowmonitorMonitor({
    required super.localName,
    required TfArg<String> monitorName,
    TfArg<String>? region,
    required TfArg<String> scopeArn,
    TfArg<Map<String, String>>? tags,
    List<NetworkflowmonitorMonitorLocalResource>? localResource,
    List<NetworkflowmonitorMonitorRemoteResource>? remoteResource,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'monitor_name': monitorName,
           if (region != null) 'region': region,
           'scope_arn': scopeArn,
           if (tags != null) 'tags': tags,
           if (localResource != null)
             'local_resource': TfArg.literal([
               for (final e in localResource) e.encode(),
             ]),
           if (remoteResource != null)
             'remote_resource': TfArg.literal([
               for (final e in remoteResource) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkflowmonitorMonitorSensitive;

  /// Reference to `monitor_arn` attribute.
  TfRef<String> get monitorArn => TfRef.attribute<String>(this, 'monitor_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
