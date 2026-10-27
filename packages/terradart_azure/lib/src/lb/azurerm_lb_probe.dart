// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_lb_probe`.
const Set<String> _azurermLbProbeSensitive = <String>{};

/// Lb Probe No Healthy Backends enum for `no_healthy_backends_behavior`.
extension type const LbProbeNoHealthyBackendsBehavior._(TfArg<String> _)
    implements TfArg<String> {
  LbProbeNoHealthyBackendsBehavior.variable(String name)
    : this._(TfArg.variable(name));
  LbProbeNoHealthyBackendsBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const LbProbeNoHealthyBackendsBehavior.arg(TfArg<String> arg) : this._(arg);

  static const allprobeddown = LbProbeNoHealthyBackendsBehavior._(
    TfArgLiteral('AllProbedDown'),
  );
  static const allprobedup = LbProbeNoHealthyBackendsBehavior._(
    TfArgLiteral('AllProbedUp'),
  );

  static const List<LbProbeNoHealthyBackendsBehavior> values = [
    allprobeddown,
    allprobedup,
  ];
}

/// Lb Probe enum for `protocol`.
extension type const LbProbeProtocol._(TfArg<String> _)
    implements TfArg<String> {
  LbProbeProtocol.variable(String name) : this._(TfArg.variable(name));
  LbProbeProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const LbProbeProtocol.arg(TfArg<String> arg) : this._(arg);

  static const http = LbProbeProtocol._(TfArgLiteral('Http'));
  static const https = LbProbeProtocol._(TfArgLiteral('Https'));
  static const tcp = LbProbeProtocol._(TfArgLiteral('Tcp'));

  static const List<LbProbeProtocol> values = [http, https, tcp];
}

/// Factory wrapper for `azurerm_lb_probe`.
final class AzurermLbProbe extends Resource {
  static const String tfType = 'azurerm_lb_probe';

  AzurermLbProbe(
    super.localName, {
    TfArg<num>? intervalInSeconds,
    required TfArg<String> loadbalancerId,
    required TfArg<String> name,
    LbProbeNoHealthyBackendsBehavior? noHealthyBackendsBehavior,
    TfArg<num>? numberOfProbes,
    required TfArg<num> port,
    TfArg<num>? probeThreshold,
    LbProbeProtocol? protocol,
    TfArg<String>? requestPath,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'interval_in_seconds': ?intervalInSeconds,
           'loadbalancer_id': loadbalancerId,
           'name': name,
           'no_healthy_backends_behavior': ?noHealthyBackendsBehavior,
           'number_of_probes': ?numberOfProbes,
           'port': port,
           'probe_threshold': ?probeThreshold,
           'protocol': ?protocol,
           'request_path': ?requestPath,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermLbProbeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLbProbe>`.
  RefTo<AzurermLbProbe> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `load_balancer_rules` attribute.
  TfRef<List<String>> get loadBalancerRules =>
      TfRef.attribute<List<String>>(this, 'load_balancer_rules');

  /// Reference to `interval_in_seconds` attribute.
  TfRef<num> get intervalInSeconds =>
      TfRef.attribute<num>(this, 'interval_in_seconds');

  /// Reference to `loadbalancer_id` attribute.
  TfRef<String> get loadbalancerId =>
      TfRef.attribute<String>(this, 'loadbalancer_id');

  /// Reference to `no_healthy_backends_behavior` attribute.
  TfRef<String> get noHealthyBackendsBehavior =>
      TfRef.attribute<String>(this, 'no_healthy_backends_behavior');

  /// Reference to `number_of_probes` attribute.
  TfRef<num> get numberOfProbes =>
      TfRef.attribute<num>(this, 'number_of_probes');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `probe_threshold` attribute.
  TfRef<num> get probeThreshold =>
      TfRef.attribute<num>(this, 'probe_threshold');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `request_path` attribute.
  TfRef<String> get requestPath =>
      TfRef.attribute<String>(this, 'request_path');
}
