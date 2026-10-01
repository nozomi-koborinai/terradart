// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../imagebuilder/aws_imagebuilder_distribution_configuration.dart';

/// Sensitive field paths for `aws_imagebuilder_distribution_configuration`.
const Set<String> _awsImagebuilderDistributionConfigurationSensitive =
    <String>{};

/// Factory wrapper for `aws_imagebuilder_distribution_configuration`.
final class DataAwsImagebuilderDistributionConfiguration extends Data {
  static const String tfType = 'aws_imagebuilder_distribution_configuration';

  DataAwsImagebuilderDistributionConfiguration(
    super.localName, {
    required TfArg<String> arn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'arn': arn, 'region': ?region, 'tags': ?tags},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsImagebuilderDistributionConfigurationSensitive;

  /// A reference to the `aws_imagebuilder_distribution_configuration` this data source reads, for
  /// arguments typed `RefTo<AwsImagebuilderDistributionConfiguration>`.
  RefTo<AwsImagebuilderDistributionConfiguration> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `date_created` attribute.
  TfRef<String> get dateCreated =>
      TfRef.attribute<String>(this, 'date_created');

  /// Reference to `date_updated` attribute.
  TfRef<String> get dateUpdated =>
      TfRef.attribute<String>(this, 'date_updated');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `distribution` attribute.
  TfRef<List<Map<String, Object?>>> get distribution =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'distribution');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
