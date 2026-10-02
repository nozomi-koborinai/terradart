// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_event_permission`.
const Set<String> _awsCloudwatchEventPermissionSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `aws_cloudwatch_event_permission` (derived from provider schema).
@immutable
final class CloudwatchEventPermissionCondition {
  const CloudwatchEventPermissionCondition({
    required this.key,
    required this.type,
    required this.value,
  });

  final CloudwatchEventPermissionKey key;

  final CloudwatchEventPermissionType type;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `key` — derived from the provider schema description.
extension type const CloudwatchEventPermissionKey._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchEventPermissionKey.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchEventPermissionKey.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchEventPermissionKey.arg(TfArg<String> arg) : this._(arg);

  static const awsPrincipalorgid = CloudwatchEventPermissionKey._(
    TfArgLiteral('aws:PrincipalOrgID'),
  );

  static const List<CloudwatchEventPermissionKey> values = [awsPrincipalorgid];
}

/// `type` — derived from the provider schema description.
extension type const CloudwatchEventPermissionType._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchEventPermissionType.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchEventPermissionType.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchEventPermissionType.arg(TfArg<String> arg) : this._(arg);

  static const stringequals = CloudwatchEventPermissionType._(
    TfArgLiteral('StringEquals'),
  );

  static const List<CloudwatchEventPermissionType> values = [stringequals];
}

/// Factory wrapper for `aws_cloudwatch_event_permission`.
final class AwsCloudwatchEventPermission extends Resource {
  static const String tfType = 'aws_cloudwatch_event_permission';

  AwsCloudwatchEventPermission(
    super.localName, {
    TfArg<String>? action,
    TfArg<String>? eventBusName,
    required TfArg<String> principal,
    TfArg<String>? region,
    required TfArg<String> statementId,
    CloudwatchEventPermissionCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action': ?action,
           'event_bus_name': ?eventBusName,
           'principal': principal,
           'region': ?region,
           'statement_id': statementId,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchEventPermissionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchEventPermission>`.
  RefTo<AwsCloudwatchEventPermission> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `action` attribute.
  TfRef<String> get action => TfRef.attribute<String>(this, 'action');

  /// Reference to `event_bus_name` attribute.
  TfRef<String> get eventBusName =>
      TfRef.attribute<String>(this, 'event_bus_name');

  /// Reference to `principal` attribute.
  TfRef<String> get principal => TfRef.attribute<String>(this, 'principal');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `statement_id` attribute.
  TfRef<String> get statementId =>
      TfRef.attribute<String>(this, 'statement_id');
}
