.class Landroid/media/SUBTrack;
.super Landroid/media/WebVttTrack;
.source "SUBRenderer.java"


# static fields
.field private static final DEBUG:Z

.field private static final KEY_LOCAL_SETTING:I = 0x66

.field private static final KEY_START_TIME:I = 0x7

.field private static final KEY_STRUCT_TEXT:I = 0x10

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field private static final TAG:Ljava/lang/String; = "SUBTrack"

.field private static final TYPE_FRAME:I = 0x1

.field private static final TYPE_TIME:I = 0x0

.field private static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field private final mEventHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    const-string v0, "SUBTrack"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/SUBTrack;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V
    .locals 1
    .param p1, "renderingWidget"    # Landroid/media/WebVttRenderingWidget;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/media/WebVttTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/SUBTrack;->mEventHandler:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Landroid/media/MediaFormat;)V
    .locals 1
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Landroid/media/WebVttTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    .line 87
    iput-object p1, p0, Landroid/media/SUBTrack;->mEventHandler:Landroid/os/Handler;

    .line 88
    return-void
.end method

.method private static parseMs(Ljava/lang/String;)J
    .locals 14
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 255
    const-string v8, ":"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 256
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

    .line 257
    .local v4, "minutes":J
    const-string v8, ":"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const-string v9, "\\."

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 258
    .local v6, "seconds":J
    const-string v8, ":"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const-string v9, "\\."

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 260
    .local v2, "millies":J
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v0

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x3c

    mul-long/2addr v10, v4

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    add-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v6

    add-long/2addr v8, v10

    add-long/2addr v8, v2

    return-wide v8
.end method


# virtual methods
.method protected onData(Landroid/media/SubtitleData;)V
    .locals 18
    .param p1, "data"    # Landroid/media/SubtitleData;

    .prologue
    .line 93
    :try_start_0
    new-instance v3, Landroid/media/TextTrackCue;

    invoke-direct {v3}, Landroid/media/TextTrackCue;-><init>()V

    .line 94
    .local v3, "cue":Landroid/media/TextTrackCue;
    invoke-virtual/range {p1 .. p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    iput-wide v14, v3, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Landroid/media/SubtitleData;->getDurationUs()J

    move-result-wide v16

    add-long v14, v14, v16

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    iput-wide v14, v3, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 98
    new-instance v11, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/media/SubtitleData;->getData()[B

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-direct {v11, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 99
    .local v11, "paragraph":Ljava/lang/String;
    const-string v13, "\\r?\\n"

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 100
    .local v10, "lines":[Ljava/lang/String;
    array-length v13, v10

    new-array v13, v13, [[Landroid/media/TextTrackCueSpan;

    iput-object v13, v3, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 102
    const/4 v5, 0x0

    .line 103
    .local v5, "i":I
    move-object v2, v10

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    move v6, v5

    .end local v5    # "i":I
    .local v6, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v9, v2, v7

    .line 104
    .local v9, "line":Ljava/lang/String;
    const/4 v13, 0x1

    new-array v12, v13, [Landroid/media/TextTrackCueSpan;

    const/4 v13, 0x0

    new-instance v14, Landroid/media/TextTrackCueSpan;

    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    invoke-direct {v14, v9, v0, v1}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    aput-object v14, v12, v13

    .line 107
    .local v12, "span":[Landroid/media/TextTrackCueSpan;
    iget-object v13, v3, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    aput-object v12, v13, v6

    .line 103
    add-int/lit8 v7, v7, 0x1

    move v6, v5

    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_0

    .line 110
    .end local v9    # "line":Ljava/lang/String;
    .end local v12    # "span":[Landroid/media/TextTrackCueSpan;
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/media/SUBTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "cue":Landroid/media/TextTrackCue;
    .end local v6    # "i":I
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v10    # "lines":[Ljava/lang/String;
    .end local v11    # "paragraph":Ljava/lang/String;
    :goto_1
    return-void

    .line 111
    :catch_0
    move-exception v4

    .line 112
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    const-string v13, "SUBTrack"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "subtitle data is not UTF-8 encoded: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onData([BZJ)V
    .locals 27
    .param p1, "data"    # [B
    .param p2, "eos"    # Z
    .param p3, "runID"    # J

    .prologue
    .line 120
    const/16 v21, -0x1

    .line 121
    .local v21, "sub_type":I
    const/16 v8, 0x1e

    .line 123
    .local v8, "framerate":I
    :try_start_0
    new-instance v16, Ljava/io/InputStreamReader;

    new-instance v22, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v23, "UTF-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 124
    .local v16, "r":Ljava/io/Reader;
    new-instance v4, Ljava/io/BufferedReader;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 127
    .local v4, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, "header":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 129
    sget-boolean v22, Landroid/media/SUBTrack;->DEBUG:Z

    if-eqz v22, :cond_1

    const-string v22, "SUBTrack"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_1
    const-string v22, "\\[.*\\]"

    move-object/from16 v0, v22

    invoke-static {v0, v9}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 132
    const-string v22, "SUBTrack"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "ignore file header infomation: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 203
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v9    # "header":Ljava/lang/String;
    .end local v16    # "r":Ljava/io/Reader;
    :catch_0
    move-exception v6

    .line 204
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    const-string v22, "SUBTrack"

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

    .line 209
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    :goto_1
    return-void

    .line 136
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "header":Ljava/lang/String;
    .restart local v16    # "r":Ljava/io/Reader;
    :cond_3
    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 137
    :try_start_1
    const-string v22, "^\\d.*,\\d.*"

    move-object/from16 v0, v22

    invoke-static {v0, v9}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 138
    const/16 v21, 0x0

    .line 144
    :cond_4
    :goto_2
    if-nez v21, :cond_a

    .line 145
    new-instance v5, Landroid/media/TextTrackCue;

    invoke-direct {v5}, Landroid/media/TextTrackCue;-><init>()V

    .line 146
    .local v5, "cue":Landroid/media/TextTrackCue;
    const-string v22, ","

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 147
    .local v19, "startEnd":[Ljava/lang/String;
    const/16 v22, 0x0

    aget-object v22, v19, v22

    invoke-static/range {v22 .. v22}, Landroid/media/SUBTrack;->parseMs(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 148
    const/16 v22, 0x1

    aget-object v22, v19, v22

    invoke-static/range {v22 .. v22}, Landroid/media/SUBTrack;->parseMs(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 149
    move-wide/from16 v0, p3

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mRunID:J

    .line 150
    sget-boolean v22, Landroid/media/SUBTrack;->DEBUG:Z

    if-eqz v22, :cond_5

    const-string v22, "SUBTrack"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Starttime = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-wide v0, v5, Landroid/media/TextTrackCue;->mStartTimeMs:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", Endtime = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-wide v0, v5, Landroid/media/TextTrackCue;->mEndTimeMs:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_5
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v15, "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .local v17, "s":Ljava/lang/String;
    if-eqz v17, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 155
    sget-boolean v22, Landroid/media/SUBTrack;->DEBUG:Z

    if-eqz v22, :cond_6

    const-string v22, "SUBTrack"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Text: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_6
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 205
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "cue":Landroid/media/TextTrackCue;
    .end local v9    # "header":Ljava/lang/String;
    .end local v15    # "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "r":Ljava/io/Reader;
    .end local v17    # "s":Ljava/lang/String;
    .end local v19    # "startEnd":[Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 207
    .local v13, "ioe":Ljava/io/IOException;
    const-string v22, "SUBTrack"

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 139
    .end local v13    # "ioe":Ljava/io/IOException;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "header":Ljava/lang/String;
    .restart local v16    # "r":Ljava/io/Reader;
    :cond_7
    :try_start_2
    const-string v22, "^\\{\\d+\\}\\{\\d+\\}.*"

    move-object/from16 v0, v22

    invoke-static {v0, v9}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 140
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 159
    .restart local v5    # "cue":Landroid/media/TextTrackCue;
    .restart local v15    # "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "s":Ljava/lang/String;
    .restart local v19    # "startEnd":[Ljava/lang/String;
    :cond_8
    const/4 v10, 0x0

    .line 160
    .local v10, "i":I
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [[Landroid/media/TextTrackCueSpan;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 161
    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v0, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .line 162
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    move v11, v10

    .end local v10    # "i":I
    .local v11, "i":I
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 163
    .local v14, "line":Ljava/lang/String;
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Landroid/media/TextTrackCueSpan;

    move-object/from16 v18, v0

    const/16 v22, 0x0

    new-instance v23, Landroid/media/TextTrackCueSpan;

    const-wide/16 v24, -0x1

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-direct {v0, v14, v1, v2}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    aput-object v23, v18, v22

    .line 166
    .local v18, "span":[Landroid/media/TextTrackCueSpan;
    iget-object v0, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v14, v22, v11

    .line 167
    iget-object v0, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    move-object/from16 v22, v0

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "i":I
    .restart local v10    # "i":I
    aput-object v18, v22, v11

    move v11, v10

    .line 168
    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto :goto_4

    .line 170
    .end local v14    # "line":Ljava/lang/String;
    .end local v18    # "span":[Landroid/media/TextTrackCueSpan;
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/SUBTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z

    goto/16 :goto_0

    .line 171
    .end local v5    # "cue":Landroid/media/TextTrackCue;
    .end local v11    # "i":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v15    # "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "s":Ljava/lang/String;
    .end local v19    # "startEnd":[Ljava/lang/String;
    :cond_a
    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 172
    new-instance v5, Landroid/media/TextTrackCue;

    invoke-direct {v5}, Landroid/media/TextTrackCue;-><init>()V

    .line 173
    .restart local v5    # "cue":Landroid/media/TextTrackCue;
    const-string v22, "\\}"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 174
    .restart local v19    # "startEnd":[Ljava/lang/String;
    const/16 v22, 0x0

    aget-object v22, v19, v22

    const-string v23, "\\{"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 175
    .local v20, "startFrameNo":I
    const/16 v22, 0x1

    aget-object v22, v19, v22

    const-string v23, "\\{"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 177
    .local v7, "endFrameNo":I
    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    div-int v22, v22, v8

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 178
    mul-int/lit16 v0, v7, 0x3e8

    move/from16 v22, v0

    div-int v22, v22, v8

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 179
    move-wide/from16 v0, p3

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mRunID:J

    .line 180
    sget-boolean v22, Landroid/media/SUBTrack;->DEBUG:Z

    if-eqz v22, :cond_b

    const-string v22, "SUBTrack"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Starttime = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-wide v0, v5, Landroid/media/TextTrackCue;->mStartTimeMs:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", Endtime = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-wide v0, v5, Landroid/media/TextTrackCue;->mEndTimeMs:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_b
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    aget-object v17, v19, v22

    .line 183
    .restart local v17    # "s":Ljava/lang/String;
    sget-boolean v22, Landroid/media/SUBTrack;->DEBUG:Z

    if-eqz v22, :cond_c

    const-string v22, "SUBTrack"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Text: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_c
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .restart local v15    # "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    const/4 v10, 0x0

    .line 189
    .restart local v10    # "i":I
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [[Landroid/media/TextTrackCueSpan;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 190
    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v0, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .line 191
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    move v11, v10

    .end local v10    # "i":I
    .restart local v11    # "i":I
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 192
    .restart local v14    # "line":Ljava/lang/String;
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Landroid/media/TextTrackCueSpan;

    move-object/from16 v18, v0

    const/16 v22, 0x0

    new-instance v23, Landroid/media/TextTrackCueSpan;

    const-wide/16 v24, -0x1

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-direct {v0, v14, v1, v2}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    aput-object v23, v18, v22

    .line 195
    .restart local v18    # "span":[Landroid/media/TextTrackCueSpan;
    iget-object v0, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v14, v22, v11

    .line 196
    iget-object v0, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    move-object/from16 v22, v0

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "i":I
    .restart local v10    # "i":I
    aput-object v18, v22, v11

    move v11, v10

    .line 197
    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto :goto_5

    .line 199
    .end local v14    # "line":Ljava/lang/String;
    .end local v18    # "span":[Landroid/media/TextTrackCueSpan;
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/SUBTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public updateView(Ljava/util/Vector;)V
    .locals 19
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
    .line 213
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/media/SUBTrack;->getRenderingWidget()Landroid/media/WebVttRenderingWidget;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 214
    invoke-super/range {p0 .. p1}, Landroid/media/WebVttTrack;->updateView(Ljava/util/Vector;)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/SUBTrack;->mEventHandler:Landroid/os/Handler;

    if-eqz v14, :cond_0

    .line 222
    const/4 v2, 0x0

    .line 224
    .local v2, "_":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 225
    sget-boolean v14, Landroid/media/SUBTrack;->DEBUG:Z

    if-eqz v14, :cond_2

    const-string v14, "SUBTrack"

    const-string v15, "activeCues is Empty"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/SUBTrack;->mEventHandler:Landroid/os/Handler;

    const/16 v15, 0x63

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 227
    .local v10, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/SUBTrack;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v14, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 230
    .end local v10    # "msg":Landroid/os/Message;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/SubtitleTrack$Cue;

    .local v5, "cue":Landroid/media/SubtitleTrack$Cue;
    move-object v13, v5

    .line 231
    check-cast v13, Landroid/media/TextTrackCue;

    .line 233
    .local v13, "ttc":Landroid/media/TextTrackCue;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    .line 234
    .local v11, "parcel":Landroid/os/Parcel;
    const/16 v14, 0x66

    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    const/4 v14, 0x7

    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget-wide v14, v5, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    long-to-int v14, v14

    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    const/16 v14, 0x10

    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .local v12, "sb":Ljava/lang/StringBuilder;
    iget-object v3, v13, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .local v3, "arr$":[Ljava/lang/String;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v8, :cond_4

    aget-object v9, v3, v7

    .line 241
    .local v9, "line":Ljava/lang/String;
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 244
    .end local v9    # "line":Ljava/lang/String;
    :cond_4
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 245
    .local v4, "buf":[B
    array-length v14, v4

    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 248
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/SUBTrack;->mEventHandler:Landroid/os/Handler;

    const/16 v15, 0x63

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v15, v0, v1, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 249
    .restart local v10    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/SUBTrack;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v14, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 251
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "buf":[B
    .end local v5    # "cue":Landroid/media/SubtitleTrack$Cue;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v10    # "msg":Landroid/os/Message;
    .end local v11    # "parcel":Landroid/os/Parcel;
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    .end local v13    # "ttc":Landroid/media/TextTrackCue;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->clear()V

    goto/16 :goto_0
.end method
