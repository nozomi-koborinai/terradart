// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dynamodb_tag`.
const Set<String> _awsDynamodbTagSensitive = <String>{};

/// Factory wrapper for `aws_dynamodb_tag`.
final class AwsDynamodbTag extends Resource {
  static const String tfType = 'aws_dynamodb_tag';

  AwsDynamodbTag({
    required super.localName,
    required TfArg<String> key,
    TfArg<String>? region,
    required TfArg<String> resourceArn,
    required TfArg<String> value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'key': key,
           if (region != null) 'region': region,
           'resource_arn': resourceArn,
           'value': value,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDynamodbTagSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
