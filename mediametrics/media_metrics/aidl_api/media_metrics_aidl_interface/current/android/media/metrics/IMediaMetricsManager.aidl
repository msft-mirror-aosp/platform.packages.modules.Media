/*
 * Copyright (C) 2020 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
///////////////////////////////////////////////////////////////////////////////
// THIS FILE IS IMMUTABLE. DO NOT EDIT IN ANY CASE.                          //
///////////////////////////////////////////////////////////////////////////////

// This file is a snapshot of an AIDL file. Do not edit it manually. There are
// two cases:
// 1). this is a frozen version file - do not edit this in any case.
// 2). this is a 'current' file. If you make a backwards compatible change to
//     the interface (from the latest frozen version), the build system will
//     prompt you to update this file with `m <name>-update-api`.
//
// You must not make a backward incompatible change to any AIDL file built
// with the aidl_interface module type with versions property set. The module
// type is used to build AIDL files in a way that they can be used across
// independently updatable components of the system. If a device is shipped
// with such a backward incompatible change, it has a high risk of breaking
// later when a module using the interface is updated, e.g., Mainline modules.

package android.media.metrics;
/* @hide */
interface IMediaMetricsManager {
  void reportPlaybackMetrics(in String sessionId, in android.media.metrics.reported.ReportedPlaybackMetrics metrics, int userId);
  String getPlaybackSessionId(int userId);
  String getRecordingSessionId(int userId);
  void reportNetworkEvent(in String sessionId, in android.media.metrics.reported.ReportedNetworkEvent event, int userId);
  void reportPlaybackErrorEvent(in String sessionId, in android.media.metrics.reported.ReportedPlaybackErrorEvent event, int userId);
  void reportPlaybackStateEvent(in String sessionId, in android.media.metrics.reported.ReportedPlaybackStateEvent event, int userId);
  void reportTrackChangeEvent(in String sessionId, in android.media.metrics.reported.ReportedTrackChangeEvent event, int userId);
  void reportEditingEndedEvent(in String sessionId, in android.media.metrics.reported.ReportedEditingEndedEvent event, int userId);
  String getTranscodingSessionId(int userId);
  String getEditingSessionId(int userId);
  String getBundleSessionId(int userId);
  void reportBundleMetrics(in String sessionId, in android.os.PersistableBundle metrics, int userId);
  void releaseSessionId(in String sessionId, int userId);
  String getFirstPackageName(int userId);
  boolean checkPermission(String permission, int pid, int uid);
}
