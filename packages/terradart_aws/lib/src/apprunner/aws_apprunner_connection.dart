// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apprunner_connection`.
const Set<String> _awsApprunnerConnectionSensitive = <String>{};

/// Apprunner Connection Provider enum for `provider_type`.
extension type const ApprunnerConnectionProviderType._(TfArg<String> _)
    implements TfArg<String> {
  ApprunnerConnectionProviderType.variable(String name)
    : this._(TfArg.variable(name));
  ApprunnerConnectionProviderType.expression(String template)
    : this._(TfArg.expression(template));
  const ApprunnerConnectionProviderType.arg(TfArg<String> arg) : this._(arg);

  static const github = ApprunnerConnectionProviderType._(
    TfArgLiteral('GITHUB'),
  );
  static const bitbucket = ApprunnerConnectionProviderType._(
    TfArgLiteral('BITBUCKET'),
  );

  static const List<ApprunnerConnectionProviderType> values = [
    github,
    bitbucket,
  ];
}

/// Factory wrapper for `aws_apprunner_connection`.
final class AwsApprunnerConnection extends Resource {
  static const String tfType = 'aws_apprunner_connection';

  AwsApprunnerConnection(
    super.localName, {
    required TfArg<String> connectionName,
    required ApprunnerConnectionProviderType providerType,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connection_name': connectionName,
           'provider_type': providerType,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApprunnerConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApprunnerConnection>`.
  RefTo<AwsApprunnerConnection> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `connection_name` attribute.
  TfRef<String> get connectionName =>
      TfRef.attribute<String>(this, 'connection_name');

  /// Reference to `provider_type` attribute.
  TfRef<String> get providerType =>
      TfRef.attribute<String>(this, 'provider_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
