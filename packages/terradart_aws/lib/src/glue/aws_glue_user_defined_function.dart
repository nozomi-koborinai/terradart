// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_user_defined_function`.
const Set<String> _awsGlueUserDefinedFunctionSensitive = <String>{};

/// Glue User Defined Function Owner enum for `owner_type`.
extension type const GlueUserDefinedFunctionOwnerType._(TfArg<String> _)
    implements TfArg<String> {
  GlueUserDefinedFunctionOwnerType.variable(String name)
    : this._(TfArg.variable(name));
  GlueUserDefinedFunctionOwnerType.expression(String template)
    : this._(TfArg.expression(template));
  const GlueUserDefinedFunctionOwnerType.arg(TfArg<String> arg) : this._(arg);

  static const user = GlueUserDefinedFunctionOwnerType._(TfArgLiteral('USER'));
  static const role = GlueUserDefinedFunctionOwnerType._(TfArgLiteral('ROLE'));
  static const group = GlueUserDefinedFunctionOwnerType._(
    TfArgLiteral('GROUP'),
  );

  static const List<GlueUserDefinedFunctionOwnerType> values = [
    user,
    role,
    group,
  ];
}

/// Typed helper for the `resource_uris` block of
/// `aws_glue_user_defined_function` (derived from provider schema).
@immutable
final class GlueUserDefinedFunctionResourceUris {
  const GlueUserDefinedFunctionResourceUris({
    required this.resourceType,
    required this.uri,
  });

  final GlueUserDefinedFunctionResourceType resourceType;

  final TfArg<String> uri;

  @internal
  Map<String, Object?> encode() => {
    'resource_type': resourceType.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// `resource_type` — derived from the provider schema description.
extension type const GlueUserDefinedFunctionResourceType._(TfArg<String> _)
    implements TfArg<String> {
  GlueUserDefinedFunctionResourceType.variable(String name)
    : this._(TfArg.variable(name));
  GlueUserDefinedFunctionResourceType.expression(String template)
    : this._(TfArg.expression(template));
  const GlueUserDefinedFunctionResourceType.arg(TfArg<String> arg)
    : this._(arg);

  static const jar = GlueUserDefinedFunctionResourceType._(TfArgLiteral('JAR'));
  static const file = GlueUserDefinedFunctionResourceType._(
    TfArgLiteral('FILE'),
  );
  static const archive = GlueUserDefinedFunctionResourceType._(
    TfArgLiteral('ARCHIVE'),
  );

  static const List<GlueUserDefinedFunctionResourceType> values = [
    jar,
    file,
    archive,
  ];
}

/// Factory wrapper for `aws_glue_user_defined_function`.
final class AwsGlueUserDefinedFunction extends Resource {
  static const String tfType = 'aws_glue_user_defined_function';

  AwsGlueUserDefinedFunction(
    super.localName, {
    TfArg<String>? catalogId,
    required TfArg<String> className,
    required TfArg<String> databaseName,
    required TfArg<String> name,
    required TfArg<String> ownerName,
    required GlueUserDefinedFunctionOwnerType ownerType,
    TfArg<String>? region,
    List<GlueUserDefinedFunctionResourceUris>? resourceUris,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog_id': ?catalogId,
           'class_name': className,
           'database_name': databaseName,
           'name': name,
           'owner_name': ownerName,
           'owner_type': ownerType,
           'region': ?region,
           if (resourceUris != null)
             'resource_uris': TfArg.literal([
               for (final e in resourceUris) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlueUserDefinedFunctionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGlueUserDefinedFunction>`.
  RefTo<AwsGlueUserDefinedFunction> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `catalog_id` attribute.
  TfRef<String> get catalogId => TfRef.attribute<String>(this, 'catalog_id');

  /// Reference to `class_name` attribute.
  TfRef<String> get className => TfRef.attribute<String>(this, 'class_name');

  /// Reference to `database_name` attribute.
  TfRef<String> get databaseName =>
      TfRef.attribute<String>(this, 'database_name');

  /// Reference to `owner_name` attribute.
  TfRef<String> get ownerName => TfRef.attribute<String>(this, 'owner_name');

  /// Reference to `owner_type` attribute.
  TfRef<String> get ownerType => TfRef.attribute<String>(this, 'owner_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
