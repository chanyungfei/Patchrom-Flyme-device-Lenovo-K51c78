.class public Lcom/android/server/pm/PackagePreloadLinkedUtil;
.super Ljava/lang/Object;
.source "PackagePreloadLinkedUtil.java"


# static fields
.field private static final LASTPRELOADINFOFILE:Ljava/lang/String; = "/cache/lastpreload"

.field private static final OPEN_FIRSTBOOT_PRELOAD_LINKED:Z = false

.field private static final OTAUPDATERESULTFILE:Ljava/lang/String; = "/cache/ota/updateResult"

.field private static final SYSTEMPRELOADDIR:Ljava/lang/String; = "/system/preload/"

.field private static final TAG:Ljava/lang/String; = "PackagePreloadLinkedUtil"


# instance fields
.field private hasOtaResult:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackagePreloadLinkedUtil;->hasOtaResult:I

    return-void
.end method

.method private createLinkNewApp([Ljava/io/File;)V
    .locals 9
    .param p1, "newappfiles"    # [Ljava/io/File;

    .prologue
    .line 103
    const-string v6, "PackagePreloadLinkedUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readyLinkNewApp new apps size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-eqz p1, :cond_2

    .line 105
    move-object v1, p1

    .local v1, "arr$":[Ljava/io/File;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v1, v4

    .line 106
    .local v0, "app":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "filename":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    .line 105
    .end local v3    # "filename":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 109
    .restart local v3    # "filename":Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ln -s /system/preload/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " /data/app/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "cmd":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/PackagePreloadLinkedUtil;->doExcute(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 111
    const-string v6, "PackagePreloadLinkedUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readyLinkNewApp fail "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 116
    .end local v0    # "app":Ljava/io/File;
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_2
    return-void
.end method

.method private doExcute(Ljava/lang/String;)Z
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 119
    const-string v2, "PackagePreloadLinkedUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doExcute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 122
    .local v1, "p":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 123
    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 124
    const/4 v2, 0x1

    .line 129
    .end local v1    # "p":Ljava/lang/Process;
    :goto_0
    return v2

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getNeedNewPreloadApps([Ljava/lang/String;Z)[Ljava/io/File;
    .locals 7
    .param p1, "apps"    # [Ljava/lang/String;
    .param p2, "isFirstboot"    # Z

    .prologue
    .line 62
    const-string v4, "PackagePreloadLinkedUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepare new link preload app lists isFirstboot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v2, 0x0

    .line 64
    .local v2, "preloadappfiles":[Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/preload/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v3, "preloaddir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    if-eqz p2, :cond_0

    .line 67
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    :goto_0
    move-object v4, v2

    .line 87
    :goto_1
    return-object v4

    .line 69
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackagePreloadLinkedUtil;->makenewlist([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 70
    .local v1, "oldApplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/pm/PackagePreloadLinkedUtil$1;

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/PackagePreloadLinkedUtil$1;-><init>(Lcom/android/server/pm/PackagePreloadLinkedUtil;Ljava/util/ArrayList;)V

    .line 83
    .local v0, "newnamefilter":Ljava/io/FilenameFilter;
    invoke-virtual {v3, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    goto :goto_0

    .line 87
    .end local v0    # "newnamefilter":Ljava/io/FilenameFilter;
    .end local v1    # "oldApplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isOTAUpdateBoot()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "hasResult":Z
    iget v2, p0, Lcom/android/server/pm/PackagePreloadLinkedUtil;->hasOtaResult:I

    if-gez v2, :cond_0

    .line 176
    new-instance v1, Ljava/io/File;

    const-string v2, "/cache/ota/updateResult"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v1, "otaupdateResultfile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput v2, p0, Lcom/android/server/pm/PackagePreloadLinkedUtil;->hasOtaResult:I

    .line 178
    const-string v2, "PackagePreloadLinkedUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isOTAUpdateBoot hasOtaResult : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/pm/PackagePreloadLinkedUtil;->hasOtaResult:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v1    # "otaupdateResultfile":Ljava/io/File;
    :cond_0
    iget v2, p0, Lcom/android/server/pm/PackagePreloadLinkedUtil;->hasOtaResult:I

    if-ne v2, v3, :cond_2

    move v0, v3

    .line 181
    :goto_1
    return v0

    .restart local v1    # "otaupdateResultfile":Ljava/io/File;
    :cond_1
    move v2, v4

    .line 177
    goto :goto_0

    .end local v1    # "otaupdateResultfile":Ljava/io/File;
    :cond_2
    move v0, v4

    .line 180
    goto :goto_1
.end method

.method private makenewlist([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "strs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v0, "alist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 93
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 94
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 95
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .param p1, "fil"    # Ljava/io/File;

    .prologue
    .line 133
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 134
    .local v0, "afile":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 136
    .local v2, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .local v3, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 138
    .local v5, "sb":Ljava/lang/StringBuffer;
    const/16 v6, 0xa

    invoke-direct {p0, v3, v5, v6}, Lcom/android/server/pm/PackagePreloadLinkedUtil;->readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 146
    .local v4, "lastpreloadlinkinfo":Ljava/lang/String;
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v2, v3

    .line 148
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local v4    # "lastpreloadlinkinfo":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    :goto_0
    return-object v4

    .line 141
    :catch_0
    move-exception v6

    .line 146
    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 148
    :goto_2
    const/4 v4, 0x0

    goto :goto_0

    .line 143
    :catch_1
    move-exception v1

    .line 144
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    :try_start_2
    const-string v6, "PackagePreloadLinkedUtil"

    const-string v7, "Failed to readFile"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v6

    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 143
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 141
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    :catch_3
    move-exception v6

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method private readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "sb"    # Ljava/lang/StringBuffer;
    .param p3, "endOfToken"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 155
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 156
    .local v0, "ch":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 157
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 158
    const/4 v1, 0x0

    .line 163
    :goto_1
    return-object v1

    .line 160
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 162
    :cond_1
    if-ne v0, p3, :cond_2

    .line 163
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 165
    :cond_2
    int-to-char v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public startSystemPreloadUpgrade(Z)V
    .locals 7
    .param p1, "isFirstboot"    # Z

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/server/pm/PackagePreloadLinkedUtil;->isOTAUpdateBoot()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p1, :cond_0

    .line 39
    :cond_0
    const-string v4, "PackagePreloadLinkedUtil"

    const-string v5, "no need to start link new preload app to /data/app/ "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :goto_0
    return-void

    .line 42
    :cond_1
    const-string v4, "PackagePreloadLinkedUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "now start link new preload app to /data/app/ isFirstboot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v1, 0x0

    .line 44
    .local v1, "lastPreapplist":[Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string v4, "/cache/lastpreload"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v2, "lastpreloadF":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 46
    invoke-direct {p0, v2}, Lcom/android/server/pm/PackagePreloadLinkedUtil;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "cur":Ljava/lang/String;
    const-string v4, "PackagePreloadLinkedUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read lastpreload cache app cur: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    if-eqz v0, :cond_2

    .line 49
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 55
    :cond_2
    if-eqz p1, :cond_3

    :cond_3
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/android/server/pm/PackagePreloadLinkedUtil;->getNeedNewPreloadApps([Ljava/lang/String;Z)[Ljava/io/File;

    move-result-object v3

    .line 56
    .local v3, "newappfiles":[Ljava/io/File;
    invoke-direct {p0, v3}, Lcom/android/server/pm/PackagePreloadLinkedUtil;->createLinkNewApp([Ljava/io/File;)V

    .line 57
    const-string v4, "PackagePreloadLinkedUtil"

    const-string v5, "complete linked new preload app, del lastpreload file:  /cache/lastpreload"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 51
    .end local v0    # "cur":Ljava/lang/String;
    .end local v3    # "newappfiles":[Ljava/io/File;
    :cond_4
    if-eqz p1, :cond_5

    .line 52
    :cond_5
    const-string v4, "PackagePreloadLinkedUtil"

    const-string v5, "do not link new preload app cause old preload info noexist"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
