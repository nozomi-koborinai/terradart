/// Transcoder job template quickstart.
///
/// Enables `transcoder.googleapis.com` and creates a reusable
/// `google_transcoder_job_template` (SD H.264 + AAC → mp4). The template
/// is JobConfig metadata only — it does not transcode media or bill
/// output-minute SKUs. `google_transcoder_job` is left uncurated (needs a
/// source video in Cloud Storage).
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/transcoder.dart';

/// Transcoder stack: job template metadata (no job / no media).
final class TranscoderStack extends Stack {
  TranscoderStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiTranscoder = add(
      GoogleProjectService(
        localName: 'api_transcoder',
        service: TfArg.literal('transcoder.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    add(
      GoogleTranscoderJobTemplate(
        localName: 'sd',
        jobTemplateId: TfArg.literal('terradart-sd'),
        location: TfArg.literal('us-central1'),
        config: TranscoderJobTemplateConfig(
          inputs: [
            TranscoderJobTemplateConfigInputs(
              key: TfArg.literal('input0'),
            ),
          ],
          editList: [
            TranscoderJobTemplateConfigEditList(
              key: TfArg.literal('atom0'),
              inputs: TfArg.literal(['input0']),
              startTimeOffset: TfArg.literal('0s'),
            ),
          ],
          elementaryStreams: [
            TranscoderJobTemplateConfigElementaryStreams(
              key: TfArg.literal('video-stream0'),
              videoStream:
                  TranscoderJobTemplateConfigElementaryStreamsVideoStream(
                h264:
                    TranscoderJobTemplateConfigElementaryStreamsVideoStreamH264(
                  widthPixels: TfArg.literal(640),
                  heightPixels: TfArg.literal(360),
                  bitrateBps: TfArg.literal(550000),
                  frameRate: TfArg.literal(60),
                ),
              ),
            ),
            TranscoderJobTemplateConfigElementaryStreams(
              key: TfArg.literal('audio-stream0'),
              audioStream:
                  TranscoderJobTemplateConfigElementaryStreamsAudioStream(
                codec: TfArg.literal('aac'),
                bitrateBps: TfArg.literal(64000),
              ),
            ),
          ],
          muxStreams: [
            TranscoderJobTemplateConfigMuxStreams(
              key: TfArg.literal('sd'),
              fileName: TfArg.literal('sd.mp4'),
              container: TfArg.literal('mp4'),
              elementaryStreams: TfArg.literal([
                'video-stream0',
                'audio-stream0',
              ]),
            ),
          ],
        ),
        dependsOn: [ResourceDependency(apiTranscoder)],
      ),
    );
  }
}
