.class Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILReceiver;
.super Ljava/lang/Object;
.source "ImsRILAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsRILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;)V
    .locals 1

    .prologue
    .line 689
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILReceiver;->this$0:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 690
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILReceiver;->buffer:[B

    .line 691
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    .line 696
    const/4 v7, 0x0

    .line 697
    .local v7, "retryCount":I
    const-string v2, "rild-ims"

    .line 700
    .local v2, "imsRilSocket":Ljava/lang/String;
    :goto_0
    const/4 v8, 0x0

    .line 704
    .local v8, "s":Landroid/net/LocalSocket;
    :try_start_0
    new-instance v9, Landroid/net/LocalSocket;

    invoke-direct {v9}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 705
    .end local v8    # "s":Landroid/net/LocalSocket;
    .local v9, "s":Landroid/net/LocalSocket;
    :try_start_1
    new-instance v4, Landroid/net/LocalSocketAddress;

    sget-object v11, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v4, v2, v11}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 707
    .local v4, "l":Landroid/net/LocalSocketAddress;
    invoke-virtual {v9, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 741
    const/4 v7, 0x0

    .line 743
    :try_start_2
    iget-object v11, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILReceiver;->this$0:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iput-object v9, v11, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSocket:Landroid/net/LocalSocket;

    .line 744
    const-string v11, "IMS: IMS_RILA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Connected to \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 746
    const/4 v5, 0x0

    .line 748
    .local v5, "length":I
    :try_start_3
    iget-object v11, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILReceiver;->this$0:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v11, v11, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v11}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 753
    .local v3, "is":Ljava/io/InputStream;
    :goto_1
    iget-object v11, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILReceiver;->buffer:[B

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->readRilMessage(Ljava/io/InputStream;[B)I
    invoke-static {v3, v11}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->access$100(Ljava/io/InputStream;[B)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    move-result v5

    .line 755
    if-gez v5, :cond_3

    .line 777
    .end local v3    # "is":Ljava/io/InputStream;
    :goto_2
    :try_start_4
    const-string v11, "IMS: IMS_RILA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Disconnected from \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 783
    :try_start_5
    iget-object v11, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILReceiver;->this$0:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v11, v11, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v11}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 787
    :goto_3
    :try_start_6
    iget-object v11, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILReceiver;->this$0:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSocket:Landroid/net/LocalSocket;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    .line 792
    .end local v4    # "l":Landroid/net/LocalSocketAddress;
    .end local v5    # "length":I
    :catch_0
    move-exception v10

    move-object v8, v9

    .line 793
    .end local v9    # "s":Landroid/net/LocalSocket;
    .restart local v8    # "s":Landroid/net/LocalSocket;
    .local v10, "tr":Ljava/lang/Throwable;
    :goto_4
    const-string v11, "IMS: IMS_RILA"

    const-string v12, "Uncaught exception"

    invoke-static {v11, v12, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 798
    return-void

    .line 708
    .end local v10    # "tr":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 710
    .local v0, "ex":Ljava/io/IOException;
    :goto_5
    if-eqz v8, :cond_0

    .line 711
    :try_start_7
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    .line 721
    :cond_0
    :goto_6
    if-ne v7, v14, :cond_2

    .line 722
    :try_start_8
    const-string v11, "IMS: IMS_RILA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Couldn\'t find \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket after "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " times, continuing to retry silently"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    .line 733
    :cond_1
    :goto_7
    const-wide/16 v12, 0xfa0

    :try_start_9
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    .line 737
    :goto_8
    add-int/lit8 v7, v7, 0x1

    .line 738
    goto/16 :goto_0

    .line 713
    :catch_2
    move-exception v1

    .line 715
    .local v1, "ex2":Ljava/io/IOException;
    :try_start_a
    const-string v11, "IMS: IMS_RILA"

    const-string v12, "Failed to close the socket"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 792
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "ex2":Ljava/io/IOException;
    :catch_3
    move-exception v10

    goto :goto_4

    .line 726
    .restart local v0    # "ex":Ljava/io/IOException;
    :cond_2
    if-lez v7, :cond_1

    if-ge v7, v14, :cond_1

    .line 727
    const-string v11, "IMS: IMS_RILA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Couldn\'t find \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket; retrying after timeout"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_7

    .line 760
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v8    # "s":Landroid/net/LocalSocket;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "l":Landroid/net/LocalSocketAddress;
    .restart local v5    # "length":I
    .restart local v9    # "s":Landroid/net/LocalSocket;
    :cond_3
    :try_start_b
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 761
    .local v6, "p":Landroid/os/Parcel;
    iget-object v11, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILReceiver;->buffer:[B

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 762
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 766
    iget-object v11, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILReceiver;->this$0:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->processResponse(Landroid/os/Parcel;)V
    invoke-static {v11, v6}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->access$200(Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;Landroid/os/Parcel;)V

    .line 767
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_1

    .line 769
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v6    # "p":Landroid/os/Parcel;
    :catch_4
    move-exception v0

    .line 770
    .restart local v0    # "ex":Ljava/io/IOException;
    :try_start_c
    const-string v11, "IMS: IMS_RILA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket closed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 772
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_5
    move-exception v10

    .line 773
    .restart local v10    # "tr":Ljava/lang/Throwable;
    const-string v11, "IMS: IMS_RILA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Uncaught exception read length="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_2

    .line 734
    .end local v4    # "l":Landroid/net/LocalSocketAddress;
    .end local v5    # "length":I
    .end local v9    # "s":Landroid/net/LocalSocket;
    .end local v10    # "tr":Ljava/lang/Throwable;
    .restart local v0    # "ex":Ljava/io/IOException;
    .restart local v8    # "s":Landroid/net/LocalSocket;
    :catch_6
    move-exception v11

    goto/16 :goto_8

    .line 784
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v8    # "s":Landroid/net/LocalSocket;
    .restart local v4    # "l":Landroid/net/LocalSocketAddress;
    .restart local v5    # "length":I
    .restart local v9    # "s":Landroid/net/LocalSocket;
    :catch_7
    move-exception v11

    goto/16 :goto_3

    .line 708
    .end local v4    # "l":Landroid/net/LocalSocketAddress;
    .end local v5    # "length":I
    :catch_8
    move-exception v0

    move-object v8, v9

    .end local v9    # "s":Landroid/net/LocalSocket;
    .restart local v8    # "s":Landroid/net/LocalSocket;
    goto/16 :goto_5
.end method
