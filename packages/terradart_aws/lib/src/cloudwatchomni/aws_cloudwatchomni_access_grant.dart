// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatchomni_access_grant`.
const Set<String> _awsCloudwatchomniAccessGrantSensitive = <String>{};

/// Cloudwatchomni Access Grant enum for `permission`.
extension type const CloudwatchomniAccessGrantPermission._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchomniAccessGrantPermission.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchomniAccessGrantPermission.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchomniAccessGrantPermission.arg(TfArg<String> arg)
    : this._(arg);

  static const spaceAdmin = CloudwatchomniAccessGrantPermission._(
    TfArgLiteral('SPACE_ADMIN'),
  );
  static const read = CloudwatchomniAccessGrantPermission._(
    TfArgLiteral('READ'),
  );
  static const readWriteDelete = CloudwatchomniAccessGrantPermission._(
    TfArgLiteral('READ_WRITE_DELETE'),
  );
  static const custom = CloudwatchomniAccessGrantPermission._(
    TfArgLiteral('CUSTOM'),
  );

  static const List<CloudwatchomniAccessGrantPermission> values = [
    spaceAdmin,
    read,
    readWriteDelete,
    custom,
  ];
}

/// Typed helper for the `principal` block of
/// `aws_cloudwatchomni_access_grant` (derived from provider schema).
@immutable
final class CloudwatchomniAccessGrantPrincipal {
  const CloudwatchomniAccessGrantPrincipal({
    this.principalId,
    required this.principalType,
    this.principalAttribute,
  });

  final TfArg<String>? principalId;

  final CloudwatchomniAccessGrantPrincipalType principalType;

  final List<CloudwatchomniAccessGrantPrincipalAttribute>? principalAttribute;

  @internal
  Map<String, Object?> encode() => {
    'principal_id': ?principalId?.toTfJson(),
    'principal_type': principalType.toTfJson(),
    if (principalAttribute != null)
      'principal_attribute': [for (final e in principalAttribute!) e.encode()],
  };
}

/// `principal_type` — derived from the provider schema description.
extension type const CloudwatchomniAccessGrantPrincipalType._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchomniAccessGrantPrincipalType.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchomniAccessGrantPrincipalType.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchomniAccessGrantPrincipalType.arg(TfArg<String> arg)
    : this._(arg);

  static const idcUser = CloudwatchomniAccessGrantPrincipalType._(
    TfArgLiteral('IDC_USER'),
  );
  static const idcGroup = CloudwatchomniAccessGrantPrincipalType._(
    TfArgLiteral('IDC_GROUP'),
  );
  static const iamUser = CloudwatchomniAccessGrantPrincipalType._(
    TfArgLiteral('IAM_USER'),
  );
  static const iamRole = CloudwatchomniAccessGrantPrincipalType._(
    TfArgLiteral('IAM_ROLE'),
  );
  static const iamRoot = CloudwatchomniAccessGrantPrincipalType._(
    TfArgLiteral('IAM_ROOT'),
  );
  static const accessProfile = CloudwatchomniAccessGrantPrincipalType._(
    TfArgLiteral('ACCESS_PROFILE'),
  );
  static const alert = CloudwatchomniAccessGrantPrincipalType._(
    TfArgLiteral('ALERT'),
  );
  static const agent = CloudwatchomniAccessGrantPrincipalType._(
    TfArgLiteral('AGENT'),
  );

  static const List<CloudwatchomniAccessGrantPrincipalType> values = [
    idcUser,
    idcGroup,
    iamUser,
    iamRole,
    iamRoot,
    accessProfile,
    alert,
    agent,
  ];
}

/// Typed helper for the `principal.principal_attribute` block of
/// `aws_cloudwatchomni_access_grant` (derived from provider schema).
@immutable
final class CloudwatchomniAccessGrantPrincipalAttribute {
  const CloudwatchomniAccessGrantPrincipalAttribute({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `scoped_action` block of
/// `aws_cloudwatchomni_access_grant` (derived from provider schema).
@immutable
final class CloudwatchomniAccessGrantScopedAction {
  const CloudwatchomniAccessGrantScopedAction({
    required this.actions,
    this.resource,
  });

  final TfArg<List<String>> actions;

  final List<CloudwatchomniAccessGrantResource>? resource;

  @internal
  Map<String, Object?> encode() => {
    'actions': actions.toTfJson(),
    if (resource != null) 'resource': [for (final e in resource!) e.encode()],
  };
}

/// Typed helper for the `scoped_action.resource` block of
/// `aws_cloudwatchomni_access_grant` (derived from provider schema).
@immutable
final class CloudwatchomniAccessGrantResource {
  const CloudwatchomniAccessGrantResource({
    this.resourceArns,
    required this.resourceType,
    this.signalTypes,
    this.tags,
    this.rowScopeGroup,
  });

  final TfArg<List<String>>? resourceArns;

  final TfArg<String> resourceType;

  final EnumList<CloudwatchomniAccessGrantSignalTypes>? signalTypes;

  final TfArg<Map<String, String>>? tags;

  final List<CloudwatchomniAccessGrantRowScopeGroup>? rowScopeGroup;

  @internal
  Map<String, Object?> encode() => {
    'resource_arns': ?resourceArns?.toTfJson(),
    'resource_type': resourceType.toTfJson(),
    'signal_types': ?signalTypes?.toTfJson(),
    'tags': ?tags?.toTfJson(),
    if (rowScopeGroup != null)
      'row_scope_group': [for (final e in rowScopeGroup!) e.encode()],
  };
}

/// `signal_types` — derived from the provider schema description.
extension type const CloudwatchomniAccessGrantSignalTypes._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchomniAccessGrantSignalTypes.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchomniAccessGrantSignalTypes.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchomniAccessGrantSignalTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const logs = CloudwatchomniAccessGrantSignalTypes._(
    TfArgLiteral('LOGS'),
  );
  static const traces = CloudwatchomniAccessGrantSignalTypes._(
    TfArgLiteral('TRACES'),
  );

  static const List<CloudwatchomniAccessGrantSignalTypes> values = [
    logs,
    traces,
  ];
}

/// Typed helper for the `scoped_action.resource.row_scope_group` block of
/// `aws_cloudwatchomni_access_grant` (derived from provider schema).
@immutable
final class CloudwatchomniAccessGrantRowScopeGroup {
  const CloudwatchomniAccessGrantRowScopeGroup({this.rowScope});

  final List<CloudwatchomniAccessGrantRowScope>? rowScope;

  @internal
  Map<String, Object?> encode() => {
    if (rowScope != null) 'row_scope': [for (final e in rowScope!) e.encode()],
  };
}

/// Typed helper for the `scoped_action.resource.row_scope_group.row_scope` block of
/// `aws_cloudwatchomni_access_grant` (derived from provider schema).
@immutable
final class CloudwatchomniAccessGrantRowScope {
  const CloudwatchomniAccessGrantRowScope({
    required this.field,
    required this.operator,
    required this.values,
  });

  final TfArg<String> field;

  final CloudwatchomniAccessGrantOperator operator;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'field': field.toTfJson(),
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// `operator` — derived from the provider schema description.
extension type const CloudwatchomniAccessGrantOperator._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchomniAccessGrantOperator.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchomniAccessGrantOperator.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchomniAccessGrantOperator.arg(TfArg<String> arg) : this._(arg);

  static const inCase = CloudwatchomniAccessGrantOperator._(TfArgLiteral('IN'));

  static const List<CloudwatchomniAccessGrantOperator> values = [inCase];
}

/// Factory wrapper for `aws_cloudwatchomni_access_grant`.
final class AwsCloudwatchomniAccessGrant extends Resource {
  static const String tfType = 'aws_cloudwatchomni_access_grant';

  AwsCloudwatchomniAccessGrant(
    super.localName, {
    required TfArg<String> domainId,
    required TfArg<String> name,
    required CloudwatchomniAccessGrantPermission permission,
    TfArg<String>? region,
    required TfArg<String> spaceId,
    TfArg<Map<String, String>>? tags,
    List<CloudwatchomniAccessGrantPrincipal>? principal,
    List<CloudwatchomniAccessGrantScopedAction>? scopedAction,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_id': domainId,
           'name': name,
           'permission': permission,
           'region': ?region,
           'space_id': spaceId,
           'tags': ?tags,
           if (principal != null)
             'principal': TfArg.literal([
               for (final e in principal) e.encode(),
             ]),
           if (scopedAction != null)
             'scoped_action': TfArg.literal([
               for (final e in scopedAction) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchomniAccessGrantSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchomniAccessGrant>`.
  RefTo<AwsCloudwatchomniAccessGrant> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `grant_id` attribute.
  TfRef<String> get grantId => TfRef.attribute<String>(this, 'grant_id');

  /// Reference to `grant_type` attribute.
  TfRef<String> get grantType => TfRef.attribute<String>(this, 'grant_type');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `domain_id` attribute.
  TfRef<String> get domainId => TfRef.attribute<String>(this, 'domain_id');

  /// Reference to `permission` attribute.
  TfRef<String> get permission => TfRef.attribute<String>(this, 'permission');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `space_id` attribute.
  TfRef<String> get spaceId => TfRef.attribute<String>(this, 'space_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
