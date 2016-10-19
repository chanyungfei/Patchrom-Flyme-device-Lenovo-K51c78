.class Landroid/media/MPLTrack;
.super Landroid/media/WebVttTrack;
.source "MPLRenderer.java"


# static fields
.field private static final DEBUG:Z

.field private static final KEY_LOCAL_SETTING:I = 0x66

.field private static final KEY_START_TIME:I = 0x7

.field private static final KEY_STRUCT_TEXT:I = 0x10

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field private static final TAG:Ljava/lang/String; = "MPLTrack"


# instance fields
.field private final mEventHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    const-string v0, "MPLTrack"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/MPLTrack;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V
    .locals 1
    .param p1, "renderingWidget"    # Landroid/media/WebVttRenderingWidget;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/media/WebVttTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MPLTrack;->mEventHandler:Landroid/os/Handler;

    .line 80
    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Landroid/media/MediaFormat;)V
    .locals 1
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Landroid/media/WebVttTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    .line 84
    iput-object p1, p0, Landroid/media/MPLTrack;->mEventHandler:Landroid/os/Handler;

    .line 85
    return-void
.end method


# virtual methods
.method protected onData(Landroid/media/SubtitleData;)V
    .locals 18
    .param p1, "data"    # Landroid/media/SubtitleData;

    .prologue
    .line 90
    :try_start_0
    new-instance v3, Landroid/media/TextTrackCue;

    invoke-direct {v3}, Landroid/media/TextTrackCue;-><init>()V

    .line 91
    .local v3, "cue":Landroid/media/TextTrackCue;
    invoke-virtual/range {p1 .. p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    iput-wide v14, v3, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 92
    invoke-virtual/range {p1 .. p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Landroid/media/SubtitleData;->getDurationUs()J

    move-result-wide v16

    add-long v14, v14, v16

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    iput-wide v14, v3, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 95
    new-instance v11, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/media/SubtitleData;->getData()[B

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-direct {v11, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 96
    .local v11, "paragraph":Ljava/lang/String;
    const-string v13, "\\r?\\n"

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 97
    .local v10, "lines":[Ljava/lang/String;
    array-length v13, v10

    new-array v13, v13, [[Landroid/media/TextTrackCueSpan;

    iput-object v13, v3, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 99
    const/4 v5, 0x0

    .line 100
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

    .line 101
    .local v9, "line":Ljava/lang/String;
    const/4 v13, 0x1

    new-array v12, v13, [Landroid/media/TextTrackCueSpan;

    const/4 v13, 0x0

    new-instance v14, Landroid/media/TextTrackCueSpan;

    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    invoke-direct {v14, v9, v0, v1}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    aput-object v14, v12, v13

    .line 104
    .local v12, "span":[Landroid/media/TextTrackCueSpan;
    iget-object v13, v3, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    aput-object v12, v13, v6

    .line 100
    add-int/lit8 v7, v7, 0x1

    move v6, v5

    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_0

    .line 107
    .end local v9    # "line":Ljava/lang/String;
    .end local v12    # "span":[Landroid/media/TextTrackCueSpan;
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/media/MPLTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "cue":Landroid/media/TextTrackCue;
    .end local v6    # "i":I
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v10    # "lines":[Ljava/lang/String;
    .end local v11    # "paragraph":Ljava/lang/String;
    :goto_1
    return-void

    .line 108
    :catch_0
    move-exception v4

    .line 109
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    const-string v13, "MPLTrack"

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
    .line 117
    const/16 v8, 0x1e

    .line 118
    .local v8, "framerate":I
    :try_start_0
    new-instance v16, Ljava/io/InputStreamReader;

    new-instance v21, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v22, "UTF-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 119
    .local v16, "r":Ljava/io/Reader;
    new-instance v4, Ljava/io/BufferedReader;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 122
    .local v4, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, "header":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 124
    sget-boolean v21, Landroid/media/MPLTrack;->DEBUG:Z

    if-eqz v21, :cond_1

    const-string v21, "MPLTrack"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    const-string v21, "\\[.*\\]"

    move-object/from16 v0, v21

    invoke-static {v0, v9}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 127
    const-string v21, "MPLTrack"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ignore file header infomation: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 163
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v9    # "header":Ljava/lang/String;
    .end local v16    # "r":Ljava/io/Reader;
    :catch_0
    move-exception v6

    .line 164
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    const-string v21, "MPLTrack"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "subtitle data is not UTF-8 encoded: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    :goto_1
    return-void

    .line 131
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "header":Ljava/lang/String;
    .restart local v16    # "r":Ljava/io/Reader;
    :cond_3
    :try_start_1
    const-string v21, "^\\[\\d+\\]\\[\\d+\\].*"

    move-object/from16 v0, v21

    invoke-static {v0, v9}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 132
    new-instance v5, Landroid/media/TextTrackCue;

    invoke-direct {v5}, Landroid/media/TextTrackCue;-><init>()V

    .line 133
    .local v5, "cue":Landroid/media/TextTrackCue;
    const-string v21, "\\]"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 134
    .local v19, "startEnd":[Ljava/lang/String;
    const/16 v21, 0x0

    aget-object v21, v19, v21

    const-string v22, "\\["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 135
    .local v20, "startFrameNo":I
    const/16 v21, 0x1

    aget-object v21, v19, v21

    const-string v22, "\\["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 137
    .local v7, "endFrameNo":I
    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v21, v0

    div-int v21, v21, v8

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 138
    mul-int/lit16 v0, v7, 0x3e8

    move/from16 v21, v0

    div-int v21, v21, v8

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 139
    move-wide/from16 v0, p3

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mRunID:J

    .line 140
    sget-boolean v21, Landroid/media/MPLTrack;->DEBUG:Z

    if-eqz v21, :cond_4

    const-string v21, "MPLTrack"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Starttime = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-wide v0, v5, Landroid/media/TextTrackCue;->mStartTimeMs:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", Endtime = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-wide v0, v5, Landroid/media/TextTrackCue;->mEndTimeMs:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_4
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-object v17, v19, v21

    .line 143
    .local v17, "s":Ljava/lang/String;
    sget-boolean v21, Landroid/media/MPLTrack;->DEBUG:Z

    if-eqz v21, :cond_5

    const-string v21, "MPLTrack"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Text: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_5
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v15, "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    const/4 v10, 0x0

    .line 149
    .local v10, "i":I
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [[Landroid/media/TextTrackCueSpan;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 150
    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v0, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .line 151
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    move v11, v10

    .end local v10    # "i":I
    .local v11, "i":I
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 152
    .local v14, "line":Ljava/lang/String;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Landroid/media/TextTrackCueSpan;

    move-object/from16 v18, v0

    const/16 v21, 0x0

    new-instance v22, Landroid/media/TextTrackCueSpan;

    const-wide/16 v24, -0x1

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-direct {v0, v14, v1, v2}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    aput-object v22, v18, v21

    .line 155
    .local v18, "span":[Landroid/media/TextTrackCueSpan;
    iget-object v0, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v14, v21, v11

    .line 156
    iget-object v0, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    move-object/from16 v21, v0

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "i":I
    .restart local v10    # "i":I
    aput-object v18, v21, v11

    move v11, v10

    .line 157
    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto :goto_2

    .line 159
    .end local v14    # "line":Ljava/lang/String;
    .end local v18    # "span":[Landroid/media/TextTrackCueSpan;
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/MPLTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 165
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "cue":Landroid/media/TextTrackCue;
    .end local v7    # "endFrameNo":I
    .end local v9    # "header":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v15    # "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "r":Ljava/io/Reader;
    .end local v17    # "s":Ljava/lang/String;
    .end local v19    # "startEnd":[Ljava/lang/String;
    .end local v20    # "startFrameNo":I
    :catch_1
    move-exception v13

    .line 167
    .local v13, "ioe":Ljava/io/IOException;
    const-string v21, "MPLTrack"

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
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
    .line 173
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/media/MPLTrack;->getRenderingWidget()Landroid/media/WebVttRenderingWidget;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 174
    invoke-super/range {p0 .. p1}, Landroid/media/WebVttTrack;->updateView(Ljava/util/Vector;)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MPLTrack;->mEventHandler:Landroid/os/Handler;

    if-eqz v14, :cond_0

    .line 182
    const/4 v2, 0x0

    .line 184
    .local v2, "_":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 185
    sget-boolean v14, Landroid/media/MPLTrack;->DEBUG:Z

    if-eqz v14, :cond_2

    const-string v14, "MPLTrack"

    const-string v15, "activeCues is Empty"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MPLTrack;->mEventHandler:Landroid/os/Handler;

    const/16 v15, 0x63

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 187
    .local v10, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MPLTrack;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v14, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 190
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

    .line 191
    check-cast v13, Landroid/media/TextTrackCue;

    .line 193
    .local v13, "ttc":Landroid/media/TextTrackCue;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    .line 194
    .local v11, "parcel":Landroid/os/Parcel;
    const/16 v14, 0x66

    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v14, 0x7

    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-wide v14, v5, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    long-to-int v14, v14

    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    const/16 v14, 0x10

    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
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

    .line 201
    .local v9, "line":Ljava/lang/String;
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 204
    .end local v9    # "line":Ljava/lang/String;
    :cond_4
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 205
    .local v4, "buf":[B
    array-length v14, v4

    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 208
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MPLTrack;->mEventHandler:Landroid/os/Handler;

    const/16 v15, 0x63

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v15, v0, v1, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 209
    .restart local v10    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MPLTrack;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v14, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 211
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
