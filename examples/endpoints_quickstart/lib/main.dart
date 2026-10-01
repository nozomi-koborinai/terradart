/// Cloud Endpoints OpenAPI service-config leftover quickstart.
///
/// Enables Service Management (plus Service Control + Endpoints APIs
/// that Google's Endpoints setup lists), waits for propagation, uploads
/// a dummy Swagger 2.0 config (`google_endpoints_service`), and grants
/// an in-stack service account `roles/viewer` on that service
/// (`google_endpoints_service_iam_member`).
///
/// Control-plane metadata only — no ESP/ESPv2 proxy, no live traffic,
/// so Service Control Operations SKUs do not fire.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_google/endpoints.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_time/terradart_time.dart';

/// Dummy Swagger 2.0 whose `host` matches [serviceName].
String _openapiConfig(String host) {
  return '''
swagger: "2.0"
info:
  description: "TerraDart leftover — metadata-only OpenAPI config."
  title: "TerraDart Endpoints leftover"
  version: "1.0.0"
host: "$host"
consumes:
- "application/json"
produces:
- "application/json"
schemes:
- "https"
paths:
  "/echo":
    post:
      description: "Echo back a given message."
      operationId: "echo"
      produces:
      - "application/json"
      responses:
        200:
          description: "Echo"
          schema:
            \$ref: "#/definitions/echoMessage"
      parameters:
      - description: "Message to echo"
        in: body
        name: message
        required: true
        schema:
          \$ref: "#/definitions/echoMessage"
      security:
      - api_key: []
definitions:
  echoMessage:
    properties:
      message:
        type: "string"
securityDefinitions:
  api_key:
    type: "apiKey"
    name: "key"
    in: "query"
''';
}

/// Cloud Endpoints stack: OpenAPI service config + additive service IAM.
final class EndpointsStack extends Stack {
  EndpointsStack({required String projectId})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'us-central1'),
          const TimeProvider(),
        ],
      ) {
    final serviceName = 'terradart.endpoints.$projectId.cloud.goog';

    // `google_endpoints_*` is absent from terraformApiPrefixRules — enable
    // the APIs Google's Endpoints setup lists without editing that map.
    final apiServiceManagement = add(
      GoogleProjectService(
        'api_servicemanagement',
        service: .literal('servicemanagement.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );
    final apiServiceControl = add(
      GoogleProjectService(
        'api_servicecontrol',
        service: .literal('servicecontrol.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );
    final apiEndpoints = add(
      GoogleProjectService(
        'api_endpoints',
        service: .literal('endpoints.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final apiWait = add(
      TimeSleep(
        'api_propagation',
        createDuration: TfArg.duration(const Duration(seconds: 60)),
        dependsOn: [apiServiceManagement, apiServiceControl, apiEndpoints],
      ),
    );

    final service = add(
      GoogleEndpointsService(
        'echo',
        serviceName: .literal(serviceName),
        openapiConfig: .literal(_openapiConfig(serviceName)),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [apiWait],
      ),
    );

    final sa = add(
      GoogleServiceAccount(
        'viewer',
        accountId: .literal('ep-viewer'),
        displayName: .literal('Endpoints leftover viewer'),
      ),
    );

    add(
      GoogleEndpointsServiceIamMember(
        'viewer',
        service: .literal(serviceName),
        role: .literal('roles/viewer'),
        member: sa.principal,
        dependsOn: [service, sa],
      ),
    );
  }
}
