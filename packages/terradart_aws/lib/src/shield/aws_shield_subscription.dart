// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_shield_subscription`.
const Set<String> _awsShieldSubscriptionSensitive = <String>{};

/// Shield Subscription Auto enum for `auto_renew`.
extension type const ShieldSubscriptionAutoRenew._(TfArg<String> _)
    implements TfArg<String> {
  ShieldSubscriptionAutoRenew.variable(String name)
    : this._(TfArg.variable(name));
  ShieldSubscriptionAutoRenew.expression(String template)
    : this._(TfArg.expression(template));
  const ShieldSubscriptionAutoRenew.arg(TfArg<String> arg) : this._(arg);

  static const enabled = ShieldSubscriptionAutoRenew._(TfArgLiteral('ENABLED'));
  static const disabled = ShieldSubscriptionAutoRenew._(
    TfArgLiteral('DISABLED'),
  );

  static const List<ShieldSubscriptionAutoRenew> values = [enabled, disabled];
}

/// Factory wrapper for `aws_shield_subscription`.
final class AwsShieldSubscription extends Resource {
  static const String tfType = 'aws_shield_subscription';

  AwsShieldSubscription(
    super.localName, {
    ShieldSubscriptionAutoRenew? autoRenew,
    TfArg<bool>? skipDestroy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'auto_renew': ?autoRenew, 'skip_destroy': ?skipDestroy},
       );

  @override
  Set<String> get sensitiveFields => _awsShieldSubscriptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsShieldSubscription>`.
  RefTo<AwsShieldSubscription> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `auto_renew` attribute.
  TfRef<String> get autoRenew => TfRef.attribute<String>(this, 'auto_renew');

  /// Reference to `skip_destroy` attribute.
  TfRef<bool> get skipDestroy => TfRef.attribute<bool>(this, 'skip_destroy');
}
