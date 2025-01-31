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

defmodule GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedOpenLinkAppUri do
  @moduledoc """
  Represents the platform specific uri/intent to open for each client.

  ## Attributes

  *   `androidIntent` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedOpenLinkAppUriIntent.t`, *default:* `nil`) - An intent object to be opened in the corresponding android hosting app.
  *   `companionUri` (*type:* `String.t`, *default:* `nil`) - A companion uri string to be opened in the chat companion window. on the web.
  *   `iosUri` (*type:* `String.t`, *default:* `nil`) - A uri string to be opened in the corresponding iOS hosting app.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :androidIntent =>
            GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedOpenLinkAppUriIntent.t() | nil,
          :companionUri => String.t() | nil,
          :iosUri => String.t() | nil
        }

  field(:androidIntent, as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedOpenLinkAppUriIntent)
  field(:companionUri)
  field(:iosUri)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedOpenLinkAppUri do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedOpenLinkAppUri.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedOpenLinkAppUri do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
