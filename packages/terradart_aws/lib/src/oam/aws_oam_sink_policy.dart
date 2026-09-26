// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_oam_sink_policy`.
const Set<String> _awsOamSinkPolicySensitive = <String>{};

/// Factory wrapper for `aws_oam_sink_policy`.
final class AwsOamSinkPolicy extends Resource {
  static const String tfType = 'aws_oam_sink_policy';

  AwsOamSinkPolicy({
    required super.localName,
    required TfArg<String> policy,
    TfArg<String>? region,
    required TfArg<String> sinkIdentifier,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy': policy,
           if (region != null) 'region': region,
           'sink_identifier': sinkIdentifier,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOamSinkPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `sink_id` attribute.
  TfRef<String> get sinkId => TfRef.attribute<String>(this, 'sink_id');
}
