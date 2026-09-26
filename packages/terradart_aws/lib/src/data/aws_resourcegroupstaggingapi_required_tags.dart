// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_resourcegroupstaggingapi_required_tags`.
const Set<String> _awsResourcegroupstaggingapiRequiredTagsSensitive =
    <String>{};

/// Factory wrapper for `aws_resourcegroupstaggingapi_required_tags`.
final class DataAwsResourcegroupstaggingapiRequiredTags extends Data {
  static const String tfType = 'aws_resourcegroupstaggingapi_required_tags';

  DataAwsResourcegroupstaggingapiRequiredTags({
    required super.localName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsResourcegroupstaggingapiRequiredTagsSensitive;

  /// Reference to `required_tags` attribute.
  TfRef<List<Map<String, Object?>>> get requiredTags =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'required_tags');
}
