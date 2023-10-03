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

defmodule GoogleApi.Speech.V1.Model.LongRunningRecognizeResponse do
  @moduledoc """
  The only message returned to the client by the `LongRunningRecognize` method. It contains the result as zero or more sequential `SpeechRecognitionResult` messages. It is included in the `result.response` field of the `Operation` returned by the `GetOperation` call of the `google::longrunning::Operations` service.

  ## Attributes
  
  *   `outputConfig` (*type:* `GoogleApi.Speech.V1.Model.TranscriptOutputConfig.t`, *default:* `nil`) - Original output config if present in the request.
  *   `outputError` (*type:* `GoogleApi.Speech.V1.Model.Status.t`, *default:* `nil`) - If the transcript output fails this field contains the relevant error.
  *   `requestId` (*type:* `String.t`, *default:* `nil`) - The ID associated with the request. This is a unique ID specific only to the given request.
  *   `results` (*type:* `list(GoogleApi.Speech.V1.Model.SpeechRecognitionResult.t)`, *default:* `nil`) - Sequential list of transcription results corresponding to sequential portions of audio.
  *   `speechAdaptationInfo` (*type:* `GoogleApi.Speech.V1.Model.SpeechAdaptationInfo.t`, *default:* `nil`) - Provides information on speech adaptation behavior in response
  *   `totalBilledTime` (*type:* `String.t`, *default:* `nil`) - When available, billed audio seconds for the corresponding request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
    
      :"outputConfig" => GoogleApi.Speech.V1.Model.TranscriptOutputConfig.t | nil,
    
      :"outputError" => GoogleApi.Speech.V1.Model.Status.t | nil,
    
      :"requestId" => String.t | nil,
    
      :"results" => list(GoogleApi.Speech.V1.Model.SpeechRecognitionResult.t) | nil,
    
      :"speechAdaptationInfo" => GoogleApi.Speech.V1.Model.SpeechAdaptationInfo.t | nil,
    
      :"totalBilledTime" => String.t | nil,
    
  }
  
  field(:"outputConfig", as: GoogleApi.Speech.V1.Model.TranscriptOutputConfig)
  field(:"outputError", as: GoogleApi.Speech.V1.Model.Status)
  field(:"requestId")
  field(:"results", as: GoogleApi.Speech.V1.Model.SpeechRecognitionResult, type: :list)
  field(:"speechAdaptationInfo", as: GoogleApi.Speech.V1.Model.SpeechAdaptationInfo)
  field(:"totalBilledTime")
end

defimpl Poison.Decoder, for: GoogleApi.Speech.V1.Model.LongRunningRecognizeResponse do
  def decode(value, options) do
    GoogleApi.Speech.V1.Model.LongRunningRecognizeResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Speech.V1.Model.LongRunningRecognizeResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
