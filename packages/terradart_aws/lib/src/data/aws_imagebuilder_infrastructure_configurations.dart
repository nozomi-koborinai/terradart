// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_imagebuilder_infrastructure_configurations`.
const Set<String> _awsImagebuilderInfrastructureConfigurationsSensitive =
    <String>{};

/// Typed helper for the `filter` block of
/// `aws_imagebuilder_infrastructure_configurations` (derived from provider schema).
@immutable
final class DataImagebuilderInfrastructureConfigurationsFilter {
  const DataImagebuilderInfrastructureConfigurationsFilter({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_imagebuilder_infrastructure_configurations`.
final class DataAwsImagebuilderInfrastructureConfigurations extends Data {
  static const String tfType = 'aws_imagebuilder_infrastructure_configurations';

  DataAwsImagebuilderInfrastructureConfigurations({
    required super.localName,
    TfArg<String>? region,
    List<DataImagebuilderInfrastructureConfigurationsFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsImagebuilderInfrastructureConfigurationsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arns` attribute.
  TfRef<List<String>> get arns => TfRef.attribute<List<String>>(this, 'arns');

  /// Reference to `names` attribute.
  TfRef<List<String>> get names => TfRef.attribute<List<String>>(this, 'names');
}
