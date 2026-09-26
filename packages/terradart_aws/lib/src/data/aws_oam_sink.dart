// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_oam_sink`.
const Set<String> _awsOamSinkSensitive = <String>{};

/// Factory wrapper for `aws_oam_sink`.
final class DataAwsOamSink extends Data {
  static const String tfType = 'aws_oam_sink';

  DataAwsOamSink({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> sinkIdentifier,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'sink_identifier': sinkIdentifier,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOamSinkSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `sink_id` attribute.
  TfRef<String> get sinkId => TfRef.attribute<String>(this, 'sink_id');
}
