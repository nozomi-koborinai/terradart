import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:test/test.dart';

/// Wire-precision tests for the unified health-check protocol sealed type:
/// six per-protocol config blocks whose exactly-one-of constraint the
/// resource enforces at the type level (a single `protocol` parameter).
///
/// Gate 6 asserts each config encodes something well-formed; these tests
/// pin the block-key mapping and that the resource embeds exactly one
/// `*_health_check` block.
void main() {
  test('each protocol variant maps to exactly its own block key', () {
    final variants = <String, ({ComputeHealthCheckProtocol config, int port})>{
      'http_health_check': (
        config: ComputeHealthCheckHttpHealthCheckConfig(
          port: TfArg.literal(80),
        ),
        port: 80,
      ),
      'https_health_check': (
        config: ComputeHealthCheckHttpsHealthCheckConfig(
          port: TfArg.literal(443),
        ),
        port: 443,
      ),
      'http2_health_check': (
        config: ComputeHealthCheckHttp2HealthCheckConfig(
          port: TfArg.literal(8443),
        ),
        port: 8443,
      ),
      'tcp_health_check': (
        config: ComputeHealthCheckTcpHealthCheckConfig(
          port: TfArg.literal(5432),
        ),
        port: 5432,
      ),
      'ssl_health_check': (
        config: ComputeHealthCheckSslHealthCheckConfig(
          port: TfArg.literal(636),
        ),
        port: 636,
      ),
      'grpc_health_check': (
        config: ComputeHealthCheckGrpcHealthCheckConfig(
          port: TfArg.literal(50051),
        ),
        port: 50051,
      ),
    };
    for (final entry in variants.entries) {
      expect(
        entry.value.config.blockKey,
        equals(entry.key),
        reason: '${entry.value.config.runtimeType} blockKey',
      );
      expect(
        entry.value.config.encode(),
        equals([
          {'port': entry.value.port},
        ]),
        reason: '${entry.value.config.runtimeType} minimal encode',
      );
    }
  });

  test('resource embeds exactly one *_health_check block', () {
    final hc = GoogleComputeHealthCheck(
      localName: 'web',
      name: TfArg.literal('web-hc'),
      protocol: ComputeHealthCheckHttpHealthCheckConfig(
        requestPath: TfArg.literal('/healthz'),
        port: TfArg.literal(8080),
      ),
    );
    final protocolKeys =
        hc.argMap.keys.where((k) => k.endsWith('_health_check')).toList();
    expect(protocolKeys, equals(['http_health_check']));
    expect(
      hc.argMap['http_health_check']!.toTfJson(),
      equals([
        {'request_path': '/healthz', 'port': 8080},
      ]),
    );
  });
}
