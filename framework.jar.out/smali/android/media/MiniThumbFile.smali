.class public Landroid/media/MiniThumbFile;
.super Ljava/lang/Object;
.source "MiniThumbFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MiniThumbFile$MiniThumbDataFile;,
        Landroid/media/MiniThumbFile$ThumbResult;
    }
.end annotation


# static fields
.field private static final AUTHOR:J = -0x3f113e2bL

.field public static final BYTES_PER_MINTHUMB:I = 0x4000

.field private static final DATA_START_OFFSET:I = 0x80000

.field private static final IH_DATA_CHECKSUM_OFFSET:I = 0x10

.field private static final IH_LENGTH_OFFSET:I = 0x1c

.field private static final IH_MAGIC_OFFSET:I = 0x8

.field private static final IH_ORIGINAL_ID_OFFSET:I = 0x0

.field private static final IH_POSITION_OFFSET:I = 0x18

.field private static final INDEX_HEADER_SIZE:I = 0x20

.field private static final MAGIC_THUMB_FILE:J = 0x20140218L

.field private static final MAX_THUMB_COUNT_PER_FILE:I = 0x3fff

.field private static final MAX_THUMB_FILE_SIZE:I = 0x3200000

.field private static final MINI_THUMB_DATA_FILE_VERSION:I = 0x6

.field private static final TAG:Ljava/lang/String; = "MiniThumbFile"

.field private static final VERSION_HEADER_SIZE:I = 0x20

.field private static final VH_ACTIVECOUNT_OFFSET:I = 0xc

.field private static final VH_AUTHOR_OFFSET:I = 0x10

.field private static final VH_CHECKSUM_OFFSET:I = 0x18

.field private static final VH_MAGIC_OFFSET:I = 0x4

.field private static final VH_VERSION_OFFSET:I

.field private static sLock:Ljava/lang/Object;

.field private static final sMiniThumbDataFile:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/media/MiniThumbFile$MiniThumbDataFile;",
            ">;"
        }
    .end annotation
.end field

.field private static sMiniThumbFile:Landroid/media/MiniThumbFile;


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mChecker:Ljava/util/zip/Adler32;

.field private mIndexHeader:[B

.field private mUri:Landroid/net/Uri;

.field private mVersionHeader:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MiniThumbFile;->sMiniThumbDataFile:Ljava/util/HashMap;

    .line 78
    const/4 v0, 0x0

    sput-object v0, Landroid/media/MiniThumbFile;->sMiniThumbFile:Landroid/media/MiniThumbFile;

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/MiniThumbFile;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v1, 0x20

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-array v0, v1, [B

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mVersionHeader:[B

    .line 127
    new-array v0, v1, [B

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mIndexHeader:[B

    .line 128
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mChecker:Ljava/util/zip/Adler32;

    .line 204
    iput-object p1, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    .line 205
    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    .line 206
    const-string v0, "MiniThumbFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activate MiniThumbFile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method

.method static synthetic access$000(Landroid/media/MiniThumbFile;)[B
    .locals 1
    .param p0, "x0"    # Landroid/media/MiniThumbFile;

    .prologue
    .line 69
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mVersionHeader:[B

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/MiniThumbFile;[BI)I
    .locals 1
    .param p0, "x0"    # Landroid/media/MiniThumbFile;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/media/MiniThumbFile;->readInt([BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/media/MiniThumbFile;[BI)J
    .locals 2
    .param p0, "x0"    # Landroid/media/MiniThumbFile;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/media/MiniThumbFile;->readLong([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Landroid/media/MiniThumbFile;[BII)J
    .locals 2
    .param p0, "x0"    # Landroid/media/MiniThumbFile;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MiniThumbFile;->checkSum([BII)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Landroid/media/MiniThumbFile;[BII)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MiniThumbFile;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MiniThumbFile;->writeInt([BII)V

    return-void
.end method

.method static synthetic access$500(Landroid/media/MiniThumbFile;[BIJ)V
    .locals 1
    .param p0, "x0"    # Landroid/media/MiniThumbFile;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/MiniThumbFile;->writeLong([BIJ)V

    return-void
.end method

.method static synthetic access$600(Landroid/media/MiniThumbFile;)[B
    .locals 1
    .param p0, "x0"    # Landroid/media/MiniThumbFile;

    .prologue
    .line 69
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mIndexHeader:[B

    return-object v0
.end method

.method static synthetic access$700(Landroid/media/MiniThumbFile;[B)J
    .locals 2
    .param p0, "x0"    # Landroid/media/MiniThumbFile;
    .param p1, "x1"    # [B

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/media/MiniThumbFile;->checkSum([B)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Landroid/media/MiniThumbFile;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Landroid/media/MiniThumbFile;

    .prologue
    .line 69
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private checkSum([B)J
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 656
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChecker:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 657
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChecker:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1}, Ljava/util/zip/Adler32;->update([B)V

    .line 658
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChecker:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private checkSum([BII)J
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 662
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChecker:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 663
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChecker:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Adler32;->update([BII)V

    .line 664
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChecker:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMiniThumbFileDirectoryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    const-string v0, ".thumbnails"

    return-object v0
.end method

.method public static getMiniThumbFilePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    const-string v0, ".thumbdata-6.0_"

    return-object v0
.end method

.method public static declared-synchronized instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 145
    const-class v1, Landroid/media/MiniThumbFile;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/media/MiniThumbFile;->sMiniThumbFile:Landroid/media/MiniThumbFile;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Landroid/media/MiniThumbFile;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/media/MiniThumbFile;-><init>(Landroid/net/Uri;)V

    sput-object v0, Landroid/media/MiniThumbFile;->sMiniThumbFile:Landroid/media/MiniThumbFile;

    .line 148
    :cond_0
    sget-object v0, Landroid/media/MiniThumbFile;->sMiniThumbFile:Landroid/media/MiniThumbFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private miniThumbDataFile(J)Landroid/media/MiniThumbFile$MiniThumbDataFile;
    .locals 15
    .param p1, "id"    # J

    .prologue
    .line 171
    sget-object v10, Landroid/media/MiniThumbFile;->sLock:Ljava/lang/Object;

    monitor-enter v10

    .line 172
    const-wide/16 v12, 0x3fff

    :try_start_0
    div-long v4, p1, v12

    .line 173
    .local v4, "fileIndex":J
    sget-object v9, Landroid/media/MiniThumbFile;->sMiniThumbDataFile:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/MiniThumbFile$MiniThumbDataFile;

    .line 174
    .local v6, "miniThumbDataFile":Landroid/media/MiniThumbFile$MiniThumbDataFile;
    if-nez v6, :cond_1

    .line 175
    invoke-static/range {p1 .. p2}, Landroid/media/MiniThumbFile;->randomAccessFilePath(J)Ljava/lang/String;

    move-result-object v8

    .line 176
    .local v8, "path":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 177
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_0

    .line 178
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-nez v9, :cond_0

    .line 179
    const-string v9, "MiniThumbFile"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to create .thumbnails directory "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    .local v3, "file":Ljava/io/File;
    :try_start_1
    new-instance v7, Landroid/media/MiniThumbFile$MiniThumbDataFile;

    new-instance v9, Ljava/io/RandomAccessFile;

    const-string/jumbo v11, "rw"

    invoke-direct {v9, v3, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, p0, v9, v8}, Landroid/media/MiniThumbFile$MiniThumbDataFile;-><init>(Landroid/media/MiniThumbFile;Ljava/io/RandomAccessFile;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v6    # "miniThumbDataFile":Landroid/media/MiniThumbFile$MiniThumbDataFile;
    .local v7, "miniThumbDataFile":Landroid/media/MiniThumbFile$MiniThumbDataFile;
    move-object v6, v7

    .line 194
    .end local v7    # "miniThumbDataFile":Landroid/media/MiniThumbFile$MiniThumbDataFile;
    .restart local v6    # "miniThumbDataFile":Landroid/media/MiniThumbFile$MiniThumbDataFile;
    :goto_0
    if-eqz v6, :cond_1

    .line 195
    :try_start_2
    sget-object v9, Landroid/media/MiniThumbFile;->sMiniThumbDataFile:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .end local v0    # "directory":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v8    # "path":Ljava/lang/String;
    :cond_1
    monitor-exit v10

    return-object v6

    .line 185
    .restart local v0    # "directory":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v8    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 187
    .local v1, "ex":Ljava/io/IOException;
    const-string v9, "MiniThumbFile"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "miniThumbDataFile: IOException(rw) for: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", try read only mode"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    :try_start_3
    new-instance v7, Landroid/media/MiniThumbFile$MiniThumbDataFile;

    new-instance v9, Ljava/io/RandomAccessFile;

    const-string/jumbo v11, "r"

    invoke-direct {v9, v3, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, p0, v9, v8}, Landroid/media/MiniThumbFile$MiniThumbDataFile;-><init>(Landroid/media/MiniThumbFile;Ljava/io/RandomAccessFile;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v6    # "miniThumbDataFile":Landroid/media/MiniThumbFile$MiniThumbDataFile;
    .restart local v7    # "miniThumbDataFile":Landroid/media/MiniThumbFile$MiniThumbDataFile;
    move-object v6, v7

    .line 192
    .end local v7    # "miniThumbDataFile":Landroid/media/MiniThumbFile$MiniThumbDataFile;
    .restart local v6    # "miniThumbDataFile":Landroid/media/MiniThumbFile$MiniThumbDataFile;
    goto :goto_0

    .line 190
    :catch_1
    move-exception v2

    .line 191
    .local v2, "ex2":Ljava/io/IOException;
    :try_start_4
    const-string v9, "MiniThumbFile"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "miniThumbDataFile: IOException(r) for: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 200
    .end local v0    # "directory":Ljava/io/File;
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "ex2":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileIndex":J
    .end local v6    # "miniThumbDataFile":Landroid/media/MiniThumbFile$MiniThumbDataFile;
    .end local v8    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v9
.end method

.method private static randomAccessFilePath(J)Ljava/lang/String;
    .locals 6
    .param p0, "id"    # J

    .prologue
    .line 158
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "storagePath":Ljava/lang/String;
    invoke-static {}, Landroid/media/MiniThumbFile;->getMiniThumbFileDirectoryPath()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "directoryName":Ljava/lang/String;
    long-to-int v4, p0

    div-int/lit16 v1, v4, 0x3fff

    .line 161
    .local v1, "fileIndex":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/media/MiniThumbFile;->getMiniThumbFilePrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "fileName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private readInt([BI)I
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 627
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private readLong([BI)J
    .locals 8
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 634
    add-int/lit8 v1, p2, 0x7

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v2, v1

    .line 635
    .local v2, "result":J
    const/4 v0, 0x6

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 636
    const/16 v1, 0x8

    shl-long v4, v2, v1

    add-int v1, p2, v0

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    or-long v2, v4, v6

    .line 635
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 638
    :cond_0
    return-wide v2
.end method

.method public static declared-synchronized reset()V
    .locals 2

    .prologue
    .line 138
    const-class v1, Landroid/media/MiniThumbFile;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/media/MiniThumbFile;->sMiniThumbFile:Landroid/media/MiniThumbFile;

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Landroid/media/MiniThumbFile;->sMiniThumbFile:Landroid/media/MiniThumbFile;

    invoke-virtual {v0}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 141
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Landroid/media/MiniThumbFile;->sMiniThumbFile:Landroid/media/MiniThumbFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit v1

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private writeInt([BII)V
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "value"    # I

    .prologue
    .line 642
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 643
    add-int v1, p2, v0

    and-int/lit16 v2, p3, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 644
    shr-int/lit8 p3, p3, 0x8

    .line 642
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 646
    :cond_0
    return-void
.end method

.method private writeLong([BIJ)V
    .locals 5
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "value"    # J

    .prologue
    const/16 v4, 0x8

    .line 649
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 650
    add-int v1, p2, v0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p3

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 651
    shr-long/2addr p3, v4

    .line 649
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 653
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized deactivate()V
    .locals 6

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    sget-object v4, Landroid/media/MiniThumbFile;->sLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 211
    :try_start_1
    sget-object v3, Landroid/media/MiniThumbFile;->sMiniThumbDataFile:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 212
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/media/MiniThumbFile$MiniThumbDataFile;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 214
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/media/MiniThumbFile$MiniThumbDataFile;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MiniThumbFile$MiniThumbDataFile;

    .line 215
    .local v2, "miniThumbDataFile":Landroid/media/MiniThumbFile$MiniThumbDataFile;
    if-eqz v2, :cond_0

    .line 216
    invoke-virtual {v2}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->close()V

    .line 218
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 220
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/media/MiniThumbFile$MiniThumbDataFile;>;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/media/MiniThumbFile$MiniThumbDataFile;>;>;"
    .end local v2    # "miniThumbDataFile":Landroid/media/MiniThumbFile$MiniThumbDataFile;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 210
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 220
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/media/MiniThumbFile$MiniThumbDataFile;>;>;"
    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 221
    :try_start_4
    const-string v3, "MiniThumbFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deactivate MiniThumbFile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 222
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getMagic(J)J
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/media/MiniThumbFile;->miniThumbDataFile(J)Landroid/media/MiniThumbFile$MiniThumbDataFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 231
    .local v1, "miniThumbDataFile":Landroid/media/MiniThumbFile$MiniThumbDataFile;
    if-eqz v1, :cond_0

    .line 233
    :try_start_1
    invoke-virtual {v1, p1, p2}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->getMagic(J)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 243
    :goto_0
    monitor-exit p0

    return-wide v2

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v4, "MiniThumbFile"

    const-string v5, "Got exception checking file magic: "

    invoke-static {v4, v5, v0}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_1
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 237
    :catch_1
    move-exception v0

    .line 239
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v4, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got exception when reading magic, id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", disk full or mount read-only? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 230
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "miniThumbDataFile":Landroid/media/MiniThumbFile$MiniThumbDataFile;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getMiniThumbFromFile(J[B)[B
    .locals 1
    .param p1, "id"    # J
    .param p3, "data"    # [B

    .prologue
    .line 275
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[BLandroid/media/MiniThumbFile$ThumbResult;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMiniThumbFromFile(J[BLandroid/media/MiniThumbFile$ThumbResult;)[B
    .locals 7
    .param p1, "id"    # J
    .param p3, "data"    # [B
    .param p4, "result"    # Landroid/media/MiniThumbFile$ThumbResult;

    .prologue
    const/4 v2, 0x0

    .line 292
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/media/MiniThumbFile;->miniThumbDataFile(J)Landroid/media/MiniThumbFile$MiniThumbDataFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 293
    .local v1, "miniThumbDataFile":Landroid/media/MiniThumbFile$MiniThumbDataFile;
    if-nez v1, :cond_0

    .line 304
    :goto_0
    monitor-exit p0

    return-object v2

    .line 295
    :cond_0
    :try_start_1
    const-string v3, "MiniThumbFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMiniThumbFromFile for id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {v1, p3, p1, p2, p4}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->getDataFromThumbFile([BJLandroid/media/MiniThumbFile$ThumbResult;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v3, "MiniThumbFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got exception when reading thumbnail id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 292
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "miniThumbDataFile":Landroid/media/MiniThumbFile$MiniThumbDataFile;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 299
    .restart local v1    # "miniThumbDataFile":Landroid/media/MiniThumbFile$MiniThumbDataFile;
    :catch_1
    move-exception v0

    .line 301
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_3
    const-string v3, "MiniThumbFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got exception when reading thumbnail, id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", disk full or mount read-only? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized saveMiniThumbToFile([BJJ)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "id"    # J
    .param p4, "magic"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2, p3}, Landroid/media/MiniThumbFile;->miniThumbDataFile(J)Landroid/media/MiniThumbFile$MiniThumbDataFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 249
    .local v0, "miniThumbDataFile":Landroid/media/MiniThumbFile$MiniThumbDataFile;
    if-nez v0, :cond_0

    .line 262
    :goto_0
    monitor-exit p0

    return-void

    .line 251
    :cond_0
    :try_start_1
    const-string v1, "MiniThumbFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveMiniThumbToFile with : id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", magic = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 252
    invoke-virtual/range {v0 .. v5}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->updateDataToThumbFile([BJJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v6

    .line 254
    .local v6, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v1, "MiniThumbFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t save mini thumbnail data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    .end local v0    # "miniThumbDataFile":Landroid/media/MiniThumbFile$MiniThumbDataFile;
    .end local v6    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 257
    .restart local v0    # "miniThumbDataFile":Landroid/media/MiniThumbFile$MiniThumbDataFile;
    :catch_1
    move-exception v6

    .line 259
    .local v6, "ex":Ljava/lang/RuntimeException;
    :try_start_3
    const-string v1, "MiniThumbFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t save mini thumbnail data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; disk full or mount read-only? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
