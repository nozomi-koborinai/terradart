// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_db_parameter_group`.
const Set<String> _awsDbParameterGroupSensitive = <String>{};

/// Typed helper for the `parameter` block of
/// `aws_db_parameter_group` (derived from provider schema).
@immutable
final class DbParameterGroupParameter {
  const DbParameterGroupParameter({
    this.applyMethod,
    required this.name,
    required this.value,
  });

  final TfArg<String>? applyMethod;

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    if (applyMethod != null) 'apply_method': applyMethod!.toTfJson(),
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_db_parameter_group`.
final class AwsDbParameterGroup extends Resource {
  static const String tfType = 'aws_db_parameter_group';

  AwsDbParameterGroup({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> family,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<String>? region,
    TfArg<bool>? skipDestroy,
    TfArg<Map<String, String>>? tags,
    List<DbParameterGroupParameter>? parameter,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'family': family,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (region != null) 'region': region,
           if (skipDestroy != null) 'skip_destroy': skipDestroy,
           if (tags != null) 'tags': tags,
           if (parameter != null)
             'parameter': TfArg.literal([
               for (final e in parameter) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDbParameterGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
