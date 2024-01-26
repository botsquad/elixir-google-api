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

defmodule GoogleApi.BusinessMessages.V1.Model.BusinessMessagesCarouselCard do
  @moduledoc """
  Carousel of cards.

  ## Attributes

  *   `cardContents` (*type:* `list(GoogleApi.BusinessMessages.V1.Model.BusinessMessagesCardContent.t)`, *default:* `nil`) - The list of contents for each card in the carousel. A carousel can have a minimum of 2 cards and a maximum 10 cards.
  *   `cardWidth` (*type:* `String.t`, *default:* `nil`) - The width of the cards in the carousel.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cardContents =>
            list(GoogleApi.BusinessMessages.V1.Model.BusinessMessagesCardContent.t()) | nil,
          :cardWidth => String.t() | nil
        }

  field(:cardContents,
    as: GoogleApi.BusinessMessages.V1.Model.BusinessMessagesCardContent,
    type: :list
  )

  field(:cardWidth)
end

defimpl Poison.Decoder, for: GoogleApi.BusinessMessages.V1.Model.BusinessMessagesCarouselCard do
  def decode(value, options) do
    GoogleApi.BusinessMessages.V1.Model.BusinessMessagesCarouselCard.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BusinessMessages.V1.Model.BusinessMessagesCarouselCard do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
