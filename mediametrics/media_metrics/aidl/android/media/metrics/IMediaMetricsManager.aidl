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

package android.media.metrics;

import android.media.metrics.reported.ReportedEditingEndedEvent;
import android.media.metrics.reported.ReportedMediaItemInfo;
import android.media.metrics.reported.ReportedNetworkEvent;
import android.media.metrics.reported.ReportedPlaybackErrorEvent;
import android.media.metrics.reported.ReportedPlaybackMetrics;
import android.media.metrics.reported.ReportedPlaybackStateEvent;
import android.media.metrics.reported.ReportedTrackChangeEvent;
import android.os.PersistableBundle;

/**
 * Interface to the media metrics manager service.
 * @hide
 */
interface IMediaMetricsManager {
    /**
     * Report Playback data to the mediametrics subsystem
     */
    void reportPlaybackMetrics(in String sessionId, in ReportedPlaybackMetrics metrics,
                               int userId);

    /**
     * Creates a playback session, returning a session id.
     */
    String getPlaybackSessionId(int userId);

    /**
     * Creates a recording session, returning a session id.
     */
    String getRecordingSessionId(int userId);

    /**
     * Report a Network event to the mediametrics subsystem
     */
    void reportNetworkEvent(in String sessionId, in ReportedNetworkEvent event, int userId);

    /**
     * Report a Playback error to the mediametrics subsystem
     */
    void reportPlaybackErrorEvent(in String sessionId, in ReportedPlaybackErrorEvent event,
                                int userId);

    /**
     * Report a Playback state change to the mediametrics subsystem
     */
    void reportPlaybackStateEvent(in String sessionId, in ReportedPlaybackStateEvent event,
                                int userId);

    /**
     * Report a Track Change to the mediametrics subsystem
     */
    void reportTrackChangeEvent(in String sessionId, in ReportedTrackChangeEvent event,
                                int userId);

    /**
     * Reports the end of an editing session to the mediametrics service
     */
    void reportEditingEndedEvent(in String sessionId, in ReportedEditingEndedEvent event,
                                int userId);

    /**
     * Creates a transcoding session, returning a session id.
     */
    String getTranscodingSessionId(int userId);

    /**
     * Creates an editing session, returning a session id.
     */
    String getEditingSessionId(int userId);

    /**
     * Creates a bundle session, returning a session id.
     */
    String getBundleSessionId(int userId);

    /**
     * Reports bundle metrics to the mediametrics service
     */
    void reportBundleMetrics(in String sessionId, in PersistableBundle metrics, int userId);

    /**
     * Marks the indicates sessionId as complete and no longer active
     */
    void releaseSessionId(in String sessionId, int userId);

    /**
     * Translate userId to a package name.
     *
     * If no translation is possible, returns an empty string.
     * If multiple packages share the userId, it returns the first package found.
     *
     */
    String getFirstPackageName(int userId);

    /**
     * Determine whether the given uid holds the indicated permission.
     *
     * Currently ignores the supplied pid.
     */
    boolean checkPermission(String permission, int pid, int uid);
}
