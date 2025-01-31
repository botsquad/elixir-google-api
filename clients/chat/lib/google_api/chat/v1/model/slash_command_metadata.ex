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

defmodule GoogleApi.Chat.V1.Model.SlashCommandMetadata do
  @moduledoc """
  Annotation metadata for slash commands (/).

  ## Attributes

  *   `bot` (*type:* `GoogleApi.Chat.V1.Model.User.t`, *default:* `nil`) - The Chat app whose command was invoked.
  *   `commandId` (*type:* `String.t`, *default:* `nil`) - The command id of the invoked slash command.
  *   `commandName` (*type:* `String.t`, *default:* `nil`) - The name of the invoked slash command.
  *   `triggersDialog` (*type:* `boolean()`, *default:* `nil`) - Indicating whether the slash command is for a dialog.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of slash command.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bot => GoogleApi.Chat.V1.Model.User.t() | nil,
          :commandId => String.t() | nil,
          :commandName => String.t() | nil,
          :triggersDialog => boolean() | nil,
          :type => String.t() | nil
        }

  field(:bot, as: GoogleApi.Chat.V1.Model.User)
  field(:commandId)
  field(:commandName)
  field(:triggersDialog)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.SlashCommandMetadata do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.SlashCommandMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.SlashCommandMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
