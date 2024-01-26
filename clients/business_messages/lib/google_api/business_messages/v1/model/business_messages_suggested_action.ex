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

defmodule GoogleApi.BusinessMessages.V1.Model.BusinessMessagesSuggestedAction do
  @moduledoc """
  When tapped, initiates the corresponding native action on the device.

  ## Attributes

  *   `dialAction` (*type:* `GoogleApi.BusinessMessages.V1.Model.BusinessMessagesDialAction.t`, *default:* `nil`) - Opens the user's default dialer app.
  *   `openUrlAction` (*type:* `GoogleApi.BusinessMessages.V1.Model.BusinessMessagesOpenUrlAction.t`, *default:* `nil`) - Opens the specified URL.
  *   `postbackData` (*type:* `String.t`, *default:* `nil`) - The string that the agent receives when a user taps the suggested action. Maximum 2,048 characters.
  *   `text` (*type:* `String.t`, *default:* `nil`) - Text that is shown in the suggested action. Maximum 25 characters.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dialAction => GoogleApi.BusinessMessages.V1.Model.BusinessMessagesDialAction.t() | nil,
          :openUrlAction =>
            GoogleApi.BusinessMessages.V1.Model.BusinessMessagesOpenUrlAction.t() | nil,
          :postbackData => String.t() | nil,
          :text => String.t() | nil
        }

  field(:dialAction, as: GoogleApi.BusinessMessages.V1.Model.BusinessMessagesDialAction)
  field(:openUrlAction, as: GoogleApi.BusinessMessages.V1.Model.BusinessMessagesOpenUrlAction)
  field(:postbackData)
  field(:text)
end

defimpl Poison.Decoder, for: GoogleApi.BusinessMessages.V1.Model.BusinessMessagesSuggestedAction do
  def decode(value, options) do
    GoogleApi.BusinessMessages.V1.Model.BusinessMessagesSuggestedAction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BusinessMessages.V1.Model.BusinessMessagesSuggestedAction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
