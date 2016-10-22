.class public Lcom/mediatek/aee/ExceptionLog;
.super Ljava/lang/Object;
.source "ExceptionLog.java"


# static fields
.field public static final AEE_EXCEPTION_JNI:B = 0x1t

.field public static final AEE_WARNING_JNI:B = 0x0t

.field public static final TAG:Ljava/lang/String; = "AES"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    const-string v0, "AES"

    const-string v1, "load Exception Log jni"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string/jumbo v0, "mediatek_exceptionlog"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native SFMatter(JJ)J
.end method

.method private static native WDTMatter(J)V
.end method

.method private static getAllThreadStackTraces()Ljava/lang/String;
    .locals 16

    .prologue
    .line 155
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v10

    .line 156
    .local v10, "st":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    new-instance v12, Ljava/io/StringWriter;

    invoke-direct {v12}, Ljava/io/StringWriter;-><init>()V

    .line 160
    .local v12, "traces":Ljava/io/Writer;
    :try_start_0
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 161
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/StackTraceElement;

    .line 162
    .local v3, "el":[Ljava/lang/StackTraceElement;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Thread;

    .line 164
    .local v11, "th":Ljava/lang/Thread;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/lang/Thread;->isDaemon()Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "daemon"

    :goto_1
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " prio="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/Thread;->getPriority()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " Thread id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/Thread;->getId()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 169
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_2
    if-ge v6, v7, :cond_1

    aget-object v8, v0, v6

    .line 170
    .local v8, "line":Ljava/lang/StackTraceElement;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\t"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 169
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 164
    .end local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "line":Ljava/lang/StackTraceElement;
    :cond_0
    const-string v13, ""

    goto :goto_1

    .line 172
    .restart local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    :cond_1
    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 175
    .end local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    .end local v3    # "el":[Ljava/lang/StackTraceElement;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v11    # "th":Ljava/lang/Thread;
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Ljava/io/IOException;
    const-string v9, "IOException"

    .line 181
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3
    return-object v9

    .line 174
    :cond_2
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .local v9, "ret_traces":Ljava/lang/String;
    goto :goto_3

    .line 177
    .end local v9    # "ret_traces":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 178
    .local v4, "err":Ljava/lang/OutOfMemoryError;
    const-string v9, "java.lang.OutOfMemoryError"

    goto :goto_3
.end method

.method private static native getNativeExceptionPidListImpl([I)Z
.end method

.method private static getThreadStackTrace()Ljava/lang/String;
    .locals 14

    .prologue
    .line 125
    new-instance v9, Ljava/io/StringWriter;

    invoke-direct {v9}, Ljava/io/StringWriter;-><init>()V

    .line 129
    .local v9, "traces":Ljava/io/Writer;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    .line 130
    .local v8, "th":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    .line 132
    .local v7, "st":[Ljava/lang/StackTraceElement;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/lang/Thread;->isDaemon()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "daemon"

    :goto_0
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " prio="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Thread;->getPriority()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Thread id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 136
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 137
    .local v5, "line":Ljava/lang/StackTraceElement;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 136
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 132
    .end local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "line":Ljava/lang/StackTraceElement;
    :cond_0
    const-string v10, ""

    goto :goto_0

    .line 139
    .restart local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 147
    .end local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v7    # "st":[Ljava/lang/StackTraceElement;
    .end local v8    # "th":Ljava/lang/Thread;
    :goto_2
    return-object v6

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "IOException"

    goto :goto_2

    .line 143
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 144
    .local v2, "err":Ljava/lang/OutOfMemoryError;
    const-string v6, "java.lang.OutOfMemoryError"

    goto :goto_2
.end method

.method private static native isExceptionImpl()Z
.end method

.method private static native isNativeExceptionImpl(I)Z
.end method

.method private static native report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method private static native systemreportImpl(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public SFMatterJava(JJ)J
    .locals 3
    .param p1, "setorget"    # J
    .param p3, "lParam"    # J

    .prologue
    .line 187
    invoke-static {p1, p2, p3, p4}, Lcom/mediatek/aee/ExceptionLog;->SFMatter(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public WDTMatterJava(J)V
    .locals 1
    .param p1, "lParam"    # J

    .prologue
    .line 184
    invoke-static {p1, p2}, Lcom/mediatek/aee/ExceptionLog;->WDTMatter(J)V

    .line 185
    return-void
.end method

.method public getNativeExceptionPidList([I)Z
    .locals 1
    .param p1, "pidList"    # [I

    .prologue
    .line 109
    invoke-static {p1}, Lcom/mediatek/aee/ExceptionLog;->getNativeExceptionPidListImpl([I)Z

    move-result v0

    return v0
.end method

.method public handle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;
    .param p3, "pid"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string v5, "AES"

    const-string v7, "Exception Log handling..."

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v3, ""

    .line 75
    .local v3, "proc":Ljava/lang/String;
    const-string v4, ""

    .line 76
    .local v4, "pkgs":Ljava/lang/String;
    const-string v20, ""

    .line 77
    .local v20, "traceback":Ljava/lang/String;
    const-string v12, ""

    .line 78
    .local v12, "cause":Ljava/lang/String;
    const-string v6, ""

    .line 79
    .local v6, "detail":Ljava/lang/String;
    const-wide/16 v8, 0x0

    .line 81
    .local v8, "lpid":J
    const-string v5, "\n+"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 82
    .local v19, "splitInfo":[Ljava/lang/String;
    const-string v10, "^Process:\\s+(.*)"

    .line 83
    .local v10, "PROC_REGEX":Ljava/lang/String;
    const-string v2, "^Package:\\s+(.*)"

    .line 84
    .local v2, "PKG_REGEX":Ljava/lang/String;
    const-string v5, "^Process:\\s+(.*)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v17

    .line 85
    .local v17, "procMatcher":Ljava/util/regex/Pattern;
    const-string v5, "^Package:\\s+(.*)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v16

    .line 88
    .local v16, "pkgMatcher":Ljava/util/regex/Pattern;
    move-object/from16 v11, v19

    .local v11, "arr$":[Ljava/lang/String;
    array-length v14, v11

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_0
    if-ge v13, v14, :cond_2

    aget-object v18, v11, v13

    .line 89
    .local v18, "s":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 90
    .local v15, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 91
    :cond_0
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 92
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v15, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 88
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 95
    .end local v15    # "m":Ljava/util/regex/Matcher;
    .end local v18    # "s":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Backtrace of all threads:\n\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/mediatek/aee/ExceptionLog;->getAllThreadStackTraces()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 96
    const-string v5, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 97
    invoke-static/range {p3 .. p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    :cond_3
    move-object/from16 v5, p2

    move-object/from16 v7, p1

    .line 99
    invoke-static/range {v3 .. v9}, Lcom/mediatek/aee/ExceptionLog;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 100
    return-void
.end method

.method public isException()Z
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lcom/mediatek/aee/ExceptionLog;->isExceptionImpl()Z

    move-result v0

    return v0
.end method

.method public isNativeException(I)Z
    .locals 1
    .param p1, "pid"    # I

    .prologue
    .line 113
    invoke-static {p1}, Lcom/mediatek/aee/ExceptionLog;->isNativeExceptionImpl(I)Z

    move-result v0

    return v0
.end method

.method public systemreport(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "Type"    # B
    .param p2, "Module"    # Ljava/lang/String;
    .param p3, "Msg"    # Ljava/lang/String;
    .param p4, "Path"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {}, Lcom/mediatek/aee/ExceptionLog;->getThreadStackTrace()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "Backtrace":Ljava/lang/String;
    invoke-static {p1, p2, v0, p3, p4}, Lcom/mediatek/aee/ExceptionLog;->systemreportImpl(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method
