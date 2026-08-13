/// Network Services Mesh quickstart — a logical service-mesh namespace
/// plus config-only HTTP / gRPC / TCP routes.
///
/// Enables `networkservices.googleapis.com` and provisions a global Mesh.
/// Routes attach to that Mesh; they do not attach a Gateway (SWG is
/// $1.25/h) or a BackendService. Creating these objects does not attach
/// clusters or bill Anthos Service Mesh cluster/endpoint SKUs.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/network.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Network Services stack: Mesh + config-only HTTP / gRPC / TCP routes.
final class NetworkServicesMeshStack extends Stack {
  NetworkServicesMeshStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiNetworkServices = add(
      GoogleProjectService(
        localName: 'api_networkservices',
        service: TfArg.literal('networkservices.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final mesh = add(
      GoogleNetworkServicesMesh(
        localName: 'app',
        name: TfArg.literal('terradart-mesh'),
        location: TfArg.literal('global'),
        description: TfArg.literal('TerraDart smoke mesh'),
        dependsOn: [ResourceDependency(apiNetworkServices)],
      ),
    );

    final meshId = TfArg.literal([mesh.id.interpolation]);
    final onMesh = [
      ResourceDependency(apiNetworkServices),
      ResourceDependency(mesh),
    ];

    // Mesh-attached HttpRoute rejects redirect actions ("Config validation
    // failed"). Upstream mesh-basic matcher: hostname `example`, full path
    // `example`, query `key=value`, no action.
    add(
      GoogleNetworkServicesHttpRoute(
        localName: 'http',
        name: TfArg.literal('terradart-http-route'),
        hostnames: TfArg.literal(['example']),
        meshes: meshId,
        rules: [
          NetworkServicesHttpRouteRules(
            matches: [
              NetworkServicesHttpRouteRulesMatches(
                fullPathMatch: TfArg.literal('example'),
                queryParameters: [
                  NetworkServicesHttpRouteRulesMatchesQueryParameters(
                    queryParameter: TfArg.literal('key'),
                    exactMatch: TfArg.literal('value'),
                  ),
                ],
              ),
            ],
          ),
        ],
        dependsOn: onMesh,
      ),
    );

    // GrpcRoute nested types stay untyped Maps until hyphenated
    // retry_conditions enums can wrap (naming.dart follow-up).
    add(
      GoogleNetworkServicesGrpcRoute(
        localName: 'grpc',
        name: TfArg.literal('terradart-grpc-route'),
        hostnames: TfArg.literal(['example.com']),
        meshes: meshId,
        rules: TfArg.literal([
          {
            'matches': [
              {
                'method': {
                  'grpc_service': 'helloworld.Greeter',
                  'grpc_method': 'SayHello',
                  'case_sensitive': true,
                },
              },
            ],
            'action': {
              'retry_policy': {
                'num_retries': 1,
                'retry_conditions': ['connect-failure'],
              },
            },
          },
        ]),
        dependsOn: onMesh,
      ),
    );

    // original_destination is allowed only when an address match is `*/0`.
    add(
      GoogleNetworkServicesTcpRoute(
        localName: 'tcp',
        name: TfArg.literal('terradart-tcp-route'),
        meshes: meshId,
        rules: [
          NetworkServicesTcpRouteRules(
            matches: [
              NetworkServicesTcpRouteRulesMatches(
                address: TfArg.literal('*/0'),
                port: TfArg.literal('8081'),
              ),
            ],
            action: NetworkServicesTcpRouteRulesAction(
              originalDestination: TfArg.literal(true),
            ),
          ),
        ],
        dependsOn: onMesh,
      ),
    );
  }
}
