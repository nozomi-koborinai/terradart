// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicecatalog_tag_option`.
const Set<String> _awsServicecatalogTagOptionSensitive = <String>{};

/// Factory wrapper for `aws_servicecatalog_tag_option`.
final class AwsServicecatalogTagOption extends Resource {
  static const String tfType = 'aws_servicecatalog_tag_option';

  AwsServicecatalogTagOption({
    required super.localName,
    TfArg<bool>? active,
    required TfArg<String> key,
    TfArg<String>? region,
    required TfArg<String> value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (active != null) 'active': active,
           'key': key,
           if (region != null) 'region': region,
           'value': value,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsServicecatalogTagOptionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `owner` attribute.
  TfRef<String> get owner => TfRef.attribute<String>(this, 'owner');
}
