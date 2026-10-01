// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codestarnotifications_notification_rule`.
const Set<String> _awsCodestarnotificationsNotificationRuleSensitive =
    <String>{};

/// Codestarnotifications Notification Rule Detail enum for `detail_type`.
extension type const CodestarnotificationsNotificationRuleDetailType._(
  TfArg<String> _
) implements TfArg<String> {
  CodestarnotificationsNotificationRuleDetailType.variable(String name)
    : this._(TfArg.variable(name));
  CodestarnotificationsNotificationRuleDetailType.expression(String template)
    : this._(TfArg.expression(template));
  const CodestarnotificationsNotificationRuleDetailType.arg(TfArg<String> arg)
    : this._(arg);

  static const basic = CodestarnotificationsNotificationRuleDetailType._(
    TfArgLiteral('BASIC'),
  );
  static const full = CodestarnotificationsNotificationRuleDetailType._(
    TfArgLiteral('FULL'),
  );

  static const List<CodestarnotificationsNotificationRuleDetailType> values = [
    basic,
    full,
  ];
}

/// Codestarnotifications Notification Rule enum for `status`.
extension type const CodestarnotificationsNotificationRuleStatus._(
  TfArg<String> _
) implements TfArg<String> {
  CodestarnotificationsNotificationRuleStatus.variable(String name)
    : this._(TfArg.variable(name));
  CodestarnotificationsNotificationRuleStatus.expression(String template)
    : this._(TfArg.expression(template));
  const CodestarnotificationsNotificationRuleStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = CodestarnotificationsNotificationRuleStatus._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = CodestarnotificationsNotificationRuleStatus._(
    TfArgLiteral('DISABLED'),
  );

  static const List<CodestarnotificationsNotificationRuleStatus> values = [
    enabled,
    disabled,
  ];
}

/// Typed helper for the `target` block of
/// `aws_codestarnotifications_notification_rule` (derived from provider schema).
@immutable
final class CodestarnotificationsNotificationRuleTarget {
  const CodestarnotificationsNotificationRuleTarget({
    required this.address,
    this.type,
  });

  final TfArg<String> address;

  final TfArg<String>? type;

  @internal
  Map<String, Object?> encode() => {
    'address': address.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// Factory wrapper for `aws_codestarnotifications_notification_rule`.
final class AwsCodestarnotificationsNotificationRule extends Resource {
  static const String tfType = 'aws_codestarnotifications_notification_rule';

  AwsCodestarnotificationsNotificationRule(
    super.localName, {
    required CodestarnotificationsNotificationRuleDetailType detailType,
    required TfArg<List<String>> eventTypeIds,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> resource,
    CodestarnotificationsNotificationRuleStatus? status,
    TfArg<Map<String, String>>? tags,
    List<CodestarnotificationsNotificationRuleTarget>? target,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'detail_type': detailType,
           'event_type_ids': eventTypeIds,
           'name': name,
           'region': ?region,
           'resource': resource,
           'status': ?status,
           'tags': ?tags,
           if (target != null)
             'target': TfArg.literal([for (final e in target) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCodestarnotificationsNotificationRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCodestarnotificationsNotificationRule>`.
  RefTo<AwsCodestarnotificationsNotificationRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `detail_type` attribute.
  TfRef<String> get detailType => TfRef.attribute<String>(this, 'detail_type');

  /// Reference to `event_type_ids` attribute.
  TfRef<List<String>> get eventTypeIds =>
      TfRef.attribute<List<String>>(this, 'event_type_ids');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource` attribute.
  TfRef<String> get resource => TfRef.attribute<String>(this, 'resource');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
