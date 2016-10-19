.class Landroid/media/VobSubTrack;
.super Landroid/media/WebVttTrack;
.source "VobSubRenderer.java"


# static fields
.field private static final DEBUG:Z

.field private static final KEY_LOCAL_SETTING:I = 0x66

.field private static final KEY_START_TIME:I = 0x7

.field private static final KEY_STRUCT_BITMAP:I = 0x11

.field private static final KEY_STRUCT_TEXT:I = 0x10

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field private static final TAG:Ljava/lang/String; = "VobSubTrack"


# instance fields
.field private final mEventHandler:Landroid/os/Handler;

.field private mNativeContext:J

.field private mPalette:[I

.field private mSubPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    const-string v0, "VobSubTrack"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/VobSubTrack;->DEBUG:Z

    .line 82
    const-string/jumbo v0, "vobsub_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Landroid/media/VobSubTrack;->native_init()V

    .line 84
    return-void
.end method

.method constructor <init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V
    .locals 1
    .param p1, "renderingWidget"    # Landroid/media/WebVttRenderingWidget;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Landroid/media/WebVttTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/VobSubTrack;->mEventHandler:Landroid/os/Handler;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Landroid/media/VobSubTrack;->mSubPath:Ljava/lang/String;

    .line 90
    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Landroid/media/MediaFormat;)V
    .locals 1
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Landroid/media/WebVttTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    .line 94
    iput-object p1, p0, Landroid/media/VobSubTrack;->mEventHandler:Landroid/os/Handler;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Landroid/media/VobSubTrack;->mSubPath:Ljava/lang/String;

    .line 96
    return-void
.end method

.method private native executeParser(I)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native getPathFromFileDescriptor(Ljava/io/FileDescriptor;)Ljava/lang/String;
.end method

.method private native native_finalized_SubParser()V
.end method

.method private static final native native_init()V
.end method

.method private native native_setup_SubParser(Ljava/lang/String;)V
.end method

.method private static parseMs(Ljava/lang/String;)J
    .locals 14
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    const-wide/16 v12, 0x3e8

    const-wide/16 v10, 0x3c

    .line 271
    const-string v8, ":"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 272
    .local v0, "hours":J
    const-string v8, ":"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 273
    .local v4, "minutes":J
    const-string v8, ":"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 274
    .local v6, "seconds":J
    const-string v8, ":"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 276
    .local v2, "millies":J
    mul-long v8, v0, v10

    mul-long/2addr v8, v10

    mul-long/2addr v8, v12

    mul-long/2addr v10, v4

    mul-long/2addr v10, v12

    add-long/2addr v8, v10

    mul-long v10, v6, v12

    add-long/2addr v8, v10

    add-long/2addr v8, v2

    return-wide v8
.end method

.method private native setVobPalette([I)V
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Landroid/media/VobSubTrack;->native_finalized_SubParser()V

    .line 131
    return-void
.end method

.method public finalizedSubParser()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/media/VobSubTrack;->native_finalized_SubParser()V

    .line 122
    return-void
.end method

.method public getSubPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Landroid/media/VobSubTrack;->mSubPath:Ljava/lang/String;

    return-object v0
.end method

.method getSubPathFromFileDescriptor(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Landroid/media/VobSubTrack;->getPathFromFileDescriptor(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/VobSubTrack;->mSubPath:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public onData([BZJ)V
    .locals 31
    .param p1, "data"    # [B
    .param p2, "eos"    # Z
    .param p3, "runID"    # J

    .prologue
    .line 138
    :try_start_0
    new-instance v17, Ljava/io/InputStreamReader;

    new-instance v22, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v23, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 139
    .local v17, "r":Ljava/io/Reader;
    new-instance v4, Ljava/io/BufferedReader;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 141
    .local v4, "br":Ljava/io/BufferedReader;
    const-string v22, "VobSubTrack"

    const-string v23, "Parse idx file>>>"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .local v13, "line":Ljava/lang/String;
    if-eqz v13, :cond_9

    .line 144
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 145
    sget-boolean v22, Landroid/media/VobSubTrack;->DEBUG:Z

    if-eqz v22, :cond_1

    const-string v22, "VobSubTrack"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "line: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_1
    const-string v22, "#"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 149
    const-string/jumbo v22, "size:"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 151
    const-string/jumbo v22, "palette:"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 153
    const-string v22, ":"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 154
    .local v16, "paletteArray":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/VobSubTrack;->mPalette:[I

    .line 156
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_0

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/VobSubTrack;->mPalette:[I

    move-object/from16 v22, v0

    aget-object v23, v16, v10

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x10

    invoke-static/range {v23 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v23

    aput v23, v22, v10

    .line 158
    sget-boolean v22, Landroid/media/VobSubTrack;->DEBUG:Z

    if-eqz v22, :cond_2

    const-string v22, "VobSubTrack"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "mPalette["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/VobSubTrack;->mPalette:[I

    move-object/from16 v24, v0

    aget v24, v24, v10

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 160
    .end local v10    # "i":I
    .end local v16    # "paletteArray":[Ljava/lang/String;
    :cond_3
    const-string v22, "langidx:"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 162
    const-string/jumbo v22, "timestamp:"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 164
    const-string v22, ","

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 166
    .local v18, "time_pos":[Ljava/lang/String;
    const-wide/16 v14, -0x1

    .line 167
    .local v14, "lastTimestamp":J
    const-string v12, ""

    .line 170
    .local v12, "lastFilePos":Ljava/lang/String;
    const/16 v22, 0x0

    aget-object v22, v18, v22

    const-string/jumbo v23, "timestamp:"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 171
    .local v9, "firstTimestamp":Ljava/lang/String;
    const/16 v22, 0x1

    aget-object v22, v18, v22

    const-string v23, ":"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 172
    .local v8, "firstFilePos":Ljava/lang/String;
    sget-boolean v22, Landroid/media/VobSubTrack;->DEBUG:Z

    if-eqz v22, :cond_4

    const-string v22, "VobSubTrack"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "firstTimestamp: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", firstFilePos: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_4
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .local v20, "timestampLine":Ljava/lang/String;
    if-eqz v20, :cond_8

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 176
    const-string/jumbo v22, "timestamp:"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 178
    new-instance v5, Landroid/media/TextTrackCue;

    invoke-direct {v5}, Landroid/media/TextTrackCue;-><init>()V

    .line 179
    .local v5, "cue":Landroid/media/TextTrackCue;
    const-string v22, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 182
    .local v21, "timestampPos":[Ljava/lang/String;
    const/16 v22, 0x0

    aget-object v22, v21, v22

    const-string/jumbo v23, "timestamp:"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 183
    .local v19, "timestamp":Ljava/lang/String;
    const/16 v22, 0x1

    aget-object v22, v21, v22

    const-string v23, ":"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 184
    .local v7, "filePos":Ljava/lang/String;
    sget-boolean v22, Landroid/media/VobSubTrack;->DEBUG:Z

    if-eqz v22, :cond_5

    const-string v22, "VobSubTrack"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "timestamp: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " filePos: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_5
    const-wide/16 v22, -0x1

    cmp-long v22, v14, v22

    if-nez v22, :cond_7

    const-string v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 187
    invoke-static {v9}, Landroid/media/VobSubTrack;->parseMs(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 188
    invoke-static/range {v19 .. v19}, Landroid/media/VobSubTrack;->parseMs(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 189
    move-wide/from16 v0, p3

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mRunID:J

    .line 190
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v8, v22, v23

    move-object/from16 v0, v22

    iput-object v0, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .line 191
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [[Landroid/media/TextTrackCueSpan;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Landroid/media/TextTrackCueSpan;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    new-instance v26, Landroid/media/TextTrackCueSpan;

    const-wide/16 v28, -0x1

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-direct {v0, v8, v1, v2}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    aput-object v26, v24, v25

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    iput-object v0, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 202
    :goto_2
    iget-wide v14, v5, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 203
    move-object v12, v7

    .line 204
    sget-boolean v22, Landroid/media/VobSubTrack;->DEBUG:Z

    if-eqz v22, :cond_6

    const-string v22, "VobSubTrack"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "lastTimestamp: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", lastFilePos: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/VobSubTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 223
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "cue":Landroid/media/TextTrackCue;
    .end local v7    # "filePos":Ljava/lang/String;
    .end local v8    # "firstFilePos":Ljava/lang/String;
    .end local v9    # "firstTimestamp":Ljava/lang/String;
    .end local v12    # "lastFilePos":Ljava/lang/String;
    .end local v13    # "line":Ljava/lang/String;
    .end local v14    # "lastTimestamp":J
    .end local v17    # "r":Ljava/io/Reader;
    .end local v18    # "time_pos":[Ljava/lang/String;
    .end local v19    # "timestamp":Ljava/lang/String;
    .end local v20    # "timestampLine":Ljava/lang/String;
    .end local v21    # "timestampPos":[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 224
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    const-string v22, "VobSubTrack"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "subtitle data is not UTF-8 encoded: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_3
    return-void

    .line 194
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "cue":Landroid/media/TextTrackCue;
    .restart local v7    # "filePos":Ljava/lang/String;
    .restart local v8    # "firstFilePos":Ljava/lang/String;
    .restart local v9    # "firstTimestamp":Ljava/lang/String;
    .restart local v12    # "lastFilePos":Ljava/lang/String;
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v14    # "lastTimestamp":J
    .restart local v17    # "r":Ljava/io/Reader;
    .restart local v18    # "time_pos":[Ljava/lang/String;
    .restart local v19    # "timestamp":Ljava/lang/String;
    .restart local v20    # "timestampLine":Ljava/lang/String;
    .restart local v21    # "timestampPos":[Ljava/lang/String;
    :cond_7
    :try_start_1
    iput-wide v14, v5, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 195
    invoke-static/range {v19 .. v19}, Landroid/media/VobSubTrack;->parseMs(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 196
    move-wide/from16 v0, p3

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mRunID:J

    .line 197
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v12, v22, v23

    move-object/from16 v0, v22

    iput-object v0, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .line 198
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [[Landroid/media/TextTrackCueSpan;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Landroid/media/TextTrackCueSpan;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    new-instance v26, Landroid/media/TextTrackCueSpan;

    const-wide/16 v28, -0x1

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-direct {v0, v12, v1, v2}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    aput-object v26, v24, v25

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    iput-object v0, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 225
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "cue":Landroid/media/TextTrackCue;
    .end local v7    # "filePos":Ljava/lang/String;
    .end local v8    # "firstFilePos":Ljava/lang/String;
    .end local v9    # "firstTimestamp":Ljava/lang/String;
    .end local v12    # "lastFilePos":Ljava/lang/String;
    .end local v13    # "line":Ljava/lang/String;
    .end local v14    # "lastTimestamp":J
    .end local v17    # "r":Ljava/io/Reader;
    .end local v18    # "time_pos":[Ljava/lang/String;
    .end local v19    # "timestamp":Ljava/lang/String;
    .end local v20    # "timestampLine":Ljava/lang/String;
    .end local v21    # "timestampPos":[Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 227
    .local v11, "ioe":Ljava/io/IOException;
    const-string v22, "VobSubTrack"

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 210
    .end local v11    # "ioe":Ljava/io/IOException;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "firstFilePos":Ljava/lang/String;
    .restart local v9    # "firstTimestamp":Ljava/lang/String;
    .restart local v12    # "lastFilePos":Ljava/lang/String;
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v14    # "lastTimestamp":J
    .restart local v17    # "r":Ljava/io/Reader;
    .restart local v18    # "time_pos":[Ljava/lang/String;
    .restart local v20    # "timestampLine":Ljava/lang/String;
    :cond_8
    :try_start_2
    new-instance v5, Landroid/media/TextTrackCue;

    invoke-direct {v5}, Landroid/media/TextTrackCue;-><init>()V

    .line 211
    .restart local v5    # "cue":Landroid/media/TextTrackCue;
    iput-wide v14, v5, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 212
    move-wide/from16 v0, p3

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mRunID:J

    .line 213
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v12, v22, v23

    move-object/from16 v0, v22

    iput-object v0, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .line 214
    const-wide/32 v22, 0x7fffffff

    move-wide/from16 v0, v22

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 215
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [[Landroid/media/TextTrackCueSpan;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Landroid/media/TextTrackCueSpan;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    new-instance v26, Landroid/media/TextTrackCueSpan;

    const-wide/16 v28, -0x1

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-direct {v0, v12, v1, v2}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    aput-object v26, v24, v25

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    iput-object v0, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 217
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/VobSubTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z

    .line 222
    .end local v5    # "cue":Landroid/media/TextTrackCue;
    .end local v8    # "firstFilePos":Ljava/lang/String;
    .end local v9    # "firstTimestamp":Ljava/lang/String;
    .end local v12    # "lastFilePos":Ljava/lang/String;
    .end local v14    # "lastTimestamp":J
    .end local v18    # "time_pos":[Ljava/lang/String;
    .end local v20    # "timestampLine":Ljava/lang/String;
    :cond_9
    const-string v22, "VobSubTrack"

    const-string v23, "Parse idx file<<<<"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3
.end method

.method public setUpSubParser()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroid/media/VobSubTrack;->mSubPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/media/VobSubTrack;->native_setup_SubParser(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Landroid/media/VobSubTrack;->mPalette:[I

    invoke-direct {p0, v0}, Landroid/media/VobSubTrack;->setVobPalette([I)V

    .line 118
    return-void
.end method

.method public updateView(Ljava/util/Vector;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    invoke-virtual {p0}, Landroid/media/VobSubTrack;->getRenderingWidget()Landroid/media/WebVttRenderingWidget;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 234
    invoke-super {p0, p1}, Landroid/media/WebVttTrack;->updateView(Ljava/util/Vector;)V

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v8, p0, Landroid/media/VobSubTrack;->mEventHandler:Landroid/os/Handler;

    if-eqz v8, :cond_0

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "_":I
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/SubtitleTrack$Cue;

    .local v1, "cue":Landroid/media/SubtitleTrack$Cue;
    move-object v7, v1

    .line 244
    check-cast v7, Landroid/media/TextTrackCue;

    .line 246
    .local v7, "ttc":Landroid/media/TextTrackCue;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 247
    .local v5, "parcel":Landroid/os/Parcel;
    const/16 v8, 0x66

    invoke-virtual {v5, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    const/4 v8, 0x7

    invoke-virtual {v5, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget-wide v8, v1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    long-to-int v8, v8

    invoke-virtual {v5, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    const/16 v8, 0x10

    invoke-virtual {v5, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 256
    iget-object v8, v7, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 257
    .local v4, "offset":I
    invoke-direct {p0, v4}, Landroid/media/VobSubTrack;->executeParser(I)[I

    move-result-object v6

    .line 258
    .local v6, "result":[I
    sget-boolean v8, Landroid/media/VobSubTrack;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string v8, "VobSubTrack"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "index: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", width: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", height: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_2
    const/16 v8, 0x11

    invoke-virtual {v5, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    const/4 v8, 0x1

    aget v8, v6, v8

    invoke-virtual {v5, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    const/4 v8, 0x2

    aget v8, v6, v8

    invoke-virtual {v5, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    const/4 v8, 0x0

    aget v8, v6, v8

    invoke-virtual {v5, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget-object v8, p0, Landroid/media/VobSubTrack;->mEventHandler:Landroid/os/Handler;

    const/16 v9, 0x63

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 265
    .local v3, "msg":Landroid/os/Message;
    iget-object v8, p0, Landroid/media/VobSubTrack;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 267
    .end local v1    # "cue":Landroid/media/SubtitleTrack$Cue;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "offset":I
    .end local v5    # "parcel":Landroid/os/Parcel;
    .end local v6    # "result":[I
    .end local v7    # "ttc":Landroid/media/TextTrackCue;
    :cond_3
    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    goto/16 :goto_0
.end method
