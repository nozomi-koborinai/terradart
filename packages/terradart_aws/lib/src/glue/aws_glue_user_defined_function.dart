// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_user_defined_function`.
const Set<String> _awsGlueUserDefinedFunctionSensitive = <String>{};

/// Typed helper for the `resource_uris` block of
/// `aws_glue_user_defined_function` (derived from provider schema).
@immutable
final class GlueUserDefinedFunctionResourceUris {
  const GlueUserDefinedFunctionResourceUris({
    required this.resourceType,
    required this.uri,
  });

  final TfArg<String> resourceType;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    'resource_type': resourceType.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Factory wrapper for `aws_glue_user_defined_function`.
final class AwsGlueUserDefinedFunction extends Resource {
  static const String tfType = 'aws_glue_user_defined_function';

  AwsGlueUserDefinedFunction({
    required super.localName,
    TfArg<String>? catalogId,
    required TfArg<String> className,
    required TfArg<String> databaseName,
    required TfArg<String> name,
    required TfArg<String> ownerName,
    required TfArg<String> ownerType,
    TfArg<String>? region,
    List<GlueUserDefinedFunctionResourceUris>? resourceUris,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (catalogId != null) 'catalog_id': catalogId,
           'class_name': className,
           'database_name': databaseName,
           'name': name,
           'owner_name': ownerName,
           'owner_type': ownerType,
           if (region != null) 'region': region,
           if (resourceUris != null)
             'resource_uris': TfArg.literal([
               for (final e in resourceUris) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlueUserDefinedFunctionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');
}
