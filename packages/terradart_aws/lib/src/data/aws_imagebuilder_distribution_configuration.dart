// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_imagebuilder_distribution_configuration`.
const Set<String> _awsImagebuilderDistributionConfigurationSensitive =
    <String>{};

/// Factory wrapper for `aws_imagebuilder_distribution_configuration`.
final class DataAwsImagebuilderDistributionConfiguration extends Data {
  static const String tfType = 'aws_imagebuilder_distribution_configuration';

  DataAwsImagebuilderDistributionConfiguration({
    required super.localName,
    required TfArg<String> arn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'arn': arn,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsImagebuilderDistributionConfigurationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
