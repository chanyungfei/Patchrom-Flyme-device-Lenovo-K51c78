.class public Lcom/lenovo/settings/storage/SizeUtil;
.super Ljava/lang/Object;
.source "SizeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/storage/SizeUtil$RAMSize;,
        Lcom/lenovo/settings/storage/SizeUtil$EMMC;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SizeUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    return-void
.end method

.method public static formatSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "size"    # J

    .prologue
    .line 155
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEmmcSize()J
    .locals 16

    .prologue
    const-wide/16 v12, 0x0

    .line 50
    const-string v11, "cat /proc/partitions"

    invoke-static {v11}, Lcom/lenovo/settings/storage/SizeUtil;->shellRunCmd(Ljava/lang/String;)Lcom/lenovo/settings/storage/ShellCmdResult;

    move-result-object v7

    .line 51
    .local v7, "result":Lcom/lenovo/settings/storage/ShellCmdResult;
    if-eqz v7, :cond_0

    iget v11, v7, Lcom/lenovo/settings/storage/ShellCmdResult;->exitValue:I

    if-nez v11, :cond_0

    iget-object v11, v7, Lcom/lenovo/settings/storage/ShellCmdResult;->stdout:Ljava/lang/String;

    if-nez v11, :cond_1

    .line 52
    :cond_0
    const-string v11, "SizeUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "get emmc total size fail, run cmd fail, result: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :goto_0
    return-wide v12

    .line 56
    :cond_1
    const-wide/16 v8, 0x0

    .line 57
    .local v8, "size":J
    iget-object v11, v7, Lcom/lenovo/settings/storage/ShellCmdResult;->stdout:Ljava/lang/String;

    const-string v14, "\n"

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, "lines":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v5, v0, v3

    .line 59
    .local v5, "line":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v14, "\\s+"

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 60
    .local v10, "split":[Ljava/lang/String;
    array-length v11, v10

    const/4 v14, 0x4

    if-eq v11, v14, :cond_3

    .line 58
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 61
    :cond_3
    const/4 v11, 0x0

    aget-object v11, v10, v11

    const-string v14, "179"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    aget-object v11, v10, v11

    const-string v14, "0"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 63
    const/4 v11, 0x2

    :try_start_0
    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 72
    .end local v5    # "line":Ljava/lang/String;
    .end local v10    # "split":[Ljava/lang/String;
    :cond_4
    invoke-static {v8, v9}, Lcom/lenovo/settings/storage/SizeUtil$EMMC;->getEmmcBySize(J)Lcom/lenovo/settings/storage/SizeUtil$EMMC;

    move-result-object v2

    .line 73
    .local v2, "emmc":Lcom/lenovo/settings/storage/SizeUtil$EMMC;
    const-string v11, "SizeUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "detect emmc size: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/lenovo/settings/storage/SizeUtil$EMMC;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-wide v12, v2, Lcom/lenovo/settings/storage/SizeUtil$EMMC;->size:J

    goto :goto_0

    .line 65
    .end local v2    # "emmc":Lcom/lenovo/settings/storage/SizeUtil$EMMC;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v10    # "split":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v11, "SizeUtil"

    const-string v14, "get emmc total size fail, parse number fail"

    invoke-static {v11, v14, v1}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getRAMSize()J
    .locals 6

    .prologue
    .line 148
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 149
    .local v0, "mMemInfoReader":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 150
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v2

    .line 151
    .local v2, "mTotalMemSize":J
    invoke-static {v2, v3}, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;->getTotalRAMbySize(J)J

    move-result-wide v4

    return-wide v4
.end method

.method private static shellRunCmd(Ljava/lang/String;)Lcom/lenovo/settings/storage/ShellCmdResult;
    .locals 11
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 79
    const-string v9, " "

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "cmdSplit":[Ljava/lang/String;
    :try_start_0
    new-instance v9, Ljava/lang/ProcessBuilder;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 92
    .local v6, "process":Ljava/lang/Process;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v3

    .line 98
    .local v3, "exitValue":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v5, "outputInfo":Ljava/lang/StringBuilder;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 101
    .local v4, "in":Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 102
    .local v0, "buf":Ljava/io/BufferedReader;
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 103
    .local v7, "str":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 104
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v9, "\n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 107
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v7    # "str":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    const-string v9, "SizeUtil"

    const-string v10, "shellRunCmd(), read output stream failed: "

    invoke-static {v9, v10, v2}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    .line 114
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "exitValue":I
    .end local v5    # "outputInfo":Ljava/lang/StringBuilder;
    .end local v6    # "process":Ljava/lang/Process;
    :goto_1
    return-object v8

    .line 86
    :catch_1
    move-exception v2

    .line 87
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "SizeUtil"

    const-string v10, "shellRunCmd(), start process failed: "

    invoke-static {v9, v10, v2}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 93
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v6    # "process":Ljava/lang/Process;
    :catch_2
    move-exception v2

    .line 94
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v9, "SizeUtil"

    const-string v10, "shellRunCmd(), wait for cmd return failed: "

    invoke-static {v9, v10, v2}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 111
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "exitValue":I
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "outputInfo":Ljava/lang/StringBuilder;
    .restart local v7    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    .line 114
    new-instance v8, Lcom/lenovo/settings/storage/ShellCmdResult;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Lcom/lenovo/settings/storage/ShellCmdResult;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    .line 111
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v7    # "str":Ljava/lang/String;
    :catchall_0
    move-exception v8

    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    throw v8
.end method
