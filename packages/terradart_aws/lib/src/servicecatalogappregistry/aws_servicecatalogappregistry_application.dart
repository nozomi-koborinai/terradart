// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicecatalogappregistry_application`.
const Set<String> _awsServicecatalogappregistryApplicationSensitive =
    <String>{};

/// Factory wrapper for `aws_servicecatalogappregistry_application`.
final class AwsServicecatalogappregistryApplication extends Resource {
  static const String tfType = 'aws_servicecatalogappregistry_application';

  AwsServicecatalogappregistryApplication({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': name,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsServicecatalogappregistryApplicationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsServicecatalogappregistryApplication>`.
  RefTo<AwsServicecatalogappregistryApplication> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_tag` attribute.
  TfRef<Map<String, String>> get applicationTag =>
      TfRef.attribute<Map<String, String>>(this, 'application_tag');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
