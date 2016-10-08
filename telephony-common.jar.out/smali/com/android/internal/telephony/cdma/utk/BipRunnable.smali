.class abstract Lcom/android/internal/telephony/cdma/utk/BipRunnable;
.super Ljava/lang/Object;
.source "BipChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected cacheBuf:[B

.field protected mCaller:Lcom/android/internal/telephony/cdma/utk/BipChannel;

.field protected mRun:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->mRun:Z

    .line 751
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->mCaller:Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .line 752
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->cacheBuf:[B

    return-void
.end method


# virtual methods
.method public compAndCache([B)Z
    .locals 7
    .param p1, "data"    # [B

    .prologue
    const/4 v6, 0x0

    .line 766
    const-string v3, "BipRunnable"

    const-string v4, " compAndCache"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->cacheBuf:[B

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 768
    .local v0, "cb":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 769
    .local v1, "cd":Ljava/lang/String;
    if-nez v0, :cond_1

    if-ne v0, v1, :cond_1

    .line 770
    const-string v3, "BipRunnable"

    const-string v4, " compAndCache: both = null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const/4 v2, 0x1

    .line 780
    :cond_0
    :goto_0
    return v2

    .line 773
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 774
    .local v2, "isSame":Z
    if-eqz v2, :cond_0

    .line 775
    const-string v3, "BipRunnable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " compAndCache: cacheBuf = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v3, "BipRunnable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " compAndCache: data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->cacheBuf:[B

    invoke-static {v3, v6}, Ljava/util/Arrays;->fill([BB)V

    .line 778
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->cacheBuf:[B

    array-length v4, p1

    invoke-static {p1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method

.method public sendMessageToChannel(IIILjava/lang/Object;)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 755
    const-string v1, "BipRunnable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sendMessageToChannel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->mCaller:Lcom/android/internal/telephony/cdma/utk/BipChannel;

    if-nez v1, :cond_0

    .line 757
    const-string v1, "BipRunnable"

    const-string v2, " no caller"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    :goto_0
    return-void

    .line 761
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->mCaller:Lcom/android/internal/telephony/cdma/utk/BipChannel;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 762
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->mCaller:Lcom/android/internal/telephony/cdma/utk/BipChannel;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 784
    const-string v0, "BipRunnable"

    const-string v1, " stop"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->cacheBuf:[B

    .line 786
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->mRun:Z

    .line 787
    return-void
.end method
