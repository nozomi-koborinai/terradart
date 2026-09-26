// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_controltower_baseline`.
const Set<String> _awsControltowerBaselineSensitive = <String>{};

/// Typed helper for the `parameters` block of
/// `aws_controltower_baseline` (derived from provider schema).
@immutable
final class ControltowerBaselineParameters {
  const ControltowerBaselineParameters({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_controltower_baseline`.
final class AwsControltowerBaseline extends Resource {
  static const String tfType = 'aws_controltower_baseline';

  AwsControltowerBaseline({
    required super.localName,
    required TfArg<String> baselineIdentifier,
    required TfArg<String> baselineVersion,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> targetIdentifier,
    List<ControltowerBaselineParameters>? parameters,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'baseline_identifier': baselineIdentifier,
           'baseline_version': baselineVersion,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'target_identifier': targetIdentifier,
           if (parameters != null)
             'parameters': TfArg.literal([
               for (final e in parameters) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsControltowerBaselineSensitive;

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `operation_identifier` attribute.
  TfRef<String> get operationIdentifier =>
      TfRef.attribute<String>(this, 'operation_identifier');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
