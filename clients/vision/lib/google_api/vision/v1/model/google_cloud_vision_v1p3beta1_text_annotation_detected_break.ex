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

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak do
  @moduledoc """
  Detected start or end of a structural component.

  ## Attributes

  *   `isPrefix` (*type:* `boolean()`, *default:* `nil`) - True if break prepends the element.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Detected break type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :isPrefix => boolean() | nil,
          :type => String.t() | nil
        }

  field(:isPrefix)
  field(:type)
end

defimpl Poison.Decoder,
  for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
