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

defmodule GoogleApi.Language.V1.Model.Entity do
  @moduledoc """
  Represents a phrase in the text that is a known entity, such as a person, an organization, or location. The API associates information, such as salience and mentions, with entities.

  ## Attributes

  *   `mentions` (*type:* `list(GoogleApi.Language.V1.Model.EntityMention.t)`, *default:* `nil`) - The mentions of this entity in the input document. The API currently supports proper noun mentions.
  *   `metadata` (*type:* `map()`, *default:* `nil`) - Metadata associated with the entity. For most entity types, the metadata is a Wikipedia URL (`wikipedia_url`) and Knowledge Graph MID (`mid`), if they are available. For the metadata associated with other entity types, see the Type table below.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The representative name for the entity.
  *   `salience` (*type:* `number()`, *default:* `nil`) - The salience score associated with the entity in the [0, 1.0] range. The salience score for an entity provides information about the importance or centrality of that entity to the entire document text. Scores closer to 0 are less salient, while scores closer to 1.0 are highly salient.
  *   `sentiment` (*type:* `GoogleApi.Language.V1.Model.Sentiment.t`, *default:* `nil`) - For calls to AnalyzeEntitySentiment or if AnnotateTextRequest.Features.extract_entity_sentiment is set to true, this field will contain the aggregate sentiment expressed for this entity in the provided document.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The entity type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mentions => list(GoogleApi.Language.V1.Model.EntityMention.t()) | nil,
          :metadata => map() | nil,
          :name => String.t() | nil,
          :salience => number() | nil,
          :sentiment => GoogleApi.Language.V1.Model.Sentiment.t() | nil,
          :type => String.t() | nil
        }

  field(:mentions, as: GoogleApi.Language.V1.Model.EntityMention, type: :list)
  field(:metadata, type: :map)
  field(:name)
  field(:salience)
  field(:sentiment, as: GoogleApi.Language.V1.Model.Sentiment)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V1.Model.Entity do
  def decode(value, options) do
    GoogleApi.Language.V1.Model.Entity.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V1.Model.Entity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
