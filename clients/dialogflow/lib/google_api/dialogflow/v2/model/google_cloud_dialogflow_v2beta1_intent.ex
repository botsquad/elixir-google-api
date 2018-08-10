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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1Intent do
  @moduledoc """
  Represents an intent. Intents convert a number of user expressions or patterns into an action. An action is an extraction of a user command or sentence semantics.

  ## Attributes

  - parameters ([GoogleCloudDialogflowV2beta1IntentParameter]): Optional. The collection of parameters associated with the intent. Defaults to: `null`.
  - action (String.t): Optional. The name of the action associated with the intent. Defaults to: `null`.
  - defaultResponsePlatforms ([String.t]): Optional. The list of platforms for which the first response will be taken from among the messages assigned to the DEFAULT_PLATFORM. Defaults to: `null`.
    - Enum - one of 
  - displayName (String.t): Required. The name of this intent. Defaults to: `null`.
  - events ([String.t]): Optional. The collection of event names that trigger the intent. If the collection of input contexts is not empty, all of the contexts must be present in the active user session for an event to trigger this intent. Defaults to: `null`.
  - followupIntentInfo ([GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo]): Optional. Collection of information about all followup intents that have name of this intent as a root_name. Defaults to: `null`.
  - inputContextNames ([String.t]): Optional. The list of context names required for this intent to be triggered. Format: &#x60;projects/&lt;Project ID&gt;/agent/sessions/-/contexts/&lt;Context ID&gt;&#x60;. Defaults to: `null`.
  - isFallback (boolean()): Optional. Indicates whether this is a fallback intent. Defaults to: `null`.
  - messages ([GoogleCloudDialogflowV2beta1IntentMessage]): Optional. The collection of rich messages corresponding to the &#x60;Response&#x60; field in the Dialogflow console. Defaults to: `null`.
  - mlDisabled (boolean()): Optional. Indicates whether Machine Learning is disabled for the intent. Note: If &#x60;ml_disabled&#x60; setting is set to true, then this intent is not taken into account during inference in &#x60;ML ONLY&#x60; match mode. Also, auto-markup in the UI is turned off. Defaults to: `null`.
  - mlEnabled (boolean()): Optional. Indicates whether Machine Learning is enabled for the intent. Note: If &#x60;ml_enabled&#x60; setting is set to false, then this intent is not taken into account during inference in &#x60;ML ONLY&#x60; match mode. Also, auto-markup in the UI is turned off. DEPRECATED! Please use &#x60;ml_disabled&#x60; field instead. NOTE: If both &#x60;ml_enabled&#x60; and &#x60;ml_disabled&#x60; are either not set or false, then the default value is determined as follows: - Before April 15th, 2018 the default is:   ml_enabled &#x3D; false / ml_disabled &#x3D; true. - After April 15th, 2018 the default is:   ml_enabled &#x3D; true / ml_disabled &#x3D; false. Defaults to: `null`.
  - name (String.t): Required for all methods except &#x60;create&#x60; (&#x60;create&#x60; populates the name automatically. The unique identifier of this intent. Format: &#x60;projects/&lt;Project ID&gt;/agent/intents/&lt;Intent ID&gt;&#x60;. Defaults to: `null`.
  - outputContexts ([GoogleCloudDialogflowV2beta1Context]): Optional. The collection of contexts that are activated when the intent is matched. Context messages in this collection should not set the parameters field. Setting the &#x60;lifespan_count&#x60; to 0 will reset the context when the intent is matched. Format: &#x60;projects/&lt;Project ID&gt;/agent/sessions/-/contexts/&lt;Context ID&gt;&#x60;. Defaults to: `null`.
  - parentFollowupIntentName (String.t): The unique identifier of the parent intent in the chain of followup intents. It identifies the parent followup intent. Format: &#x60;projects/&lt;Project ID&gt;/agent/intents/&lt;Intent ID&gt;&#x60;. Defaults to: `null`.
  - priority (integer()): Optional. The priority of this intent. Higher numbers represent higher priorities. Zero or negative numbers mean that the intent is disabled. Defaults to: `null`.
  - resetContexts (boolean()): Optional. Indicates whether to delete all contexts in the current session when this intent is matched. Defaults to: `null`.
  - rootFollowupIntentName (String.t): The unique identifier of the root intent in the chain of followup intents. It identifies the correct followup intents chain for this intent. Format: &#x60;projects/&lt;Project ID&gt;/agent/intents/&lt;Intent ID&gt;&#x60;. Defaults to: `null`.
  - trainingPhrases ([GoogleCloudDialogflowV2beta1IntentTrainingPhrase]): Optional. The collection of examples/templates that the agent is trained on. Defaults to: `null`.
  - webhookState (String.t): Required. Indicates whether webhooks are enabled for the intent. Defaults to: `null`.
    - Enum - one of [WEBHOOK_STATE_UNSPECIFIED, WEBHOOK_STATE_ENABLED, WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :parameters =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentParameter.t()),
          :action => any(),
          :defaultResponsePlatforms => list(any()),
          :displayName => any(),
          :events => list(any()),
          :followupIntentInfo =>
            list(
              GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo.t()
            ),
          :inputContextNames => list(any()),
          :isFallback => any(),
          :messages =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessage.t()),
          :mlDisabled => any(),
          :mlEnabled => any(),
          :name => any(),
          :outputContexts =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1Context.t()),
          :parentFollowupIntentName => any(),
          :priority => any(),
          :resetContexts => any(),
          :rootFollowupIntentName => any(),
          :trainingPhrases =>
            list(
              GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentTrainingPhrase.t()
            ),
          :webhookState => any()
        }

  field(
    :parameters,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentParameter,
    type: :list
  )

  field(:action)
  field(:defaultResponsePlatforms, type: :list)
  field(:displayName)
  field(:events, type: :list)

  field(
    :followupIntentInfo,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo,
    type: :list
  )

  field(:inputContextNames, type: :list)
  field(:isFallback)

  field(
    :messages,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessage,
    type: :list
  )

  field(:mlDisabled)
  field(:mlEnabled)
  field(:name)

  field(
    :outputContexts,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1Context,
    type: :list
  )

  field(:parentFollowupIntentName)
  field(:priority)
  field(:resetContexts)
  field(:rootFollowupIntentName)

  field(
    :trainingPhrases,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentTrainingPhrase,
    type: :list
  )

  field(:webhookState)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1Intent do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1Intent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1Intent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
