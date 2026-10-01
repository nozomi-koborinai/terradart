/// Colab Enterprise quickstart — runtime template, IAM, paused schedule.
///
/// Defines a `ColabStack` that enables Vertex AI + Storage, provisions a
/// reusable runtime template, grants an in-stack service account viewer on
/// the template, and registers a **paused** notebook schedule (local
/// `hello_world.ipynb` uploaded to GCS). Pausing avoids Vertex Colab VM
/// charges on apply.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/colab.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/storage.dart';

/// Colab Enterprise stack: template + IAM + paused schedule.
final class ColabStack extends Stack {
  ColabStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    const location = 'us-central1';
    final bucketName = '$projectId-terradart-colab';

    final apiAi = add(
      GoogleProjectService(
        localName: 'api_aiplatform',
        service: .literal('aiplatform.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final apiCompute = add(
      GoogleProjectService(
        localName: 'api_compute',
        service: .literal('compute.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final apiStorage = add(
      GoogleProjectService(
        localName: 'api_storage',
        service: .literal('storage.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    // terradart-validate has no default VPC; Colab templates require an
    // explicit network + subnet (default network returns 404).
    final network = add(
      GoogleComputeNetwork(
        localName: 'colab_vpc',
        name: .literal('terradart-colab-vpc'),
        autoCreateSubnetworks: .literal(false),
        dependsOn: [ResourceDependency(apiCompute)],
      ),
    );

    final subnet = add(
      GoogleComputeSubnetwork(
        localName: 'colab_subnet',
        name: .literal('terradart-colab-subnet'),
        region: .literal(location),
        network: network.ref,
        ipCidrRange: .literal('10.40.0.0/24'),
        privateIpGoogleAccess: .literal(true),
        dependsOn: [ResourceDependency(network)],
      ),
    );

    final runner = add(
      GoogleServiceAccount(
        localName: 'colab_runner',
        accountId: .literal('terradart-colab-runner'),
        displayName: .literal('Colab schedule runner'),
      ),
    );

    // Vertex keeps notebookRuntimeTemplate IDs briefly after destroy
    // (409 "already exists" on rapid destroy-then-apply cycles). Use a short
    // stable id that is unlikely to collide with a soft-deleted prior name.
    final template = add(
      GoogleColabRuntimeTemplate(
        localName: 'basic',
        name: .literal('terradart-colab-rt'),
        displayName: .literal('TerraDart Colab runtime template'),
        location: .literal(location),
        machineSpec: ColabRuntimeTemplateMachineSpec(
          machineType: .literal('e2-standard-4'),
        ),
        networkSpec: ColabRuntimeTemplateNetworkSpec(
          enableInternetAccess: .literal(true),
          network: .of(network),
          subnetwork: .of(subnet),
        ),
        dependsOn: [ResourceDependency(apiAi), ResourceDependency(subnet)],
      ),
    );

    add(
      GoogleColabRuntimeTemplateIamMember(
        localName: 'runner_viewer',
        runtimeTemplate: template.ref,
        role: .literal('roles/viewer'),
        member: .ref(runner.iamMember),
        dependsOn: [ResourceDependency(template), ResourceDependency(runner)],
      ),
    );

    final bucket = add(
      GoogleStorageBucket(
        localName: 'colab_io',
        name: .literal(bucketName),
        location: .literal('US-CENTRAL1'),
        forceDestroy: .literal(true),
        uniformBucketLevelAccess: .literal(true),
        dependsOn: [ResourceDependency(apiStorage)],
      ),
    );

    final notebook = add(
      GoogleStorageBucketObject(
        localName: 'hello_ipynb',
        bucket: bucket.ref,
        name: .literal('hello_world.ipynb'),
        body: .source(source: .literal('../hello_world.ipynb')),
        contentType: .literal('application/json'),
        dependsOn: [ResourceDependency(bucket)],
      ),
    );

    final templateResourceName =
        'projects/$projectId/locations/$location/notebookRuntimeTemplates/'
        '${template.nameRef.interpolation}';

    add(
      GoogleColabSchedule(
        localName: 'paused_hello',
        displayName: .literal('terradart-paused-hello'),
        location: .literal(location),
        cron: .literal('0 0 1 1 *'),
        maxConcurrentRunCount: .literal('1'),
        desiredState: .literal(.paused),
        request: .createNotebookExecutionJobRequest(
          ColabScheduleCreateNotebookExecutionJobRequest(
            notebookExecutionJob: ColabScheduleNotebookExecutionJob(
              displayName: .literal('TerraDart hello notebook'),
              source: .gcsNotebookSource(
                ColabScheduleGcsNotebookSource(
                  uri: .literal(
                    'gs://${bucket.nameRef.interpolation}/${notebook.nameRef.interpolation}',
                  ),
                  generation: .literal(notebook.generation.interpolation),
                ),
              ),
              compute: .notebookRuntimeTemplateResourceName(
                .literal(templateResourceName),
              ),
              gcsOutputUri: .literal(
                'gs://${bucket.nameRef.interpolation}/out',
              ),
              identity: .serviceAccount(.of(runner)),
            ),
          ),
        ),
        dependsOn: [
          ResourceDependency(template),
          ResourceDependency(notebook),
          ResourceDependency(runner),
        ],
      ),
    );
  }
}
