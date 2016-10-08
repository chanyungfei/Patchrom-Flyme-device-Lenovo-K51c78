.class Landroid/media/MiniThumbFile$MiniThumbDataFile;
.super Ljava/lang/Object;
.source "MiniThumbFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MiniThumbFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiniThumbDataFile"
.end annotation


# instance fields
.field private mActiveCount:I

.field private mChannel:Ljava/nio/channels/FileChannel;

.field private mIndexMappedBuffer:Ljava/nio/MappedByteBuffer;

.field private mPath:Ljava/lang/String;

.field private mRandomAccessFile:Ljava/io/RandomAccessFile;

.field final synthetic this$0:Landroid/media/MiniThumbFile;


# direct methods
.method public constructor <init>(Landroid/media/MiniThumbFile;Ljava/io/RandomAccessFile;Ljava/lang/String;)V
    .locals 8
    .param p2, "miniThumbFile"    # Ljava/io/RandomAccessFile;
    .param p3, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    iput-object p1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object p2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 370
    iput-object p3, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mPath:Ljava/lang/String;

    .line 372
    invoke-direct {p0}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->load()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    invoke-direct {p0}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->reset()V

    .line 378
    :cond_0
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mChannel:Ljava/nio/channels/FileChannel;

    .line 380
    :try_start_0
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mChannel:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x80000

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mIndexMappedBuffer:Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/nio/channels/NonWritableChannelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :goto_0
    const-string v0, "MiniThumbFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create MiniThumbDataFile with size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "KB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-void

    .line 381
    :catch_0
    move-exception v6

    .line 382
    .local v6, "ex1":Ljava/nio/channels/NonWritableChannelException;
    const-string v0, "MiniThumbFile"

    const-string/jumbo v1, "map MiniThumbFile(READ_WRITE) with NonWritableChannelException, try READ_ONLY mode"

    invoke-static {v0, v1, v6}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    :try_start_1
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mChannel:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x80000

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mIndexMappedBuffer:Ljava/nio/MappedByteBuffer;
    :try_end_1
    .catch Ljava/nio/channels/NonReadableChannelException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 385
    :catch_1
    move-exception v7

    .line 386
    .local v7, "ex2":Ljava/nio/channels/NonReadableChannelException;
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "try map as READ_ONLY mode with NonReadableChannelException"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized load()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 394
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 395
    iget-object v3, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    iget-object v4, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v4}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    .line 396
    const-string v3, "MiniThumbFile"

    const-string v4, "cannot read version header"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    :goto_0
    monitor-exit p0

    return v2

    .line 400
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v4, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v4}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v4

    const/4 v5, 0x0

    # invokes: Landroid/media/MiniThumbFile;->readInt([BI)I
    invoke-static {v3, v4, v5}, Landroid/media/MiniThumbFile;->access$100(Landroid/media/MiniThumbFile;[BI)I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    .line 401
    const-string v3, "MiniThumbFile"

    const-string/jumbo v4, "miss MiniThumbDataFile version"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 394
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 405
    :cond_1
    :try_start_2
    iget-object v3, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v4, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v4}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v4

    const/4 v5, 0x4

    # invokes: Landroid/media/MiniThumbFile;->readLong([BI)J
    invoke-static {v3, v4, v5}, Landroid/media/MiniThumbFile;->access$200(Landroid/media/MiniThumbFile;[BI)J

    move-result-wide v4

    const-wide/32 v6, 0x20140218

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    .line 406
    const-string v3, "MiniThumbFile"

    const-string/jumbo v4, "miss MiniThumbDataFile magic"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 410
    :cond_2
    iget-object v3, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v4, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v4}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v4

    const/16 v5, 0xc

    # invokes: Landroid/media/MiniThumbFile;->readInt([BI)I
    invoke-static {v3, v4, v5}, Landroid/media/MiniThumbFile;->access$100(Landroid/media/MiniThumbFile;[BI)I

    move-result v3

    iput v3, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mActiveCount:I

    const/16 v4, 0x3fff

    if-lt v3, v4, :cond_3

    .line 411
    const-string v3, "MiniThumbFile"

    const-string v4, "active count big than limit, need reset"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 415
    :cond_3
    iget-object v3, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v4, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v4}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v4

    const/16 v5, 0x18

    # invokes: Landroid/media/MiniThumbFile;->readLong([BI)J
    invoke-static {v3, v4, v5}, Landroid/media/MiniThumbFile;->access$200(Landroid/media/MiniThumbFile;[BI)J

    move-result-wide v4

    iget-object v3, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v6, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v6}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x18

    # invokes: Landroid/media/MiniThumbFile;->checkSum([BII)J
    invoke-static {v3, v6, v7, v8}, Landroid/media/MiniThumbFile;->access$300(Landroid/media/MiniThumbFile;[BII)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    .line 416
    const-string v3, "MiniThumbFile"

    const-string v4, "invalid version check sum, version header may be destoried"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 420
    :cond_4
    iget-object v3, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    .line 421
    .local v0, "size":J
    const-wide/32 v4, 0x3200000

    cmp-long v3, v0, v4

    if-lez v3, :cond_5

    .line 422
    const-string v3, "MiniThumbFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MiniThumbDataFile size is big than limit(current size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v6, 0x400

    div-long v6, v0, v6

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "M)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 425
    :cond_5
    const-string v2, "MiniThumbFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load MiniThumbDataFile with active count is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mActiveCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 426
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method private declared-synchronized reset()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    monitor-enter p0

    :try_start_0
    const-string v0, "MiniThumbFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reset MiniThumbDataFile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mActiveCount:I

    .line 433
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 434
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    const-wide/32 v2, 0x80000

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 436
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 437
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v1}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x6

    # invokes: Landroid/media/MiniThumbFile;->writeInt([BII)V
    invoke-static {v0, v1, v2, v3}, Landroid/media/MiniThumbFile;->access$400(Landroid/media/MiniThumbFile;[BII)V

    .line 438
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v1}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v1

    const/4 v2, 0x4

    const-wide/32 v4, 0x20140218

    # invokes: Landroid/media/MiniThumbFile;->writeLong([BIJ)V
    invoke-static {v0, v1, v2, v4, v5}, Landroid/media/MiniThumbFile;->access$500(Landroid/media/MiniThumbFile;[BIJ)V

    .line 439
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v1}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v1

    const/16 v2, 0xc

    iget v3, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mActiveCount:I

    # invokes: Landroid/media/MiniThumbFile;->writeInt([BII)V
    invoke-static {v0, v1, v2, v3}, Landroid/media/MiniThumbFile;->access$400(Landroid/media/MiniThumbFile;[BII)V

    .line 440
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v1}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v1

    const/16 v2, 0x10

    const-wide/32 v4, -0x3f113e2b

    # invokes: Landroid/media/MiniThumbFile;->writeLong([BIJ)V
    invoke-static {v0, v1, v2, v4, v5}, Landroid/media/MiniThumbFile;->access$500(Landroid/media/MiniThumbFile;[BIJ)V

    .line 441
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v1}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v1

    const/16 v2, 0x18

    iget-object v3, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v4, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v4}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x18

    # invokes: Landroid/media/MiniThumbFile;->checkSum([BII)J
    invoke-static {v3, v4, v5, v6}, Landroid/media/MiniThumbFile;->access$300(Landroid/media/MiniThumbFile;[BII)J

    move-result-wide v4

    # invokes: Landroid/media/MiniThumbFile;->writeLong([BIJ)V
    invoke-static {v0, v1, v2, v4, v5}, Landroid/media/MiniThumbFile;->access$500(Landroid/media/MiniThumbFile;[BIJ)V

    .line 442
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v1}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    monitor-exit p0

    return-void

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public bufferToString([B)Ljava/lang/String;
    .locals 4
    .param p1, "buffer"    # [B

    .prologue
    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 617
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    const/4 v3, 0x0

    # invokes: Landroid/media/MiniThumbFile;->readLong([BI)J
    invoke-static {v2, p1, v3}, Landroid/media/MiniThumbFile;->access$200(Landroid/media/MiniThumbFile;[BI)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 618
    const-string v1, ", magic = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    const/16 v3, 0x8

    # invokes: Landroid/media/MiniThumbFile;->readLong([BI)J
    invoke-static {v2, p1, v3}, Landroid/media/MiniThumbFile;->access$200(Landroid/media/MiniThumbFile;[BI)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 619
    const-string v1, ", data checksum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    const/16 v3, 0x10

    # invokes: Landroid/media/MiniThumbFile;->readLong([BI)J
    invoke-static {v2, p1, v3}, Landroid/media/MiniThumbFile;->access$200(Landroid/media/MiniThumbFile;[BI)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 620
    const-string v1, ", position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    const/16 v3, 0x18

    # invokes: Landroid/media/MiniThumbFile;->readInt([BI)I
    invoke-static {v2, p1, v3}, Landroid/media/MiniThumbFile;->access$100(Landroid/media/MiniThumbFile;[BI)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 621
    const-string v1, ", length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    const/16 v3, 0x1c

    # invokes: Landroid/media/MiniThumbFile;->readInt([BI)I
    invoke-static {v2, p1, v3}, Landroid/media/MiniThumbFile;->access$100(Landroid/media/MiniThumbFile;[BI)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 622
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized close()V
    .locals 3

    .prologue
    .line 589
    monitor-enter p0

    :try_start_0
    const-string v0, "MiniThumbFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close MiniThumbDataFile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-virtual {p0}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->syncAll()V

    .line 591
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 592
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 593
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 594
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mChannel:Ljava/nio/channels/FileChannel;

    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mIndexMappedBuffer:Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    monitor-exit p0

    return-void

    .line 589
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getActiveCount()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mIndexMappedBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 459
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mIndexMappedBuffer:Ljava/nio/MappedByteBuffer;

    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v1}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v1}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v1

    const/16 v2, 0x18

    # invokes: Landroid/media/MiniThumbFile;->readLong([BI)J
    invoke-static {v0, v1, v2}, Landroid/media/MiniThumbFile;->access$200(Landroid/media/MiniThumbFile;[BI)J

    move-result-wide v0

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v3, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v3}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x18

    # invokes: Landroid/media/MiniThumbFile;->checkSum([BII)J
    invoke-static {v2, v3, v4, v5}, Landroid/media/MiniThumbFile;->access$300(Landroid/media/MiniThumbFile;[BII)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v1}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v1

    const/16 v2, 0xc

    # invokes: Landroid/media/MiniThumbFile;->readInt([BI)I
    invoke-static {v0, v1, v2}, Landroid/media/MiniThumbFile;->access$100(Landroid/media/MiniThumbFile;[BI)I

    move-result v0

    iput v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mActiveCount:I

    .line 462
    const-string v0, "MiniThumbFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveCount is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mActiveCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mActiveCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    :goto_0
    monitor-exit p0

    return v0

    .line 465
    :cond_0
    :try_start_1
    const-string v0, "MiniThumbFile"

    const-string v1, "invalid version header, reset MiniThumbDataFile"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-direct {p0}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->reset()V

    .line 467
    iget v0, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mActiveCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDataFromThumbFile([BJLandroid/media/MiniThumbFile$ThumbResult;)[B
    .locals 20
    .param p1, "data"    # [B
    .param p2, "id"    # J
    .param p4, "result"    # Landroid/media/MiniThumbFile$ThumbResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 537
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v5}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v5

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v5, v1, v2}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->getIndexHeader([BJ)Ljava/nio/ByteBuffer;

    move-result-object v5

    if-nez v5, :cond_1

    .line 538
    const-string v5, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can not get index header for id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    const/16 p1, 0x0

    .line 585
    .end local p1    # "data":[B
    :cond_0
    :goto_0
    monitor-exit p0

    return-object p1

    .line 542
    .restart local p1    # "data":[B
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v6}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v6

    const/4 v7, 0x0

    # invokes: Landroid/media/MiniThumbFile;->readLong([BI)J
    invoke-static {v5, v6, v7}, Landroid/media/MiniThumbFile;->access$200(Landroid/media/MiniThumbFile;[BI)J

    move-result-wide v18

    .line 543
    .local v18, "oldId":J
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v6}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v6

    const/16 v7, 0x8

    # invokes: Landroid/media/MiniThumbFile;->readLong([BI)J
    invoke-static {v5, v6, v7}, Landroid/media/MiniThumbFile;->access$200(Landroid/media/MiniThumbFile;[BI)J

    move-result-wide v16

    .line 544
    .local v16, "magic":J
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v6}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v6

    const/16 v7, 0x10

    # invokes: Landroid/media/MiniThumbFile;->readLong([BI)J
    invoke-static {v5, v6, v7}, Landroid/media/MiniThumbFile;->access$200(Landroid/media/MiniThumbFile;[BI)J

    move-result-wide v12

    .line 545
    .local v12, "dataCheckSum":J
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v6}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v6

    const/16 v7, 0x18

    # invokes: Landroid/media/MiniThumbFile;->readInt([BI)I
    invoke-static {v5, v6, v7}, Landroid/media/MiniThumbFile;->access$100(Landroid/media/MiniThumbFile;[BI)I

    move-result v15

    .line 546
    .local v15, "position":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v6}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v6

    const/16 v7, 0x1c

    # invokes: Landroid/media/MiniThumbFile;->readInt([BI)I
    invoke-static {v5, v6, v7}, Landroid/media/MiniThumbFile;->access$100(Landroid/media/MiniThumbFile;[BI)I

    move-result v11

    .line 548
    .local v11, "length":I
    cmp-long v5, v18, p2

    if-eqz v5, :cond_2

    .line 549
    const-string v5, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid store original id : store id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", given id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/16 p1, 0x0

    goto/16 :goto_0

    .line 552
    :cond_2
    move-object/from16 v0, p1

    array-length v5, v0

    if-ge v5, v11, :cond_3

    .line 553
    const-string v5, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid store data length: store length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", given length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 554
    const/16 p1, 0x0

    goto/16 :goto_0

    .line 557
    :cond_3
    const/4 v14, 0x0

    .line 559
    .local v14, "lock":Ljava/nio/channels/FileLock;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v5}, Landroid/media/MiniThumbFile;->access$800(Landroid/media/MiniThumbFile;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 560
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mChannel:Ljava/nio/channels/FileChannel;

    int-to-long v6, v15

    const-wide/16 v8, 0x4000

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v14

    .line 561
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v6}, Landroid/media/MiniThumbFile;->access$800(Landroid/media/MiniThumbFile;)Ljava/nio/ByteBuffer;

    move-result-object v6

    int-to-long v8, v15

    invoke-virtual {v5, v6, v8, v9}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v5

    if-lt v5, v11, :cond_6

    .line 562
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v5}, Landroid/media/MiniThumbFile;->access$800(Landroid/media/MiniThumbFile;)Ljava/nio/ByteBuffer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 563
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v5}, Landroid/media/MiniThumbFile;->access$800(Landroid/media/MiniThumbFile;)Ljava/nio/ByteBuffer;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v6, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 564
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    # invokes: Landroid/media/MiniThumbFile;->checkSum([BII)J
    invoke-static {v5, v0, v6, v11}, Landroid/media/MiniThumbFile;->access$300(Landroid/media/MiniThumbFile;[BII)J

    move-result-wide v6

    cmp-long v5, v12, v6

    if-nez v5, :cond_5

    .line 565
    if-eqz p4, :cond_4

    .line 566
    const/4 v5, 0x2

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/media/MiniThumbFile$ThumbResult;->setDetail(I)V

    .line 568
    :cond_4
    const-string v5, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDataFromThumbFile success with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v7}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->bufferToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 578
    if-eqz v14, :cond_0

    .line 579
    :try_start_3
    invoke-virtual {v14}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 580
    :catch_0
    move-exception v4

    .line 581
    .local v4, "ex":Ljava/io/IOException;
    :try_start_4
    const-string v5, "MiniThumbFile"

    const-string v6, "getDataFromThumbFile: can not release lock!"

    invoke-static {v5, v6, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 537
    .end local v4    # "ex":Ljava/io/IOException;
    .end local v11    # "length":I
    .end local v12    # "dataCheckSum":J
    .end local v14    # "lock":Ljava/nio/channels/FileLock;
    .end local v15    # "position":I
    .end local v16    # "magic":J
    .end local v18    # "oldId":J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 571
    .restart local v11    # "length":I
    .restart local v12    # "dataCheckSum":J
    .restart local v14    # "lock":Ljava/nio/channels/FileLock;
    .restart local v15    # "position":I
    .restart local v16    # "magic":J
    .restart local v18    # "oldId":J
    :cond_5
    if-eqz p4, :cond_6

    .line 572
    const/4 v5, 0x1

    :try_start_5
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/media/MiniThumbFile$ThumbResult;->setDetail(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 578
    :cond_6
    if-eqz v14, :cond_7

    .line 579
    :try_start_6
    invoke-virtual {v14}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 584
    :cond_7
    :goto_1
    :try_start_7
    const-string v5, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDataFromThumbFile fail with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v7}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->bufferToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const/16 p1, 0x0

    goto/16 :goto_0

    .line 580
    :catch_1
    move-exception v4

    .line 581
    .restart local v4    # "ex":Ljava/io/IOException;
    const-string v5, "MiniThumbFile"

    const-string v6, "getDataFromThumbFile: can not release lock!"

    invoke-static {v5, v6, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 577
    .end local v4    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    .line 578
    if-eqz v14, :cond_8

    .line 579
    :try_start_8
    invoke-virtual {v14}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 582
    :cond_8
    :goto_2
    :try_start_9
    throw v5

    .line 580
    :catch_2
    move-exception v4

    .line 581
    .restart local v4    # "ex":Ljava/io/IOException;
    const-string v6, "MiniThumbFile"

    const-string v7, "getDataFromThumbFile: can not release lock!"

    invoke-static {v6, v7, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized getIndexHeader([BJ)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "header"    # [B
    .param p2, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 477
    monitor-enter p0

    long-to-int v1, p2

    :try_start_0
    rem-int/lit16 v1, v1, 0x3fff

    mul-int/lit8 v1, v1, 0x20

    add-int/lit8 v0, v1, 0x20

    .line 478
    .local v0, "position":I
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mIndexMappedBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 479
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mIndexMappedBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-virtual {v1, p1, v2, v3}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 477
    .end local v0    # "position":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getMagic(J)J
    .locals 7
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v4}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v4

    invoke-virtual {p0, v4, p1, p2}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->getIndexHeader([BJ)Ljava/nio/ByteBuffer;

    .line 484
    iget-object v4, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v5, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v5}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v5

    const/4 v6, 0x0

    # invokes: Landroid/media/MiniThumbFile;->readLong([BI)J
    invoke-static {v4, v5, v6}, Landroid/media/MiniThumbFile;->access$200(Landroid/media/MiniThumbFile;[BI)J

    move-result-wide v2

    .line 485
    .local v2, "storedId":J
    iget-object v4, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v5, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v5}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v5

    const/16 v6, 0x8

    # invokes: Landroid/media/MiniThumbFile;->readLong([BI)J
    invoke-static {v4, v5, v6}, Landroid/media/MiniThumbFile;->access$200(Landroid/media/MiniThumbFile;[BI)J

    move-result-wide v0

    .line 486
    .local v0, "magic":J
    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    .line 487
    const-string v4, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMagic succuss with: id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", magic = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    .end local v0    # "magic":J
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 490
    .restart local v0    # "magic":J
    :cond_0
    :try_start_1
    const-string v4, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMagic fail for id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with store id is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 483
    .end local v0    # "magic":J
    .end local v2    # "storedId":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public syncAll()V
    .locals 3

    .prologue
    .line 607
    invoke-virtual {p0}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->syncIndex()V

    .line 609
    :try_start_0
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    :goto_0
    return-void

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "MiniThumbFile"

    const-string/jumbo v2, "sync MiniThumbDataFile failed"

    invoke-static {v1, v2, v0}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public syncIndex()V
    .locals 3

    .prologue
    .line 600
    :try_start_0
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mIndexMappedBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    :goto_0
    return-void

    .line 601
    :catch_0
    move-exception v0

    .line 602
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "MiniThumbFile"

    const-string/jumbo v2, "sync MiniThumbDataFile index failed"

    invoke-static {v1, v2, v0}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized updateActiveCount()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->getActiveCount()I

    move-result v0

    .line 447
    .local v0, "currentActionCount":I
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v2}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x6

    # invokes: Landroid/media/MiniThumbFile;->writeInt([BII)V
    invoke-static {v1, v2, v3, v4}, Landroid/media/MiniThumbFile;->access$400(Landroid/media/MiniThumbFile;[BII)V

    .line 448
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v2}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v2

    const/4 v3, 0x4

    const-wide/32 v4, 0x20140218

    # invokes: Landroid/media/MiniThumbFile;->writeLong([BIJ)V
    invoke-static {v1, v2, v3, v4, v5}, Landroid/media/MiniThumbFile;->access$500(Landroid/media/MiniThumbFile;[BIJ)V

    .line 449
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v2}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v2

    const/16 v3, 0xc

    add-int/lit8 v0, v0, 0x1

    # invokes: Landroid/media/MiniThumbFile;->writeInt([BII)V
    invoke-static {v1, v2, v3, v0}, Landroid/media/MiniThumbFile;->access$400(Landroid/media/MiniThumbFile;[BII)V

    .line 450
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v2}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v2

    const/16 v3, 0x10

    const-wide/32 v4, -0x3f113e2b

    # invokes: Landroid/media/MiniThumbFile;->writeLong([BIJ)V
    invoke-static {v1, v2, v3, v4, v5}, Landroid/media/MiniThumbFile;->access$500(Landroid/media/MiniThumbFile;[BIJ)V

    .line 451
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v2}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v2

    const/16 v3, 0x18

    iget-object v4, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v5, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v5}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x18

    # invokes: Landroid/media/MiniThumbFile;->checkSum([BII)J
    invoke-static {v4, v5, v6, v7}, Landroid/media/MiniThumbFile;->access$300(Landroid/media/MiniThumbFile;[BII)J

    move-result-wide v4

    # invokes: Landroid/media/MiniThumbFile;->writeLong([BIJ)V
    invoke-static {v1, v2, v3, v4, v5}, Landroid/media/MiniThumbFile;->access$500(Landroid/media/MiniThumbFile;[BIJ)V

    .line 452
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mIndexMappedBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 453
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mIndexMappedBuffer:Ljava/nio/MappedByteBuffer;

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mVersionHeader:[B
    invoke-static {v2}, Landroid/media/MiniThumbFile;->access$000(Landroid/media/MiniThumbFile;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    monitor-exit p0

    return v0

    .line 446
    .end local v0    # "currentActionCount":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized updateDataToThumbFile([BJJ)V
    .locals 10
    .param p1, "data"    # [B
    .param p2, "id"    # J
    .param p4, "magic"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 496
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v1, p1

    const/16 v2, 0x4000

    if-le v1, v2, :cond_1

    .line 497
    :cond_0
    const-string v1, "MiniThumbFile"

    const-string/jumbo v2, "updateDataToThumbFile with invalid data"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    :goto_0
    monitor-exit p0

    return-void

    .line 502
    :cond_1
    const/4 v8, 0x0

    .line 503
    .local v8, "position":I
    :try_start_1
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v1}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->getIndexHeader([BJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v2}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v2

    const/4 v3, 0x0

    # invokes: Landroid/media/MiniThumbFile;->readLong([BI)J
    invoke-static {v1, v2, v3}, Landroid/media/MiniThumbFile;->access$200(Landroid/media/MiniThumbFile;[BI)J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-nez v1, :cond_3

    .line 505
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v2}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v2

    const/16 v3, 0x18

    # invokes: Landroid/media/MiniThumbFile;->readInt([BI)I
    invoke-static {v1, v2, v3}, Landroid/media/MiniThumbFile;->access$100(Landroid/media/MiniThumbFile;[BI)I

    move-result v8

    .line 511
    :goto_1
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v2}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v2

    const/4 v3, 0x0

    # invokes: Landroid/media/MiniThumbFile;->writeLong([BIJ)V
    invoke-static {v1, v2, v3, p2, p3}, Landroid/media/MiniThumbFile;->access$500(Landroid/media/MiniThumbFile;[BIJ)V

    .line 512
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v2}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v2

    const/16 v3, 0x8

    # invokes: Landroid/media/MiniThumbFile;->writeLong([BIJ)V
    invoke-static {v1, v2, v3, p4, p5}, Landroid/media/MiniThumbFile;->access$500(Landroid/media/MiniThumbFile;[BIJ)V

    .line 513
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v2}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v2

    const/16 v3, 0x10

    iget-object v4, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # invokes: Landroid/media/MiniThumbFile;->checkSum([B)J
    invoke-static {v4, p1}, Landroid/media/MiniThumbFile;->access$700(Landroid/media/MiniThumbFile;[B)J

    move-result-wide v4

    # invokes: Landroid/media/MiniThumbFile;->writeLong([BIJ)V
    invoke-static {v1, v2, v3, v4, v5}, Landroid/media/MiniThumbFile;->access$500(Landroid/media/MiniThumbFile;[BIJ)V

    .line 514
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v2}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v2

    const/16 v3, 0x18

    # invokes: Landroid/media/MiniThumbFile;->writeInt([BII)V
    invoke-static {v1, v2, v3, v8}, Landroid/media/MiniThumbFile;->access$400(Landroid/media/MiniThumbFile;[BII)V

    .line 515
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v2}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v2

    const/16 v3, 0x1c

    array-length v4, p1

    # invokes: Landroid/media/MiniThumbFile;->writeInt([BII)V
    invoke-static {v1, v2, v3, v4}, Landroid/media/MiniThumbFile;->access$400(Landroid/media/MiniThumbFile;[BII)V

    .line 516
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v1}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->updateIndexHeader([BJ)V

    .line 518
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v1}, Landroid/media/MiniThumbFile;->access$800(Landroid/media/MiniThumbFile;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 519
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v1}, Landroid/media/MiniThumbFile;->access$800(Landroid/media/MiniThumbFile;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 520
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v1}, Landroid/media/MiniThumbFile;->access$800(Landroid/media/MiniThumbFile;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 521
    const/4 v7, 0x0

    .line 523
    .local v7, "lock":Ljava/nio/channels/FileLock;
    :try_start_2
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mChannel:Ljava/nio/channels/FileChannel;

    int-to-long v2, v8

    const-wide/16 v4, 0x4000

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v7

    .line 524
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v2, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v2}, Landroid/media/MiniThumbFile;->access$800(Landroid/media/MiniThumbFile;)Ljava/nio/ByteBuffer;

    move-result-object v2

    int-to-long v4, v8

    invoke-virtual {v1, v2, v4, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 527
    if-eqz v7, :cond_2

    .line 528
    :try_start_3
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 533
    :cond_2
    :goto_2
    :try_start_4
    const-string v1, "MiniThumbFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDataToThumbFile succuss with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->this$0:Landroid/media/MiniThumbFile;

    # getter for: Landroid/media/MiniThumbFile;->mIndexHeader:[B
    invoke-static {v3}, Landroid/media/MiniThumbFile;->access$600(Landroid/media/MiniThumbFile;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->bufferToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 496
    .end local v7    # "lock":Ljava/nio/channels/FileLock;
    .end local v8    # "position":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 508
    .restart local v8    # "position":I
    :cond_3
    const/high16 v1, 0x80000

    :try_start_5
    invoke-virtual {p0}, Landroid/media/MiniThumbFile$MiniThumbDataFile;->updateActiveCount()I

    move-result v2

    mul-int/lit16 v2, v2, 0x4000

    add-int v8, v1, v2

    goto/16 :goto_1

    .line 529
    .restart local v7    # "lock":Ljava/nio/channels/FileLock;
    :catch_0
    move-exception v0

    .line 530
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "MiniThumbFile"

    const-string/jumbo v2, "updateDataToThumbFile: can not release lock!"

    invoke-static {v1, v2, v0}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 526
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v1

    .line 527
    if-eqz v7, :cond_4

    .line 528
    :try_start_6
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 531
    :cond_4
    :goto_3
    :try_start_7
    throw v1

    .line 529
    :catch_1
    move-exception v0

    .line 530
    .restart local v0    # "ex":Ljava/io/IOException;
    const-string v2, "MiniThumbFile"

    const-string/jumbo v3, "updateDataToThumbFile: can not release lock!"

    invoke-static {v2, v3, v0}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3
.end method

.method public declared-synchronized updateIndexHeader([BJ)V
    .locals 4
    .param p1, "header"    # [B
    .param p2, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    monitor-enter p0

    long-to-int v1, p2

    :try_start_0
    rem-int/lit16 v1, v1, 0x3fff

    mul-int/lit8 v1, v1, 0x20

    add-int/lit8 v0, v1, 0x20

    .line 472
    .local v0, "position":I
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mIndexMappedBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 473
    iget-object v1, p0, Landroid/media/MiniThumbFile$MiniThumbDataFile;->mIndexMappedBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-virtual {v1, p1, v2, v3}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    monitor-exit p0

    return-void

    .line 471
    .end local v0    # "position":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
