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

package android.media.metrics.reported;

parcelable ReportedPlaybackMetrics {
    long mediaDurationMillis;
    int streamSource;
    int streamType;
    int playbackType;
    int drmType;
    int contentType;
    String playerName;
    String playerVersion;
    long[] experimentIds;
    int videoFramesPlayed;
    int videoFramesDropped;
    int audioUnderrunCount;
    long networkBytesRead;
    long localBytesRead;
    long networkTransferDurationMillis;
    byte[] drmSessionId;

    // we don't log this across the stats call, so don't include it here
    // private final @NonNull Bundle metricsBundle;
}
