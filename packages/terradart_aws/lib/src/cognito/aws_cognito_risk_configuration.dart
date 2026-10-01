// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cognito_risk_configuration`.
const Set<String> _awsCognitoRiskConfigurationSensitive = <String>{};

/// Typed helper for the `account_takeover_risk_configuration` block of
/// `aws_cognito_risk_configuration` (derived from provider schema).
@immutable
final class CognitoRiskConfigurationAccountTakeoverRiskConfiguration {
  const CognitoRiskConfigurationAccountTakeoverRiskConfiguration({
    required this.actions,
    this.notifyConfiguration,
  });

  final CognitoRiskConfigurationAccountTakeoverRiskConfigurationActions actions;

  final CognitoRiskConfigurationNotifyConfiguration? notifyConfiguration;

  Map<String, Object?> encode() => {
    'actions': actions.encode(),
    'notify_configuration': ?notifyConfiguration?.encode(),
  };
}

/// Typed helper for the `account_takeover_risk_configuration.actions` block of
/// `aws_cognito_risk_configuration` (derived from provider schema).
@immutable
final class CognitoRiskConfigurationAccountTakeoverRiskConfigurationActions {
  const CognitoRiskConfigurationAccountTakeoverRiskConfigurationActions({
    this.highAction,
    this.lowAction,
    this.mediumAction,
  });

  final CognitoRiskConfigurationHighAction? highAction;

  final CognitoRiskConfigurationLowAction? lowAction;

  final CognitoRiskConfigurationMediumAction? mediumAction;

  Map<String, Object?> encode() => {
    'high_action': ?highAction?.encode(),
    'low_action': ?lowAction?.encode(),
    'medium_action': ?mediumAction?.encode(),
  };
}

/// Typed helper for the `account_takeover_risk_configuration.actions.high_action` block of
/// `aws_cognito_risk_configuration` (derived from provider schema).
@immutable
final class CognitoRiskConfigurationHighAction {
  const CognitoRiskConfigurationHighAction({
    required this.eventAction,
    required this.notify,
  });

  final TfArg<CognitoRiskConfigurationHighActionEventAction> eventAction;

  final TfArg<bool> notify;

  Map<String, Object?> encode() => {
    'event_action': eventAction.toTfJson(),
    'notify': notify.toTfJson(),
  };
}

/// `event_action` — derived from the provider schema description.
enum CognitoRiskConfigurationHighActionEventAction implements TerraformEnum {
  block('BLOCK'),
  mfaIfConfigured('MFA_IF_CONFIGURED'),
  mfaRequired('MFA_REQUIRED'),
  noAction('NO_ACTION');

  const CognitoRiskConfigurationHighActionEventAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `account_takeover_risk_configuration.actions.low_action` block of
/// `aws_cognito_risk_configuration` (derived from provider schema).
@immutable
final class CognitoRiskConfigurationLowAction {
  const CognitoRiskConfigurationLowAction({
    required this.eventAction,
    required this.notify,
  });

  final TfArg<CognitoRiskConfigurationHighActionEventAction> eventAction;

  final TfArg<bool> notify;

  Map<String, Object?> encode() => {
    'event_action': eventAction.toTfJson(),
    'notify': notify.toTfJson(),
  };
}

/// Typed helper for the `account_takeover_risk_configuration.actions.medium_action` block of
/// `aws_cognito_risk_configuration` (derived from provider schema).
@immutable
final class CognitoRiskConfigurationMediumAction {
  const CognitoRiskConfigurationMediumAction({
    required this.eventAction,
    required this.notify,
  });

  final TfArg<CognitoRiskConfigurationHighActionEventAction> eventAction;

  final TfArg<bool> notify;

  Map<String, Object?> encode() => {
    'event_action': eventAction.toTfJson(),
    'notify': notify.toTfJson(),
  };
}

/// Typed helper for the `account_takeover_risk_configuration.notify_configuration` block of
/// `aws_cognito_risk_configuration` (derived from provider schema).
@immutable
final class CognitoRiskConfigurationNotifyConfiguration {
  const CognitoRiskConfigurationNotifyConfiguration({
    this.from,
    this.replyTo,
    required this.sourceArn,
    this.blockEmail,
    this.mfaEmail,
    this.noActionEmail,
  });

  final TfArg<String>? from;

  final TfArg<String>? replyTo;

  final TfArg<String> sourceArn;

  final CognitoRiskConfigurationBlockEmail? blockEmail;

  final CognitoRiskConfigurationMfaEmail? mfaEmail;

  final CognitoRiskConfigurationNoActionEmail? noActionEmail;

  Map<String, Object?> encode() => {
    'from': ?from?.toTfJson(),
    'reply_to': ?replyTo?.toTfJson(),
    'source_arn': sourceArn.toTfJson(),
    'block_email': ?blockEmail?.encode(),
    'mfa_email': ?mfaEmail?.encode(),
    'no_action_email': ?noActionEmail?.encode(),
  };
}

/// Typed helper for the `account_takeover_risk_configuration.notify_configuration.block_email` block of
/// `aws_cognito_risk_configuration` (derived from provider schema).
@immutable
final class CognitoRiskConfigurationBlockEmail {
  const CognitoRiskConfigurationBlockEmail({
    required this.htmlBody,
    required this.subject,
    required this.textBody,
  });

  final TfArg<String> htmlBody;

  final TfArg<String> subject;

  final TfArg<String> textBody;

  Map<String, Object?> encode() => {
    'html_body': htmlBody.toTfJson(),
    'subject': subject.toTfJson(),
    'text_body': textBody.toTfJson(),
  };
}

/// Typed helper for the `account_takeover_risk_configuration.notify_configuration.mfa_email` block of
/// `aws_cognito_risk_configuration` (derived from provider schema).
@immutable
final class CognitoRiskConfigurationMfaEmail {
  const CognitoRiskConfigurationMfaEmail({
    required this.htmlBody,
    required this.subject,
    required this.textBody,
  });

  final TfArg<String> htmlBody;

  final TfArg<String> subject;

  final TfArg<String> textBody;

  Map<String, Object?> encode() => {
    'html_body': htmlBody.toTfJson(),
    'subject': subject.toTfJson(),
    'text_body': textBody.toTfJson(),
  };
}

/// Typed helper for the `account_takeover_risk_configuration.notify_configuration.no_action_email` block of
/// `aws_cognito_risk_configuration` (derived from provider schema).
@immutable
final class CognitoRiskConfigurationNoActionEmail {
  const CognitoRiskConfigurationNoActionEmail({
    required this.htmlBody,
    required this.subject,
    required this.textBody,
  });

  final TfArg<String> htmlBody;

  final TfArg<String> subject;

  final TfArg<String> textBody;

  Map<String, Object?> encode() => {
    'html_body': htmlBody.toTfJson(),
    'subject': subject.toTfJson(),
    'text_body': textBody.toTfJson(),
  };
}

/// Typed helper for the `compromised_credentials_risk_configuration` block of
/// `aws_cognito_risk_configuration` (derived from provider schema).
@immutable
final class CognitoRiskConfigurationCompromisedCredentialsRiskConfiguration {
  const CognitoRiskConfigurationCompromisedCredentialsRiskConfiguration({
    this.eventFilter,
    required this.actions,
  });

  final List<TfArg<CognitoRiskConfigurationEventFilter>>? eventFilter;

  final CognitoRiskConfigurationCompromisedCredentialsRiskConfigurationActions
  actions;

  Map<String, Object?> encode() => {
    if (eventFilter != null)
      'event_filter': [for (final e in eventFilter!) e.toTfJson()],
    'actions': actions.encode(),
  };
}

/// `event_filter` — derived from the provider schema description.
enum CognitoRiskConfigurationEventFilter implements TerraformEnum {
  signIn('SIGN_IN'),
  passwordChange('PASSWORD_CHANGE'),
  signUp('SIGN_UP');

  const CognitoRiskConfigurationEventFilter(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `compromised_credentials_risk_configuration.actions` block of
/// `aws_cognito_risk_configuration` (derived from provider schema).
@immutable
final class CognitoRiskConfigurationCompromisedCredentialsRiskConfigurationActions {
  const CognitoRiskConfigurationCompromisedCredentialsRiskConfigurationActions({
    required this.eventAction,
  });

  final TfArg<CognitoRiskConfigurationEventAction> eventAction;

  Map<String, Object?> encode() => {'event_action': eventAction.toTfJson()};
}

/// `event_action` — derived from the provider schema description.
enum CognitoRiskConfigurationEventAction implements TerraformEnum {
  block('BLOCK'),
  noAction('NO_ACTION');

  const CognitoRiskConfigurationEventAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `risk_exception_configuration` block of
/// `aws_cognito_risk_configuration` (derived from provider schema).
@immutable
final class CognitoRiskConfigurationRiskExceptionConfiguration {
  const CognitoRiskConfigurationRiskExceptionConfiguration({
    this.blockedIpRangeList,
    this.skippedIpRangeList,
  });

  final TfArg<List<String>>? blockedIpRangeList;

  final TfArg<List<String>>? skippedIpRangeList;

  Map<String, Object?> encode() => {
    'blocked_ip_range_list': ?blockedIpRangeList?.toTfJson(),
    'skipped_ip_range_list': ?skippedIpRangeList?.toTfJson(),
  };
}

/// Factory wrapper for `aws_cognito_risk_configuration`.
final class AwsCognitoRiskConfiguration extends Resource {
  static const String tfType = 'aws_cognito_risk_configuration';

  AwsCognitoRiskConfiguration({
    required super.localName,
    TfArg<String>? clientId,
    TfArg<String>? region,
    required TfArg<String> userPoolId,
    CognitoRiskConfigurationAccountTakeoverRiskConfiguration?
    accountTakeoverRiskConfiguration,
    CognitoRiskConfigurationCompromisedCredentialsRiskConfiguration?
    compromisedCredentialsRiskConfiguration,
    CognitoRiskConfigurationRiskExceptionConfiguration?
    riskExceptionConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'client_id': ?clientId,
           'region': ?region,
           'user_pool_id': userPoolId,
           if (accountTakeoverRiskConfiguration != null)
             'account_takeover_risk_configuration': TfArg.literal(
               accountTakeoverRiskConfiguration.encode(),
             ),
           if (compromisedCredentialsRiskConfiguration != null)
             'compromised_credentials_risk_configuration': TfArg.literal(
               compromisedCredentialsRiskConfiguration.encode(),
             ),
           if (riskExceptionConfiguration != null)
             'risk_exception_configuration': TfArg.literal(
               riskExceptionConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCognitoRiskConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCognitoRiskConfiguration>`.
  RefTo<AwsCognitoRiskConfiguration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `client_id` attribute.
  TfRef<String> get clientId => TfRef.attribute<String>(this, 'client_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `user_pool_id` attribute.
  TfRef<String> get userPoolId => TfRef.attribute<String>(this, 'user_pool_id');
}
