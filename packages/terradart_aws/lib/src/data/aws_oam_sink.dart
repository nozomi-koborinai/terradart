// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../oam/aws_oam_sink.dart';

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
           'region': ?region,
           'sink_identifier': sinkIdentifier,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOamSinkSensitive;

  /// A reference to the `aws_oam_sink` this data source reads, for
  /// arguments typed `RefTo<AwsOamSink>`.
  RefTo<AwsOamSink> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `sink_id` attribute.
  TfRef<String> get sinkId => TfRef.attribute<String>(this, 'sink_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `sink_identifier` attribute.
  TfRef<String> get sinkIdentifier =>
      TfRef.attribute<String>(this, 'sink_identifier');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
