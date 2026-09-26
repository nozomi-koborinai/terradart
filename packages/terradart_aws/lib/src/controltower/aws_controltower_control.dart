// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_controltower_control`.
const Set<String> _awsControltowerControlSensitive = <String>{};

/// Typed helper for the `parameters` block of
/// `aws_controltower_control` (derived from provider schema).
@immutable
final class ControltowerControlParameters {
  const ControltowerControlParameters({required this.key, required this.value});

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_controltower_control`.
final class AwsControltowerControl extends Resource {
  static const String tfType = 'aws_controltower_control';

  AwsControltowerControl({
    required super.localName,
    required TfArg<String> controlIdentifier,
    TfArg<String>? region,
    required TfArg<String> targetIdentifier,
    List<ControltowerControlParameters>? parameters,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'control_identifier': controlIdentifier,
           if (region != null) 'region': region,
           'target_identifier': targetIdentifier,
           if (parameters != null)
             'parameters': TfArg.literal([
               for (final e in parameters) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsControltowerControlSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
