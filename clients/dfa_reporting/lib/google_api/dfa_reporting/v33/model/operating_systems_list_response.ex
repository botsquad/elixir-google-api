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

defmodule GoogleApi.DFAReporting.V33.Model.OperatingSystemsListResponse do
  @moduledoc """
  Operating System List Response

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `dfareporting#operatingSystemsListResponse`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#operatingSystemsListResponse".
  *   `operatingSystems` (*type:* `list(GoogleApi.DFAReporting.V33.Model.OperatingSystem.t)`, *default:* `nil`) - Operating system collection.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t(),
          :operatingSystems => list(GoogleApi.DFAReporting.V33.Model.OperatingSystem.t())
        }

  field(:kind)
  field(:operatingSystems, as: GoogleApi.DFAReporting.V33.Model.OperatingSystem, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V33.Model.OperatingSystemsListResponse do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.OperatingSystemsListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V33.Model.OperatingSystemsListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
