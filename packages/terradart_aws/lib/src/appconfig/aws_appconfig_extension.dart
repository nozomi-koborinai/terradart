// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<String> point;

  final List<AppconfigExtensionActionPointAction> action;

  Map<String, Object?> encode() => {
    'point': point.toTfJson(),
    'action': [for (final e in action) e.encode()],
  };
}

/// Typed helper for the `action_point.action` block of
/// `aws_appconfig_extension` (derived from provider schema).
@immutable
final class AppconfigExtensionActionPointAction {
  const AppconfigExtensionActionPointAction({
    this.description,
    required this.name,
    this.roleArn,
    required this.uri,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final TfArg<String>? roleArn;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'name': name.toTfJson(),
    if (roleArn != null) 'role_arn': roleArn!.toTfJson(),
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
    if (description != null) 'description': description!.toTfJson(),
    'name': name.toTfJson(),
    if (required != null) 'required': required!.toTfJson(),
  };
}

/// Factory wrapper for `aws_appconfig_extension`.
final class AwsAppconfigExtension extends Resource {
  static const String tfType = 'aws_appconfig_extension';

  AwsAppconfigExtension({
    required super.localName,
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
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');
}
