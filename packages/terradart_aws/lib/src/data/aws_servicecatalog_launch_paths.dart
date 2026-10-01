// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicecatalog_launch_paths`.
const Set<String> _awsServicecatalogLaunchPathsSensitive = <String>{};

/// Factory wrapper for `aws_servicecatalog_launch_paths`.
final class DataAwsServicecatalogLaunchPaths extends Data {
  static const String tfType = 'aws_servicecatalog_launch_paths';

  DataAwsServicecatalogLaunchPaths({
    required super.localName,
    TfArg<String>? acceptLanguage,
    required TfArg<String> productId,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'accept_language': ?acceptLanguage,
           'product_id': productId,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsServicecatalogLaunchPathsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `summaries` attribute.
  TfRef<List<Map<String, Object?>>> get summaries =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'summaries');

  /// Reference to `accept_language` attribute.
  TfRef<String> get acceptLanguage =>
      TfRef.attribute<String>(this, 'accept_language');

  /// Reference to `product_id` attribute.
  TfRef<String> get productId => TfRef.attribute<String>(this, 'product_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
