// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../msk/aws_msk_configuration.dart';

/// Sensitive field paths for `aws_msk_configuration`.
const Set<String> _awsMskConfigurationSensitive = <String>{};

/// Factory wrapper for `aws_msk_configuration`.
final class DataAwsMskConfiguration extends Data {
  static const String tfType = 'aws_msk_configuration';

  DataAwsMskConfiguration({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'name': name, 'region': ?region});

  @override
  Set<String> get sensitiveFields => _awsMskConfigurationSensitive;

  /// A reference to the `aws_msk_configuration` this data source reads, for
  /// arguments typed `RefTo<AwsMskConfiguration>`.
  RefTo<AwsMskConfiguration> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `kafka_versions` attribute.
  TfRef<List<String>> get kafkaVersions =>
      TfRef.attribute<List<String>>(this, 'kafka_versions');

  /// Reference to `latest_revision` attribute.
  TfRef<num> get latestRevision =>
      TfRef.attribute<num>(this, 'latest_revision');

  /// Reference to `server_properties` attribute.
  TfRef<String> get serverProperties =>
      TfRef.attribute<String>(this, 'server_properties');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
