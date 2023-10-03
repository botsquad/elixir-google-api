# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Speech.V1p1beta1.Model.RecognitionConfig do
  @moduledoc """
  Provides information to the recognizer that specifies how to process the request.

  ## Attributes
  
  *   `adaptation` (*type:* `GoogleApi.Speech.V1p1beta1.Model.SpeechAdaptation.t`, *default:* `nil`) - Speech adaptation configuration improves the accuracy of speech recognition. For more information, see the [speech adaptation](https://cloud.google.com/speech-to-text/docs/adaptation) documentation. When speech adaptation is set it supersedes the `speech_contexts` field.
  *   `alternativeLanguageCodes` (*type:* `list(String.t)`, *default:* `nil`) - A list of up to 3 additional [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tags, listing possible alternative languages of the supplied audio. See [Language Support](https://cloud.google.com/speech-to-text/docs/languages) for a list of the currently supported language codes. If alternative languages are listed, recognition result will contain recognition in the most likely language detected including the main language_code. The recognition result will include the language tag of the language detected in the audio. Note: This feature is only supported for Voice Command and Voice Search use cases and performance may vary for other use cases (e.g., phone call transcription).
  *   `audioChannelCount` (*type:* `integer()`, *default:* `nil`) - The number of channels in the input audio data. ONLY set this for MULTI-CHANNEL recognition. Valid values for LINEAR16, OGG_OPUS and FLAC are `1`-`8`. Valid value for MULAW, AMR, AMR_WB and SPEEX_WITH_HEADER_BYTE is only `1`. If `0` or omitted, defaults to one channel (mono). Note: We only recognize the first channel by default. To perform independent recognition on each channel set `enable_separate_recognition_per_channel` to 'true'.
  *   `diarizationConfig` (*type:* `GoogleApi.Speech.V1p1beta1.Model.SpeakerDiarizationConfig.t`, *default:* `nil`) - Config to enable speaker diarization and set additional parameters to make diarization better suited for your application. Note: When this is enabled, we send all the words from the beginning of the audio for the top alternative in every consecutive STREAMING responses. This is done in order to improve our speaker tags as our models learn to identify the speakers in the conversation over time. For non-streaming requests, the diarization results will be provided only in the top alternative of the FINAL SpeechRecognitionResult.
  *   `diarizationSpeakerCount` (*type:* `integer()`, *default:* `nil`) - If set, specifies the estimated number of speakers in the conversation. Defaults to '2'. Ignored unless enable_speaker_diarization is set to true. Note: Use diarization_config instead.
  *   `enableAutomaticPunctuation` (*type:* `boolean()`, *default:* `nil`) - If 'true', adds punctuation to recognition result hypotheses. This feature is only available in select languages. Setting this for requests in other languages has no effect at all. The default 'false' value does not add punctuation to result hypotheses.
  *   `enableSeparateRecognitionPerChannel` (*type:* `boolean()`, *default:* `nil`) - This needs to be set to `true` explicitly and `audio_channel_count` > 1 to get each channel recognized separately. The recognition result will contain a `channel_tag` field to state which channel that result belongs to. If this is not true, we will only recognize the first channel. The request is billed cumulatively for all channels recognized: `audio_channel_count` multiplied by the length of the audio.
  *   `enableSpeakerDiarization` (*type:* `boolean()`, *default:* `nil`) - If 'true', enables speaker detection for each recognized word in the top alternative of the recognition result using a speaker_label provided in the WordInfo. Note: Use diarization_config instead.
  *   `enableSpokenEmojis` (*type:* `boolean()`, *default:* `nil`) - The spoken emoji behavior for the call If not set, uses default behavior based on model of choice If 'true', adds spoken emoji formatting for the request. This will replace spoken emojis with the corresponding Unicode symbols in the final transcript. If 'false', spoken emojis are not replaced.
  *   `enableSpokenPunctuation` (*type:* `boolean()`, *default:* `nil`) - The spoken punctuation behavior for the call If not set, uses default behavior based on model of choice e.g. command_and_search will enable spoken punctuation by default If 'true', replaces spoken punctuation with the corresponding symbols in the request. For example, "how are you question mark" becomes "how are you?". See https://cloud.google.com/speech-to-text/docs/spoken-punctuation for support. If 'false', spoken punctuation is not replaced.
  *   `enableWordConfidence` (*type:* `boolean()`, *default:* `nil`) - If `true`, the top result includes a list of words and the confidence for those words. If `false`, no word-level confidence information is returned. The default is `false`.
  *   `enableWordTimeOffsets` (*type:* `boolean()`, *default:* `nil`) - If `true`, the top result includes a list of words and the start and end time offsets (timestamps) for those words. If `false`, no word-level time offset information is returned. The default is `false`.
  *   `encoding` (*type:* `String.t`, *default:* `nil`) - Encoding of audio data sent in all `RecognitionAudio` messages. This field is optional for `FLAC` and `WAV` audio files and required for all other audio formats. For details, see AudioEncoding.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Required. The language of the supplied audio as a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. Example: "en-US". See [Language Support](https://cloud.google.com/speech-to-text/docs/languages) for a list of the currently supported language codes.
  *   `maxAlternatives` (*type:* `integer()`, *default:* `nil`) - Maximum number of recognition hypotheses to be returned. Specifically, the maximum number of `SpeechRecognitionAlternative` messages within each `SpeechRecognitionResult`. The server may return fewer than `max_alternatives`. Valid values are `0`-`30`. A value of `0` or `1` will return a maximum of one. If omitted, will return a maximum of one.
  *   `metadata` (*type:* `GoogleApi.Speech.V1p1beta1.Model.RecognitionMetadata.t`, *default:* `nil`) - Metadata regarding this request.
  *   `model` (*type:* `String.t`, *default:* `nil`) - Which model to select for the given request. Select the model best suited to your domain to get best results. If a model is not explicitly specified, then we auto-select a model based on the parameters in the RecognitionConfig. *Model* *Description* latest_long Best for long form content like media or conversation. latest_short Best for short form content like commands or single shot directed speech. command_and_search Best for short queries such as voice commands or voice search. phone_call Best for audio that originated from a phone call (typically recorded at an 8khz sampling rate). video Best for audio that originated from video or includes multiple speakers. Ideally the audio is recorded at a 16khz or greater sampling rate. This is a premium model that costs more than the standard rate. default Best for audio that is not one of the specific audio models. For example, long-form audio. Ideally the audio is high-fidelity, recorded at a 16khz or greater sampling rate. medical_conversation Best for audio that originated from a conversation between a medical provider and patient. medical_dictation Best for audio that originated from dictation notes by a medical provider. 
  *   `profanityFilter` (*type:* `boolean()`, *default:* `nil`) - If set to `true`, the server will attempt to filter out profanities, replacing all but the initial character in each filtered word with asterisks, e.g. "f***". If set to `false` or omitted, profanities won't be filtered out.
  *   `sampleRateHertz` (*type:* `integer()`, *default:* `nil`) - Sample rate in Hertz of the audio data sent in all `RecognitionAudio` messages. Valid values are: 8000-48000. 16000 is optimal. For best results, set the sampling rate of the audio source to 16000 Hz. If that's not possible, use the native sample rate of the audio source (instead of re-sampling). This field is optional for FLAC and WAV audio files, but is required for all other audio formats. For details, see AudioEncoding.
  *   `speechContexts` (*type:* `list(GoogleApi.Speech.V1p1beta1.Model.SpeechContext.t)`, *default:* `nil`) - Array of SpeechContext. A means to provide context to assist the speech recognition. For more information, see [speech adaptation](https://cloud.google.com/speech-to-text/docs/adaptation).
  *   `transcriptNormalization` (*type:* `GoogleApi.Speech.V1p1beta1.Model.TranscriptNormalization.t`, *default:* `nil`) - Use transcription normalization to automatically replace parts of the transcript with phrases of your choosing. For StreamingRecognize, this normalization only applies to stable partial transcripts (stability > 0.8) and final transcripts.
  *   `useEnhanced` (*type:* `boolean()`, *default:* `nil`) - Set to true to use an enhanced model for speech recognition. If `use_enhanced` is set to true and the `model` field is not set, then an appropriate enhanced model is chosen if an enhanced model exists for the audio. If `use_enhanced` is true and an enhanced version of the specified model does not exist, then the speech is recognized using the standard version of the specified model.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
    
      :"adaptation" => GoogleApi.Speech.V1p1beta1.Model.SpeechAdaptation.t | nil,
    
      :"alternativeLanguageCodes" => list(String.t) | nil,
    
      :"audioChannelCount" => integer() | nil,
    
      :"diarizationConfig" => GoogleApi.Speech.V1p1beta1.Model.SpeakerDiarizationConfig.t | nil,
    
      :"diarizationSpeakerCount" => integer() | nil,
    
      :"enableAutomaticPunctuation" => boolean() | nil,
    
      :"enableSeparateRecognitionPerChannel" => boolean() | nil,
    
      :"enableSpeakerDiarization" => boolean() | nil,
    
      :"enableSpokenEmojis" => boolean() | nil,
    
      :"enableSpokenPunctuation" => boolean() | nil,
    
      :"enableWordConfidence" => boolean() | nil,
    
      :"enableWordTimeOffsets" => boolean() | nil,
    
      :"encoding" => String.t | nil,
    
      :"languageCode" => String.t | nil,
    
      :"maxAlternatives" => integer() | nil,
    
      :"metadata" => GoogleApi.Speech.V1p1beta1.Model.RecognitionMetadata.t | nil,
    
      :"model" => String.t | nil,
    
      :"profanityFilter" => boolean() | nil,
    
      :"sampleRateHertz" => integer() | nil,
    
      :"speechContexts" => list(GoogleApi.Speech.V1p1beta1.Model.SpeechContext.t) | nil,
    
      :"transcriptNormalization" => GoogleApi.Speech.V1p1beta1.Model.TranscriptNormalization.t | nil,
    
      :"useEnhanced" => boolean() | nil,
    
  }
  
  field(:"adaptation", as: GoogleApi.Speech.V1p1beta1.Model.SpeechAdaptation)
  field(:"alternativeLanguageCodes", type: :list)
  field(:"audioChannelCount")
  field(:"diarizationConfig", as: GoogleApi.Speech.V1p1beta1.Model.SpeakerDiarizationConfig)
  field(:"diarizationSpeakerCount")
  field(:"enableAutomaticPunctuation")
  field(:"enableSeparateRecognitionPerChannel")
  field(:"enableSpeakerDiarization")
  field(:"enableSpokenEmojis")
  field(:"enableSpokenPunctuation")
  field(:"enableWordConfidence")
  field(:"enableWordTimeOffsets")
  field(:"encoding")
  field(:"languageCode")
  field(:"maxAlternatives")
  field(:"metadata", as: GoogleApi.Speech.V1p1beta1.Model.RecognitionMetadata)
  field(:"model")
  field(:"profanityFilter")
  field(:"sampleRateHertz")
  field(:"speechContexts", as: GoogleApi.Speech.V1p1beta1.Model.SpeechContext, type: :list)
  field(:"transcriptNormalization", as: GoogleApi.Speech.V1p1beta1.Model.TranscriptNormalization)
  field(:"useEnhanced")
end

defimpl Poison.Decoder, for: GoogleApi.Speech.V1p1beta1.Model.RecognitionConfig do
  def decode(value, options) do
    GoogleApi.Speech.V1p1beta1.Model.RecognitionConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Speech.V1p1beta1.Model.RecognitionConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
