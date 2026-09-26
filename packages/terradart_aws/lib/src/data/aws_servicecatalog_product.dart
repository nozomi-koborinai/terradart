// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicecatalog_product`.
const Set<String> _awsServicecatalogProductSensitive = <String>{};

/// Factory wrapper for `aws_servicecatalog_product`.
final class DataAwsServicecatalogProduct extends Data {
  static const String tfType = 'aws_servicecatalog_product';

  DataAwsServicecatalogProduct({
    required super.localName,
    TfArg<String>? acceptLanguage,
    required TfArg<String> id,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (acceptLanguage != null) 'accept_language': acceptLanguage,
           'id': id,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsServicecatalogProductSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `distributor` attribute.
  TfRef<String> get distributor => TfRef.attribute<String>(this, 'distributor');

  /// Reference to `has_default_path` attribute.
  TfRef<bool> get hasDefaultPath =>
      TfRef.attribute<bool>(this, 'has_default_path');

  /// Reference to `owner` attribute.
  TfRef<String> get owner => TfRef.attribute<String>(this, 'owner');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `support_description` attribute.
  TfRef<String> get supportDescription =>
      TfRef.attribute<String>(this, 'support_description');

  /// Reference to `support_email` attribute.
  TfRef<String> get supportEmail =>
      TfRef.attribute<String>(this, 'support_email');

  /// Reference to `support_url` attribute.
  TfRef<String> get supportUrl => TfRef.attribute<String>(this, 'support_url');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
