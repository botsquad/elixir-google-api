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

defmodule GoogleApi.CloudSearch.V1.Model.Image do
  @moduledoc """


  ## Attributes

  *   `altText` (*type:* `String.t`, *default:* `nil`) - The alternative text of this image which will be used for accessibility.
  *   `aspectRatio` (*type:* `float()`, *default:* `nil`) - The aspect ratio of this image (width/height).
  *   `imageUrl` (*type:* `String.t`, *default:* `nil`) - Image url specified by developers. Server side, we will wrap with FIFE so client apps can configure size/cropping/etc.
  *   `onClick` (*type:* `GoogleApi.CloudSearch.V1.Model.OnClick.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :altText => String.t() | nil,
          :aspectRatio => float() | nil,
          :imageUrl => String.t() | nil,
          :onClick => GoogleApi.CloudSearch.V1.Model.OnClick.t() | nil
        }

  field(:altText)
  field(:aspectRatio)
  field(:imageUrl)
  field(:onClick, as: GoogleApi.CloudSearch.V1.Model.OnClick)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.Image do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.Image.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.Image do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
