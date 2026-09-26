// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_autoscaling_groups`.
const Set<String> _awsAutoscalingGroupsSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_autoscaling_groups` (derived from provider schema).
@immutable
final class DataAutoscalingGroupsFilter {
  const DataAutoscalingGroupsFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_autoscaling_groups`.
final class DataAwsAutoscalingGroups extends Data {
  static const String tfType = 'aws_autoscaling_groups';

  DataAwsAutoscalingGroups({
    required super.localName,
    TfArg<List<String>>? names,
    TfArg<String>? region,
    List<DataAutoscalingGroupsFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (names != null) 'names': names,
           if (region != null) 'region': region,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAutoscalingGroupsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arns` attribute.
  TfRef<List<String>> get arns => TfRef.attribute<List<String>>(this, 'arns');
}
