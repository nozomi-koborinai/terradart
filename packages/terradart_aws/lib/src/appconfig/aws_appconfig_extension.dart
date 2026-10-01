// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_appconfig_extension`.
const Set<String> _awsAppconfigExtensionSensitive = <String>{};

/// Typed helper for the `action_point` block of
/// `aws_appconfig_extension` (derived from provider schema).
@immutable
final class AppconfigExtensionActionPoint {
  const AppconfigExtensionActionPoint({
    required this.point,
    required this.action,
  });

  final AppconfigExtensionPoint point;

  final List<AppconfigExtensionAction> action;

  Map<String, Object?> encode() => {
    'point': point.toTfJson(),
    'action': [for (final e in action) e.encode()],
  };
}

/// `point` — derived from the provider schema description.
extension type const AppconfigExtensionPoint._(TfArg<String> _)
    implements TfArg<String> {
  AppconfigExtensionPoint.variable(String name) : this._(TfArg.variable(name));
  AppconfigExtensionPoint.expression(String template)
    : this._(TfArg.expression(template));
  const AppconfigExtensionPoint.arg(TfArg<String> arg) : this._(arg);

  static const preCreateHostedConfigurationVersion = AppconfigExtensionPoint._(
    TfArgLiteral('PRE_CREATE_HOSTED_CONFIGURATION_VERSION'),
  );
  static const preStartDeployment = AppconfigExtensionPoint._(
    TfArgLiteral('PRE_START_DEPLOYMENT'),
  );
  static const atDeploymentTick = AppconfigExtensionPoint._(
    TfArgLiteral('AT_DEPLOYMENT_TICK'),
  );
  static const onDeploymentStart = AppconfigExtensionPoint._(
    TfArgLiteral('ON_DEPLOYMENT_START'),
  );
  static const onDeploymentStep = AppconfigExtensionPoint._(
    TfArgLiteral('ON_DEPLOYMENT_STEP'),
  );
  static const onDeploymentBaking = AppconfigExtensionPoint._(
    TfArgLiteral('ON_DEPLOYMENT_BAKING'),
  );
  static const onDeploymentComplete = AppconfigExtensionPoint._(
    TfArgLiteral('ON_DEPLOYMENT_COMPLETE'),
  );
  static const onDeploymentRolledBack = AppconfigExtensionPoint._(
    TfArgLiteral('ON_DEPLOYMENT_ROLLED_BACK'),
  );

  static const List<AppconfigExtensionPoint> values = [
    preCreateHostedConfigurationVersion,
    preStartDeployment,
    atDeploymentTick,
    onDeploymentStart,
    onDeploymentStep,
    onDeploymentBaking,
    onDeploymentComplete,
    onDeploymentRolledBack,
  ];
}

/// Typed helper for the `action_point.action` block of
/// `aws_appconfig_extension` (derived from provider schema).
@immutable
final class AppconfigExtensionAction {
  const AppconfigExtensionAction({
    this.description,
    required this.name,
    this.roleArn,
    required this.uri,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final RefTo<AwsIamRole>? roleArn;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'role_arn': ?roleArn?.encodeAs('arn').toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `parameter` block of
/// `aws_appconfig_extension` (derived from provider schema).
@immutable
final class AppconfigExtensionParameter {
  const AppconfigExtensionParameter({
    this.description,
    required this.name,
    this.required,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final TfArg<bool>? required;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'required': ?required?.toTfJson(),
  };
}

/// Factory wrapper for `aws_appconfig_extension`.
final class AwsAppconfigExtension extends Resource {
  static const String tfType = 'aws_appconfig_extension';

  AwsAppconfigExtension(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required List<AppconfigExtensionActionPoint> actionPoint,
    List<AppconfigExtensionParameter>? parameter,
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
           'action_point': TfArg.literal([
             for (final e in actionPoint) e.encode(),
           ]),
           if (parameter != null)
             'parameter': TfArg.literal([
               for (final e in parameter) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppconfigExtensionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppconfigExtension>`.
  RefTo<AwsAppconfigExtension> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
