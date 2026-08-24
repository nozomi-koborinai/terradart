// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_moq_relay`.
const Set<String> _cloudflareMoqRelaySensitive = <String>{
  'token_publish_subscribe',
  'token_subscribe',
};

/// Typed helper for the `config` block of
/// `cloudflare_moq_relay` (derived from provider schema).
@immutable
final class MoqRelayConfig {
  const MoqRelayConfig({this.lingeringSubscribe, this.upstreams});

  final MoqRelayConfigLingeringSubscribe? lingeringSubscribe;

  final MoqRelayConfigUpstreams? upstreams;

  Map<String, Object?> encode() => {
    if (lingeringSubscribe != null)
      'lingering_subscribe': lingeringSubscribe!.encode(),
    if (upstreams != null) 'upstreams': upstreams!.encode(),
  };
}

/// Typed helper for the `config.lingering_subscribe` block of
/// `cloudflare_moq_relay` (derived from provider schema).
@immutable
final class MoqRelayConfigLingeringSubscribe {
  const MoqRelayConfigLingeringSubscribe({this.enabled, this.maxTimeoutMs});

  final TfArg<bool>? enabled;

  final TfArg<num>? maxTimeoutMs;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (maxTimeoutMs != null) 'max_timeout_ms': maxTimeoutMs!.toTfJson(),
  };
}

/// Typed helper for the `config.upstreams` block of
/// `cloudflare_moq_relay` (derived from provider schema).
@immutable
final class MoqRelayConfigUpstreams {
  const MoqRelayConfigUpstreams({this.enabled, this.upstreams});

  final TfArg<bool>? enabled;

  final List<MoqRelayConfigUpstreamsUpstreams>? upstreams;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (upstreams != null)
      'upstreams': [for (final e in upstreams!) e.encode()],
  };
}

/// Typed helper for the `config.upstreams.upstreams` block of
/// `cloudflare_moq_relay` (derived from provider schema).
@immutable
final class MoqRelayConfigUpstreamsUpstreams {
  const MoqRelayConfigUpstreamsUpstreams({this.url});

  final TfArg<String>? url;

  Map<String, Object?> encode() => {if (url != null) 'url': url!.toTfJson()};
}

/// Factory wrapper for `cloudflare_moq_relay`.
final class CloudflareMoqRelay extends Resource {
  static const String tfType = 'cloudflare_moq_relay';

  CloudflareMoqRelay({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> name,
    MoqRelayConfig? config,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'name': name,
           if (config != null) 'config': TfArg.literal(config.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMoqRelaySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `token_publish_subscribe` attribute.
  TfRef<String> get tokenPublishSubscribe =>
      TfRef.attribute<String>(this, 'token_publish_subscribe');

  /// Reference to `token_subscribe` attribute.
  TfRef<String> get tokenSubscribe =>
      TfRef.attribute<String>(this, 'token_subscribe');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');
}
