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

defmodule GoogleApi.DFAReporting.V33.Model.BrowsersListResponse do
  @moduledoc """
  Browser List Response

  ## Attributes

  *   `browsers` (*type:* `list(GoogleApi.DFAReporting.V33.Model.Browser.t)`, *default:* `nil`) - Browser collection.
  *   `kind` (*type:* `String.t`, *default:* `dfareporting#browsersListResponse`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#browsersListResponse".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :browsers => list(GoogleApi.DFAReporting.V33.Model.Browser.t()),
          :kind => String.t()
        }

  field(:browsers, as: GoogleApi.DFAReporting.V33.Model.Browser, type: :list)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V33.Model.BrowsersListResponse do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.BrowsersListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V33.Model.BrowsersListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
