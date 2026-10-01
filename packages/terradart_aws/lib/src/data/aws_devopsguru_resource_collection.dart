// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../devopsguru/aws_devopsguru_resource_collection.dart';

/// Sensitive field paths for `aws_devopsguru_resource_collection`.
const Set<String> _awsDevopsguruResourceCollectionSensitive = <String>{};

/// Factory wrapper for `aws_devopsguru_resource_collection`.
final class DataAwsDevopsguruResourceCollection extends Data {
  static const String tfType = 'aws_devopsguru_resource_collection';

  DataAwsDevopsguruResourceCollection(
    super.localName, {
    TfArg<String>? region,
    required TfArg<String> type,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'region': ?region, 'type': type});

  @override
  Set<String> get sensitiveFields => _awsDevopsguruResourceCollectionSensitive;

  /// A reference to the `aws_devopsguru_resource_collection` this data source reads, for
  /// arguments typed `RefTo<AwsDevopsguruResourceCollection>`.
  RefTo<AwsDevopsguruResourceCollection> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cloudformation` attribute.
  TfRef<List<Map<String, Object?>>> get cloudformation =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cloudformation');

  /// Reference to `tags` attribute.
  TfRef<List<Map<String, Object?>>> get tags =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'tags');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
