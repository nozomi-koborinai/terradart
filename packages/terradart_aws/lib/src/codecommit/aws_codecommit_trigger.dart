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
final class CodecommitTrigger {
  const CodecommitTrigger({
    this.branches,
    this.customData,
    required this.destinationArn,
    required this.events,
    required this.name,
  });

  final TfArg<List<String>>? branches;

  final TfArg<String>? customData;

  final TfArg<String> destinationArn;

  final List<TfArg<CodecommitTriggerEvents>> events;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'branches': ?branches?.toTfJson(),
    'custom_data': ?customData?.toTfJson(),
    'destination_arn': destinationArn.toTfJson(),
    'events': [for (final e in events) e.toTfJson()],
    'name': name.toTfJson(),
  };
}

/// `events` — derived from the provider schema description.
enum CodecommitTriggerEvents implements TerraformEnum {
  all('all'),
  updatereference('updateReference'),
  createreference('createReference'),
  deletereference('deleteReference');

  const CodecommitTriggerEvents(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_codecommit_trigger`.
final class AwsCodecommitTrigger extends Resource {
  static const String tfType = 'aws_codecommit_trigger';

  AwsCodecommitTrigger({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> repositoryName,
    required List<CodecommitTrigger> trigger,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'repository_name': repositoryName,
           'trigger': TfArg.literal([for (final e in trigger) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodecommitTriggerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCodecommitTrigger>`.
  RefTo<AwsCodecommitTrigger> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `configuration_id` attribute.
  TfRef<String> get configurationId =>
      TfRef.attribute<String>(this, 'configuration_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `repository_name` attribute.
  TfRef<String> get repositoryName =>
      TfRef.attribute<String>(this, 'repository_name');
}
