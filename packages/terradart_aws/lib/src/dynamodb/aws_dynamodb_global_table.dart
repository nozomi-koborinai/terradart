// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dynamodb_global_table`.
const Set<String> _awsDynamodbGlobalTableSensitive = <String>{};

/// Typed helper for the `replica` block of
/// `aws_dynamodb_global_table` (derived from provider schema).
@immutable
final class DynamodbGlobalTableReplica {
  const DynamodbGlobalTableReplica({required this.regionName});

  final TfArg<String> regionName;

  Map<String, Object?> encode() => {'region_name': regionName.toTfJson()};
}

/// Factory wrapper for `aws_dynamodb_global_table`.
final class AwsDynamodbGlobalTable extends Resource {
  static const String tfType = 'aws_dynamodb_global_table';

  AwsDynamodbGlobalTable({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    required List<DynamodbGlobalTableReplica> replica,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           'replica': TfArg.literal([for (final e in replica) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDynamodbGlobalTableSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
