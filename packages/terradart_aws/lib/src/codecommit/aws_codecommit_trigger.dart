// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codecommit_trigger`.
const Set<String> _awsCodecommitTriggerSensitive = <String>{};

/// Typed helper for the `trigger` block of
/// `aws_codecommit_trigger` (derived from provider schema).
@immutable
final class CodecommitTriggerTrigger {
  const CodecommitTriggerTrigger({
    this.branches,
    this.customData,
    required this.destinationArn,
    required this.events,
    required this.name,
  });

  final TfArg<List<Object?>>? branches;

  final TfArg<String>? customData;

  final TfArg<String> destinationArn;

  final TfArg<List<Object?>> events;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    if (branches != null) 'branches': branches!.toTfJson(),
    if (customData != null) 'custom_data': customData!.toTfJson(),
    'destination_arn': destinationArn.toTfJson(),
    'events': events.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Factory wrapper for `aws_codecommit_trigger`.
final class AwsCodecommitTrigger extends Resource {
  static const String tfType = 'aws_codecommit_trigger';

  AwsCodecommitTrigger({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> repositoryName,
    required List<CodecommitTriggerTrigger> trigger,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'repository_name': repositoryName,
           'trigger': TfArg.literal([for (final e in trigger) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodecommitTriggerSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `configuration_id` attribute.
  TfRef<String> get configurationId =>
      TfRef.attribute<String>(this, 'configuration_id');
}
