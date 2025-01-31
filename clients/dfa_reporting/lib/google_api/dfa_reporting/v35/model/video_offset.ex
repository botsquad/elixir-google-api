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

defmodule GoogleApi.DFAReporting.V35.Model.VideoOffset do
  @moduledoc """
  Video Offset

  ## Attributes

  *   `offsetPercentage` (*type:* `integer()`, *default:* `nil`) - Duration, as a percentage of video duration. Do not set when offsetSeconds is set. Acceptable values are 0 to 100, inclusive.
  *   `offsetSeconds` (*type:* `integer()`, *default:* `nil`) - Duration, in seconds. Do not set when offsetPercentage is set. Acceptable values are 0 to 86399, inclusive.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :offsetPercentage => integer() | nil,
          :offsetSeconds => integer() | nil
        }

  field(:offsetPercentage)
  field(:offsetSeconds)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V35.Model.VideoOffset do
  def decode(value, options) do
    GoogleApi.DFAReporting.V35.Model.VideoOffset.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V35.Model.VideoOffset do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
