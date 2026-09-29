// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../memorydb/aws_memorydb_parameter_group.dart';

/// Sensitive field paths for `aws_memorydb_parameter_group`.
const Set<String> _awsMemorydbParameterGroupSensitive = <String>{};

/// Factory wrapper for `aws_memorydb_parameter_group`.
final class DataAwsMemorydbParameterGroup extends Data {
  static const String tfType = 'aws_memorydb_parameter_group';

  DataAwsMemorydbParameterGroup({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMemorydbParameterGroupSensitive;

  /// A reference to the `aws_memorydb_parameter_group` this data source reads, for
  /// arguments typed `RefTo<AwsMemorydbParameterGroup>`.
  RefTo<AwsMemorydbParameterGroup> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `family` attribute.
  TfRef<String> get family => TfRef.attribute<String>(this, 'family');

  /// Reference to `parameter` attribute.
  TfRef<List<Map<String, Object?>>> get parameter =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'parameter');
}
