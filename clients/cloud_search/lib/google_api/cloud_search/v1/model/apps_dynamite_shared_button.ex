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

defmodule GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedButton do
  @moduledoc """
  A button. Can be a text button or an image button.

  ## Attributes

  *   `altText` (*type:* `String.t`, *default:* `nil`) - The alternative text used for accessibility. Has no effect when an icon is set; use `icon.alt_text` instead.
  *   `color` (*type:* `GoogleApi.CloudSearch.V1.Model.Color.t`, *default:* `nil`) - If set, the button is filled with a solid background.
  *   `disabled` (*type:* `boolean()`, *default:* `nil`) - If true, the button is displayed in a disabled state and doesn't respond to user actions.
  *   `icon` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedIcon.t`, *default:* `nil`) - The icon image.
  *   `onClick` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedOnClick.t`, *default:* `nil`) - The action to perform when the button is clicked.
  *   `text` (*type:* `String.t`, *default:* `nil`) - The text of the button.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :altText => String.t() | nil,
          :color => GoogleApi.CloudSearch.V1.Model.Color.t() | nil,
          :disabled => boolean() | nil,
          :icon => GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedIcon.t() | nil,
          :onClick => GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedOnClick.t() | nil,
          :text => String.t() | nil
        }

  field(:altText)
  field(:color, as: GoogleApi.CloudSearch.V1.Model.Color)
  field(:disabled)
  field(:icon, as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedIcon)
  field(:onClick, as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedOnClick)
  field(:text)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedButton do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedButton.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedButton do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
