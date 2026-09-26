// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dax_parameter_group`.
const Set<String> _awsDaxParameterGroupSensitive = <String>{};

/// Typed helper for the `parameters` block of
/// `aws_dax_parameter_group` (derived from provider schema).
@immutable
final class DaxParameterGroupParameters {
  const DaxParameterGroupParameters({required this.name, required this.value});

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_dax_parameter_group`.
final class AwsDaxParameterGroup extends Resource {
  static const String tfType = 'aws_dax_parameter_group';

  AwsDaxParameterGroup({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    List<DaxParameterGroupParameters>? parameters,
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
           if (parameters != null)
             'parameters': TfArg.literal([
               for (final e in parameters) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDaxParameterGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
