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

defmodule GoogleApi.Speech.V1p1beta1.Model.CreatePhraseSetRequest do
  @moduledoc """
  Message sent by the client for the `CreatePhraseSet` method.

  ## Attributes
  
  *   `phraseSet` (*type:* `GoogleApi.Speech.V1p1beta1.Model.PhraseSet.t`, *default:* `nil`) - Required. The phrase set to create.
  *   `phraseSetId` (*type:* `String.t`, *default:* `nil`) - Required. The ID to use for the phrase set, which will become the final component of the phrase set's resource name. This value should restrict to letters, numbers, and hyphens, with the first character a letter, the last a letter or a number, and be 4-63 characters.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
    
      :"phraseSet" => GoogleApi.Speech.V1p1beta1.Model.PhraseSet.t | nil,
    
      :"phraseSetId" => String.t | nil,
    
  }
  
  field(:"phraseSet", as: GoogleApi.Speech.V1p1beta1.Model.PhraseSet)
  field(:"phraseSetId")
end

defimpl Poison.Decoder, for: GoogleApi.Speech.V1p1beta1.Model.CreatePhraseSetRequest do
  def decode(value, options) do
    GoogleApi.Speech.V1p1beta1.Model.CreatePhraseSetRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Speech.V1p1beta1.Model.CreatePhraseSetRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
