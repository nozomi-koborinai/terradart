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

  final CognitoRiskConfigurationAccountTakeoverRiskConfigurationNotifyConfiguration?
  notifyConfiguration;

  Map<String, Object?> encode() => {
    'actions': actions.encode(),
    if (notifyConfiguration != null)
      'notify_configuration': notifyConfiguration!.encode(),
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

  final CognitoRiskConfigurationAccountTakeoverRiskConfigurationActionsHighAction?
  highAction;

  final CognitoRiskConfigurationAccountTakeoverRiskConfigurationActionsLowAction?
  lowAction;

  final CognitoRiskConfigurationAccountTakeoverRiskConfigurationActionsMediumAction?
  mediumAction;

  Map<String, Object?> encode() => {
    if (highAction != null) 'high_action': highAction!.encode(),
    if (lowAction != null) 'low_action': lowAction!.encode(),
    if (mediumAction != null) 'medium_action': mediumAction!.encode(),
  };
}

/// Typed helper for the `account_takeover_risk_configuration.actions.high_action` block of
/// `aws_cognito_risk_configuration` (derived from provider schema).
@immutable
final class CognitoRiskConfigurationAccountTakeoverRiskConfigurationActionsHighAction {
  const CognitoRiskConfigurationAccountTakeoverRiskConfigurationActionsHighAction({
    required this.eventAction,
    required this.notify,
  });

  final TfArg<String> eventAction;

  final TfArg<bool> notify;

  Map<String, Object?> encode() => {
    'event_action': eventAction.toTfJson(),
    'notify': notify.toTfJson(),
  };
}

/// Typed helper for the `account_takeover_risk_configuration.actions.low_action` block of
/// `aws_cognito_risk_configuration` (derived from provider schema).
@immutable
final class CognitoRiskConfigurationAccountTakeoverRiskConfigurationActionsLowAction {
  const CognitoRiskConfigurationAccountTakeoverRiskConfigurationActionsLowAction({
    required this.eventAction,
    required this.notify,
  });

  final TfArg<String> eventAction;

  final TfArg<bool> notify;

  Map<String, Object?> encode() => {
    'event_action': eventAction.toTfJson(),
    'notify': notify.toTfJson(),
  };
}

/// Typed helper for the `account_takeover_risk_configuration.actions.medium_action` block of
/// `aws_cognito_risk_configuration` (derived from provider schema).
@immutable
final class CognitoRiskConfigurationAccountTakeoverRiskConfigurationActionsMediumAction {
  const CognitoRiskConfigurationAccountTakeoverRiskConfigurationActionsMediumAction({
    required this.eventAction,
    required this.notify,
  });

  final TfArg<String> eventAction;

  final TfArg<bool> notify;

  Map<String, Object?> encode() => {
    'event_action': eventAction.toTfJson(),
    'notify': notify.toTfJson(),
  };
}

/// Typed helper for the `account_takeover_risk_configuration.notify_configuration` block of
/// `aws_cognito_risk_configuration` (derived from provider schema).
@immutable
final class CognitoRiskConfigurationAccountTakeoverRiskConfigurationNotifyConfiguration {
  const CognitoRiskConfigurationAccountTakeoverRiskConfigurationNotifyConfiguration({
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

  final CognitoRiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationBlockEmail?
  blockEmail;

  final CognitoRiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationMfaEmail?
  mfaEmail;

  final CognitoRiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationNoActionEmail?
  noActionEmail;

  Map<String, Object?> encode() => {
    if (from != null) 'from': from!.toTfJson(),
    if (replyTo != null) 'reply_to': replyTo!.toTfJson(),
    'source_arn': sourceArn.toTfJson(),
    if (blockEmail != null) 'block_email': blockEmail!.encode(),
    if (mfaEmail != null) 'mfa_email': mfaEmail!.encode(),
    if (noActionEmail != null) 'no_action_email': noActionEmail!.encode(),
  };
}

/// Typed helper for the `account_takeover_risk_configuration.notify_configuration.block_email` block of
/// `aws_cognito_risk_configuration` (derived from provider schema).
@immutable
final class CognitoRiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationBlockEmail {
  const CognitoRiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationBlockEmail({
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
final class CognitoRiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationMfaEmail {
  const CognitoRiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationMfaEmail({
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
final class CognitoRiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationNoActionEmail {
  const CognitoRiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationNoActionEmail({
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

  final TfArg<List<Object?>>? eventFilter;

  final CognitoRiskConfigurationCompromisedCredentialsRiskConfigurationActions
  actions;

  Map<String, Object?> encode() => {
    if (eventFilter != null) 'event_filter': eventFilter!.toTfJson(),
    'actions': actions.encode(),
  };
}

/// Typed helper for the `compromised_credentials_risk_configuration.actions` block of
/// `aws_cognito_risk_configuration` (derived from provider schema).
@immutable
final class CognitoRiskConfigurationCompromisedCredentialsRiskConfigurationActions {
  const CognitoRiskConfigurationCompromisedCredentialsRiskConfigurationActions({
    required this.eventAction,
  });

  final TfArg<String> eventAction;

  Map<String, Object?> encode() => {'event_action': eventAction.toTfJson()};
}

/// Typed helper for the `risk_exception_configuration` block of
/// `aws_cognito_risk_configuration` (derived from provider schema).
@immutable
final class CognitoRiskConfigurationRiskExceptionConfiguration {
  const CognitoRiskConfigurationRiskExceptionConfiguration({
    this.blockedIpRangeList,
    this.skippedIpRangeList,
  });

  final TfArg<List<Object?>>? blockedIpRangeList;

  final TfArg<List<Object?>>? skippedIpRangeList;

  Map<String, Object?> encode() => {
    if (blockedIpRangeList != null)
      'blocked_ip_range_list': blockedIpRangeList!.toTfJson(),
    if (skippedIpRangeList != null)
      'skipped_ip_range_list': skippedIpRangeList!.toTfJson(),
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
           if (clientId != null) 'client_id': clientId,
           if (region != null) 'region': region,
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

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
