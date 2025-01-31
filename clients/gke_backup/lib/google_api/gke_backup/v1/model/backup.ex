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

defmodule GoogleApi.GKEBackup.V1.Model.Backup do
  @moduledoc """
  Represents a request to perform a single point-in-time capture of some portion of the state of a GKE cluster, the record of the backup operation itself, and an anchor for the underlying artifacts that comprise the Backup (the config backup and VolumeBackups). Next id: 28

  ## Attributes

  *   `allNamespaces` (*type:* `boolean()`, *default:* `nil`) - Output only. If True, all namespaces were included in the Backup.
  *   `clusterMetadata` (*type:* `GoogleApi.GKEBackup.V1.Model.ClusterMetadata.t`, *default:* `nil`) - Output only. Information about the GKE cluster from which this Backup was created.
  *   `completeTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Completion time of the Backup
  *   `configBackupSizeBytes` (*type:* `String.t`, *default:* `nil`) - Output only. The size of the config backup in bytes.
  *   `containsSecrets` (*type:* `boolean()`, *default:* `nil`) - Output only. Whether or not the Backup contains Kubernetes Secrets. Controlled by the parent BackupPlan's include_secrets value.
  *   `containsVolumeData` (*type:* `boolean()`, *default:* `nil`) - Output only. Whether or not the Backup contains volume data. Controlled by the parent BackupPlan's include_volume_data value.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when this Backup resource was created.
  *   `deleteLockDays` (*type:* `integer()`, *default:* `nil`) - Minimum age for this Backup (in days). If this field is set to a non-zero value, the Backup will be "locked" against deletion (either manual or automatic deletion) for the number of days provided (measured from the creation time of the Backup). MUST be an integer value between 0-90 (inclusive). Defaults to parent BackupPlan's backup_delete_lock_days setting and may only be increased (either at creation time or in a subsequent update).
  *   `deleteLockExpireTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which an existing delete lock will expire for this backup (calculated from create_time + delete_lock_days).
  *   `description` (*type:* `String.t`, *default:* `nil`) - User specified descriptive string for this Backup.
  *   `encryptionKey` (*type:* `GoogleApi.GKEBackup.V1.Model.EncryptionKey.t`, *default:* `nil`) - Output only. The customer managed encryption key that was used to encrypt the Backup's artifacts. Inherited from the parent BackupPlan's encryption_key value.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Output only. `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a backup from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform backup updates in order to avoid race conditions: An `etag` is returned in the response to `GetBackup`, and systems are expected to put that etag in the request to `UpdateBackup` or `DeleteBackup` to ensure that their change will be applied to the same version of the resource.
  *   `labels` (*type:* `map()`, *default:* `nil`) - A set of custom labels supplied by user.
  *   `manual` (*type:* `boolean()`, *default:* `nil`) - Output only. This flag indicates whether this Backup resource was created manually by a user or via a schedule in the BackupPlan. A value of True means that the Backup was created manually.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The fully qualified name of the Backup. `projects/*/locations/*/backupPlans/*/backups/*`
  *   `podCount` (*type:* `integer()`, *default:* `nil`) - Output only. The total number of Kubernetes Pods contained in the Backup.
  *   `resourceCount` (*type:* `integer()`, *default:* `nil`) - Output only. The total number of Kubernetes resources included in the Backup.
  *   `retainDays` (*type:* `integer()`, *default:* `nil`) - The age (in days) after which this Backup will be automatically deleted. Must be an integer value >= 0: - If 0, no automatic deletion will occur for this Backup. - If not 0, this must be >= delete_lock_days and <= 365. Once a Backup is created, this value may only be increased. Defaults to the parent BackupPlan's backup_retain_days value.
  *   `retainExpireTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which this Backup will be automatically deleted (calculated from create_time + retain_days).
  *   `selectedApplications` (*type:* `GoogleApi.GKEBackup.V1.Model.NamespacedNames.t`, *default:* `nil`) - Output only. If set, the list of ProtectedApplications whose resources were included in the Backup.
  *   `selectedNamespaces` (*type:* `GoogleApi.GKEBackup.V1.Model.Namespaces.t`, *default:* `nil`) - Output only. If set, the list of namespaces that were included in the Backup.
  *   `sizeBytes` (*type:* `String.t`, *default:* `nil`) - Output only. The total size of the Backup in bytes = config backup size + sum(volume backup sizes)
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. Current state of the Backup
  *   `stateReason` (*type:* `String.t`, *default:* `nil`) - Output only. Human-readable description of why the backup is in the current `state`.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. Server generated global unique identifier of [UUID4](https://en.wikipedia.org/wiki/Universally_unique_identifier)
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when this Backup resource was last updated.
  *   `volumeCount` (*type:* `integer()`, *default:* `nil`) - Output only. The total number of volume backups contained in the Backup.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allNamespaces => boolean() | nil,
          :clusterMetadata => GoogleApi.GKEBackup.V1.Model.ClusterMetadata.t() | nil,
          :completeTime => DateTime.t() | nil,
          :configBackupSizeBytes => String.t() | nil,
          :containsSecrets => boolean() | nil,
          :containsVolumeData => boolean() | nil,
          :createTime => DateTime.t() | nil,
          :deleteLockDays => integer() | nil,
          :deleteLockExpireTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :encryptionKey => GoogleApi.GKEBackup.V1.Model.EncryptionKey.t() | nil,
          :etag => String.t() | nil,
          :labels => map() | nil,
          :manual => boolean() | nil,
          :name => String.t() | nil,
          :podCount => integer() | nil,
          :resourceCount => integer() | nil,
          :retainDays => integer() | nil,
          :retainExpireTime => DateTime.t() | nil,
          :selectedApplications => GoogleApi.GKEBackup.V1.Model.NamespacedNames.t() | nil,
          :selectedNamespaces => GoogleApi.GKEBackup.V1.Model.Namespaces.t() | nil,
          :sizeBytes => String.t() | nil,
          :state => String.t() | nil,
          :stateReason => String.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :volumeCount => integer() | nil
        }

  field(:allNamespaces)
  field(:clusterMetadata, as: GoogleApi.GKEBackup.V1.Model.ClusterMetadata)
  field(:completeTime, as: DateTime)
  field(:configBackupSizeBytes)
  field(:containsSecrets)
  field(:containsVolumeData)
  field(:createTime, as: DateTime)
  field(:deleteLockDays)
  field(:deleteLockExpireTime, as: DateTime)
  field(:description)
  field(:encryptionKey, as: GoogleApi.GKEBackup.V1.Model.EncryptionKey)
  field(:etag)
  field(:labels, type: :map)
  field(:manual)
  field(:name)
  field(:podCount)
  field(:resourceCount)
  field(:retainDays)
  field(:retainExpireTime, as: DateTime)
  field(:selectedApplications, as: GoogleApi.GKEBackup.V1.Model.NamespacedNames)
  field(:selectedNamespaces, as: GoogleApi.GKEBackup.V1.Model.Namespaces)
  field(:sizeBytes)
  field(:state)
  field(:stateReason)
  field(:uid)
  field(:updateTime, as: DateTime)
  field(:volumeCount)
end

defimpl Poison.Decoder, for: GoogleApi.GKEBackup.V1.Model.Backup do
  def decode(value, options) do
    GoogleApi.GKEBackup.V1.Model.Backup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEBackup.V1.Model.Backup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
