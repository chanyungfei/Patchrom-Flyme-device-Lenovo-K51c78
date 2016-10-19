.class Landroid/media/SMITrack;
.super Landroid/media/WebVttTrack;
.source "SMIRenderer.java"


# static fields
.field private static final KEY_LOCAL_SETTING:I = 0x66

.field private static final KEY_START_TIME:I = 0x7

.field private static final KEY_STRUCT_TEXT:I = 0x10

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field private static final TAG:Ljava/lang/String; = "SMITrack"


# instance fields
.field private final mEventHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V
    .locals 1
    .param p1, "renderingWidget"    # Landroid/media/WebVttRenderingWidget;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/media/WebVttTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/SMITrack;->mEventHandler:Landroid/os/Handler;

    .line 81
    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Landroid/media/MediaFormat;)V
    .locals 1
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Landroid/media/WebVttTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    .line 85
    iput-object p1, p0, Landroid/media/SMITrack;->mEventHandler:Landroid/os/Handler;

    .line 86
    return-void
.end method


# virtual methods
.method protected onData(Landroid/media/SubtitleData;)V
    .locals 18
    .param p1, "data"    # Landroid/media/SubtitleData;

    .prologue
    .line 91
    :try_start_0
    new-instance v3, Landroid/media/TextTrackCue;

    invoke-direct {v3}, Landroid/media/TextTrackCue;-><init>()V

    .line 92
    .local v3, "cue":Landroid/media/TextTrackCue;
    invoke-virtual/range {p1 .. p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    iput-wide v14, v3, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Landroid/media/SubtitleData;->getDurationUs()J

    move-result-wide v16

    add-long v14, v14, v16

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    iput-wide v14, v3, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 96
    new-instance v11, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/media/SubtitleData;->getData()[B

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-direct {v11, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 97
    .local v11, "paragraph":Ljava/lang/String;
    const-string v13, "\\r?\\n"

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 98
    .local v10, "lines":[Ljava/lang/String;
    array-length v13, v10

    new-array v13, v13, [[Landroid/media/TextTrackCueSpan;

    iput-object v13, v3, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 100
    const/4 v5, 0x0

    .line 101
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

    .line 102
    .local v9, "line":Ljava/lang/String;
    const/4 v13, 0x1

    new-array v12, v13, [Landroid/media/TextTrackCueSpan;

    const/4 v13, 0x0

    new-instance v14, Landroid/media/TextTrackCueSpan;

    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    invoke-direct {v14, v9, v0, v1}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    aput-object v14, v12, v13

    .line 105
    .local v12, "span":[Landroid/media/TextTrackCueSpan;
    iget-object v13, v3, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    aput-object v12, v13, v6

    .line 101
    add-int/lit8 v7, v7, 0x1

    move v6, v5

    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_0

    .line 108
    .end local v9    # "line":Ljava/lang/String;
    .end local v12    # "span":[Landroid/media/TextTrackCueSpan;
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/media/SMITrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "cue":Landroid/media/TextTrackCue;
    .end local v6    # "i":I
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v10    # "lines":[Ljava/lang/String;
    .end local v11    # "paragraph":Ljava/lang/String;
    :goto_1
    return-void

    .line 109
    :catch_0
    move-exception v4

    .line 110
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    const-string v13, "SMITrack"

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
    .locals 36
    .param p1, "data"    # [B
    .param p2, "eos"    # Z
    .param p3, "runID"    # J

    .prologue
    .line 116
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v17, "paragraph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v26, ""

    .line 118
    .local v26, "stringData":Ljava/lang/String;
    const/16 v24, 0x0

    .line 119
    .local v24, "startFlag":Z
    const/16 v25, 0x0

    .line 120
    .local v25, "started":Z
    const/16 v28, 0x0

    .line 121
    .local v28, "tmpStartFlag":Z
    const/16 v29, 0x0

    .line 122
    .local v29, "tmpStarted":Z
    const-string v20, ""

    .line 123
    .local v20, "smiTemp":Ljava/lang/String;
    const-string v31, "<SYNC Start=(.*?)><P Class=(.*?)>"

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v18

    .line 125
    .local v18, "patternstart":Ljava/util/regex/Pattern;
    const/4 v14, 0x0

    .line 126
    .local v14, "matcher":Ljava/util/regex/Matcher;
    const-string v31, "><P Class=(.*?)>"

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v27

    .line 127
    .local v27, "time":Ljava/util/regex/Pattern;
    const-string v31, "<SYNC Start=//d+><P Class=//w+>?"

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v21

    .line 129
    .local v21, "spaceP":Ljava/util/regex/Pattern;
    const/16 v22, 0x0

    .line 132
    .local v22, "spacematcher":Ljava/util/regex/Matcher;
    :try_start_0
    new-instance v19, Ljava/io/InputStreamReader;

    new-instance v31, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v32, "UTF-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 133
    .local v19, "r":Ljava/io/Reader;
    new-instance v4, Ljava/io/BufferedReader;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 134
    .local v4, "br":Ljava/io/BufferedReader;
    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    .line 135
    .local v30, "tmpTS":Ljava/lang/Integer;
    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 138
    .local v16, "nowTS":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_4

    .line 139
    const/4 v7, 0x0

    .line 140
    .local v7, "findFirstContent":Z
    const/4 v8, 0x0

    .line 141
    .local v8, "findFirstTS":Z
    new-instance v5, Landroid/media/TextTrackCue;

    invoke-direct {v5}, Landroid/media/TextTrackCue;-><init>()V

    .line 142
    .local v5, "cue":Landroid/media/TextTrackCue;
    if-nez v29, :cond_1

    .line 144
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 145
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v31

    if-eqz v31, :cond_1

    .line 146
    const/16 v29, 0x1

    .line 147
    const/16 v28, 0x1

    .line 150
    :cond_1
    if-eqz v28, :cond_0

    .line 151
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 152
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v31

    if-eqz v31, :cond_8

    .line 153
    const-string v31, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_2

    .line 155
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    const-string v31, "SMITrack"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "first subtitle:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v20, ""

    .line 158
    const/4 v7, 0x1

    .line 160
    :cond_2
    const-string v31, "="

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v31

    add-int/lit8 v31, v31, 0x1

    const-string v32, ">"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v32

    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    .line 162
    const/4 v8, 0x1

    .line 163
    const-string v31, "SMITrack"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "first timestamp:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v22

    .line 165
    invoke-virtual/range {v22 .. v22}, Ljava/util/regex/Matcher;->find()Z

    move-result v31

    if-eqz v31, :cond_3

    .line 166
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "  "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 171
    :cond_3
    :goto_0
    if-eqz v7, :cond_0

    if-eqz v7, :cond_0

    .line 177
    .end local v5    # "cue":Landroid/media/TextTrackCue;
    .end local v7    # "findFirstContent":Z
    .end local v8    # "findFirstTS":Z
    :cond_4
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_c

    .line 178
    new-instance v5, Landroid/media/TextTrackCue;

    invoke-direct {v5}, Landroid/media/TextTrackCue;-><init>()V

    .line 179
    .restart local v5    # "cue":Landroid/media/TextTrackCue;
    if-nez v25, :cond_5

    .line 181
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 182
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v31

    if-eqz v31, :cond_5

    .line 183
    const/16 v25, 0x1

    .line 184
    const/16 v24, 0x1

    .line 188
    :cond_5
    const/4 v15, 0x0

    .line 189
    .local v15, "needInsertSmi":Z
    if-eqz v24, :cond_7

    .line 191
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 192
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v31

    if-eqz v31, :cond_9

    .line 193
    const-string v31, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_6

    .line 194
    const/4 v15, 0x1

    .line 196
    :cond_6
    const-string v31, "="

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v31

    add-int/lit8 v31, v31, 0x1

    const-string v32, ">"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v32

    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 198
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v22

    .line 199
    invoke-virtual/range {v22 .. v22}, Ljava/util/regex/Matcher;->find()Z

    move-result v31

    if-eqz v31, :cond_7

    .line 200
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "  "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 207
    :cond_7
    :goto_2
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 208
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 209
    move-object/from16 v30, v16

    .line 210
    const/4 v9, 0x0

    .line 211
    .local v9, "i":I
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    new-array v0, v0, [[Landroid/media/TextTrackCueSpan;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iput-object v0, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 212
    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v0, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .line 213
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    move v10, v9

    .end local v9    # "i":I
    .local v10, "i":I
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 214
    .local v13, "line":Ljava/lang/String;
    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Landroid/media/TextTrackCueSpan;

    move-object/from16 v23, v0

    const/16 v31, 0x0

    new-instance v32, Landroid/media/TextTrackCueSpan;

    const-wide/16 v34, -0x1

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-direct {v0, v13, v1, v2}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    aput-object v32, v23, v31

    .line 217
    .local v23, "span":[Landroid/media/TextTrackCueSpan;
    iget-object v0, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    move-object/from16 v31, v0

    aput-object v13, v31, v10

    .line 218
    iget-object v0, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    move-object/from16 v31, v0

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "i":I
    .restart local v9    # "i":I
    aput-object v23, v31, v10

    move v10, v9

    .line 219
    .end local v9    # "i":I
    .restart local v10    # "i":I
    goto :goto_3

    .line 169
    .end local v10    # "i":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "line":Ljava/lang/String;
    .end local v15    # "needInsertSmi":Z
    .end local v23    # "span":[Landroid/media/TextTrackCueSpan;
    .restart local v7    # "findFirstContent":Z
    .restart local v8    # "findFirstTS":Z
    :cond_8
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static/range {v26 .. v26}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_0

    .line 203
    .end local v7    # "findFirstContent":Z
    .end local v8    # "findFirstTS":Z
    .restart local v15    # "needInsertSmi":Z
    :cond_9
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static/range {v26 .. v26}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_2

    .line 221
    .restart local v10    # "i":I
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_a
    if-eqz v15, :cond_b

    .line 222
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 223
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    const-string v20, ""

    .line 227
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/SMITrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 247
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "cue":Landroid/media/TextTrackCue;
    .end local v10    # "i":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v15    # "needInsertSmi":Z
    .end local v16    # "nowTS":Ljava/lang/Integer;
    .end local v19    # "r":Ljava/io/Reader;
    .end local v30    # "tmpTS":Ljava/lang/Integer;
    :catch_0
    move-exception v6

    .line 248
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    const-string v31, "SMITrack"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "subtitle data is not UTF-8 encoded: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_4
    return-void

    .line 231
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "nowTS":Ljava/lang/Integer;
    .restart local v19    # "r":Ljava/io/Reader;
    .restart local v30    # "tmpTS":Ljava/lang/Integer;
    :cond_c
    :try_start_1
    new-instance v5, Landroid/media/TextTrackCue;

    invoke-direct {v5}, Landroid/media/TextTrackCue;-><init>()V

    .line 232
    .restart local v5    # "cue":Landroid/media/TextTrackCue;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 233
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    iput-wide v0, v5, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 234
    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    .line 235
    const/4 v9, 0x0

    .line 236
    .restart local v9    # "i":I
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    new-array v0, v0, [[Landroid/media/TextTrackCueSpan;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iput-object v0, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 237
    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v0, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .line 238
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    move v10, v9

    .end local v9    # "i":I
    .restart local v10    # "i":I
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 239
    .restart local v13    # "line":Ljava/lang/String;
    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Landroid/media/TextTrackCueSpan;

    move-object/from16 v23, v0

    const/16 v31, 0x0

    new-instance v32, Landroid/media/TextTrackCueSpan;

    const-wide/16 v34, -0x1

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-direct {v0, v13, v1, v2}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    aput-object v32, v23, v31

    .line 242
    .restart local v23    # "span":[Landroid/media/TextTrackCueSpan;
    iget-object v0, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    move-object/from16 v31, v0

    aput-object v13, v31, v10

    .line 243
    iget-object v0, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    move-object/from16 v31, v0

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "i":I
    .restart local v9    # "i":I
    aput-object v23, v31, v10

    move v10, v9

    .line 244
    .end local v9    # "i":I
    .restart local v10    # "i":I
    goto :goto_5

    .line 245
    .end local v13    # "line":Ljava/lang/String;
    .end local v23    # "span":[Landroid/media/TextTrackCueSpan;
    :cond_d
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 246
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/SMITrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .line 249
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "cue":Landroid/media/TextTrackCue;
    .end local v10    # "i":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v16    # "nowTS":Ljava/lang/Integer;
    .end local v19    # "r":Ljava/io/Reader;
    .end local v30    # "tmpTS":Ljava/lang/Integer;
    :catch_1
    move-exception v12

    .line 251
    .local v12, "ioe":Ljava/io/IOException;
    const-string v31, "SMITrack"

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4
.end method

.method public updateView(Ljava/util/Vector;)V
    .locals 18
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
    .line 257
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/media/SMITrack;->getRenderingWidget()Landroid/media/WebVttRenderingWidget;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 258
    invoke-super/range {p0 .. p1}, Landroid/media/WebVttTrack;->updateView(Ljava/util/Vector;)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/SMITrack;->mEventHandler:Landroid/os/Handler;

    if-eqz v14, :cond_0

    .line 266
    const/4 v2, 0x0

    .line 267
    .local v2, "_":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/SubtitleTrack$Cue;

    .local v5, "cue":Landroid/media/SubtitleTrack$Cue;
    move-object v13, v5

    .line 268
    check-cast v13, Landroid/media/TextTrackCue;

    .line 270
    .local v13, "ttc":Landroid/media/TextTrackCue;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    .line 271
    .local v11, "parcel":Landroid/os/Parcel;
    const/16 v14, 0x66

    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    const/4 v14, 0x7

    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget-wide v14, v5, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    long-to-int v14, v14

    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    const/16 v14, 0x10

    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .local v12, "sb":Ljava/lang/StringBuilder;
    iget-object v3, v13, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .local v3, "arr$":[Ljava/lang/String;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v8, :cond_2

    aget-object v9, v3, v7

    .line 278
    .local v9, "line":Ljava/lang/String;
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 281
    .end local v9    # "line":Ljava/lang/String;
    :cond_2
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 282
    .local v4, "buf":[B
    array-length v14, v4

    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 285
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/SMITrack;->mEventHandler:Landroid/os/Handler;

    const/16 v15, 0x63

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v15, v0, v1, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 286
    .local v10, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/SMITrack;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v14, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 288
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "buf":[B
    .end local v5    # "cue":Landroid/media/SubtitleTrack$Cue;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v10    # "msg":Landroid/os/Message;
    .end local v11    # "parcel":Landroid/os/Parcel;
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    .end local v13    # "ttc":Landroid/media/TextTrackCue;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->clear()V

    goto :goto_0
.end method
