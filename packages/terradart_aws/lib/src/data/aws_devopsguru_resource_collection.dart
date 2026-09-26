// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_devopsguru_resource_collection`.
const Set<String> _awsDevopsguruResourceCollectionSensitive = <String>{};

/// Factory wrapper for `aws_devopsguru_resource_collection`.
final class DataAwsDevopsguruResourceCollection extends Data {
  static const String tfType = 'aws_devopsguru_resource_collection';

  DataAwsDevopsguruResourceCollection({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> type,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region, 'type': type},
       );

  @override
  Set<String> get sensitiveFields => _awsDevopsguruResourceCollectionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cloudformation` attribute.
  TfRef<List<Map<String, Object?>>> get cloudformation =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cloudformation');

  /// Reference to `tags` attribute.
  TfRef<List<Map<String, Object?>>> get tags =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'tags');
}
