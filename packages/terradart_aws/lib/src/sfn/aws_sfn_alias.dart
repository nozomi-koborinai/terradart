// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sfn_alias`.
const Set<String> _awsSfnAliasSensitive = <String>{};

/// Typed helper for the `routing_configuration` block of
/// `aws_sfn_alias` (derived from provider schema).
@immutable
final class SfnAliasRoutingConfiguration {
  const SfnAliasRoutingConfiguration({
    required this.stateMachineVersionArn,
    required this.weight,
  });

  final TfArg<String> stateMachineVersionArn;

  final TfArg<num> weight;

  Map<String, Object?> encode() => {
    'state_machine_version_arn': stateMachineVersionArn.toTfJson(),
    'weight': weight.toTfJson(),
  };
}

/// Factory wrapper for `aws_sfn_alias`.
final class AwsSfnAlias extends Resource {
  static const String tfType = 'aws_sfn_alias';

  AwsSfnAlias({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    required List<SfnAliasRoutingConfiguration> routingConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           'routing_configuration': TfArg.literal([
             for (final e in routingConfiguration) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSfnAliasSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_date` attribute.
  TfRef<String> get creationDate =>
      TfRef.attribute<String>(this, 'creation_date');
}
