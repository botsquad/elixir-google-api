# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ListSessionEntityTypesResponse do
  @moduledoc """
  The response message for SessionEntityTypes.ListSessionEntityTypes.

  ## Attributes

  - nextPageToken (String.t): Token to retrieve the next page of results, or empty if there are no more results in the list. Defaults to: `null`.
  - sessionEntityTypes ([GoogleCloudDialogflowV2SessionEntityType]): The list of session entity types. There will be a maximum number of items returned based on the page_size field in the request. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => any(),
          :sessionEntityTypes =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SessionEntityType.t())
        }

  field(:nextPageToken)

  field(
    :sessionEntityTypes,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SessionEntityType,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ListSessionEntityTypesResponse do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ListSessionEntityTypesResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ListSessionEntityTypesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
