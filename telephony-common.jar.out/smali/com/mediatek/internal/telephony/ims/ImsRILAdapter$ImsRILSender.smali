.class Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;
.super Landroid/os/Handler;
.source "ImsRILAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsRILSender"
.end annotation


# instance fields
.field dataLength:[B

.field final synthetic this$0:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 935
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;->this$0:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    .line 936
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 940
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;->dataLength:[B

    .line 937
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 953
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-object v7, v9

    check-cast v7, Lcom/mediatek/internal/telephony/ims/RILRequest;

    .line 954
    .local v7, "rr":Lcom/mediatek/internal/telephony/ims/RILRequest;
    const/4 v6, 0x0

    .line 956
    .local v6, "req":Lcom/mediatek/internal/telephony/ims/RILRequest;
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 1044
    :cond_0
    :goto_0
    return-void

    .line 961
    :pswitch_0
    :try_start_0
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;->this$0:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v8, v9, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSocket:Landroid/net/LocalSocket;

    .line 963
    .local v8, "s":Landroid/net/LocalSocket;
    if-nez v8, :cond_1

    .line 964
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/mediatek/internal/telephony/ims/RILRequest;->onError(ILjava/lang/Object;)V

    .line 965
    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/ims/RILRequest;->release()V

    .line 966
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;->this$0:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->decrementWakeLock()V
    invoke-static {v9}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->access$200(Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 993
    .end local v8    # "s":Landroid/net/LocalSocket;
    :catch_0
    move-exception v3

    .line 994
    .local v3, "ex":Ljava/io/IOException;
    const-string v9, "IMS_RILA"

    const-string v10, "IOException"

    invoke-static {v9, v10, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 995
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;->this$0:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget v10, v7, Lcom/mediatek/internal/telephony/ims/RILRequest;->mSerial:I

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->findAndRemoveRequestFromList(I)Lcom/mediatek/internal/telephony/ims/RILRequest;
    invoke-static {v9, v10}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->access$300(Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;I)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v6

    .line 998
    if-eqz v6, :cond_0

    .line 999
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/mediatek/internal/telephony/ims/RILRequest;->onError(ILjava/lang/Object;)V

    .line 1000
    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/ims/RILRequest;->release()V

    .line 1001
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;->this$0:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->decrementWakeLock()V
    invoke-static {v9}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->access$200(Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;)V

    goto :goto_0

    .line 971
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v8    # "s":Landroid/net/LocalSocket;
    :cond_1
    :try_start_1
    iget-object v9, v7, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v9}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    .line 972
    .local v2, "data":[B
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;->this$0:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v10, v9, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 973
    :try_start_2
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;->this$0:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v9, v9, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    iget v11, v7, Lcom/mediatek/internal/telephony/ims/RILRequest;->mSerial:I

    invoke-virtual {v9, v11, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 974
    iget-object v9, v7, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 975
    const/4 v9, 0x0

    iput-object v9, v7, Lcom/mediatek/internal/telephony/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    .line 976
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 978
    :try_start_3
    array-length v9, v2

    const/16 v10, 0x2000

    if-le v9, v10, :cond_2

    .line 979
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Parcel larger than max bytes allowed! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1003
    .end local v2    # "data":[B
    .end local v8    # "s":Landroid/net/LocalSocket;
    :catch_1
    move-exception v4

    .line 1004
    .local v4, "exc":Ljava/lang/RuntimeException;
    const-string v9, "IMS_RILA"

    const-string v10, "Uncaught exception "

    invoke-static {v9, v10, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1005
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;->this$0:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget v10, v7, Lcom/mediatek/internal/telephony/ims/RILRequest;->mSerial:I

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->findAndRemoveRequestFromList(I)Lcom/mediatek/internal/telephony/ims/RILRequest;
    invoke-static {v9, v10}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->access$300(Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;I)Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-result-object v6

    .line 1008
    if-eqz v6, :cond_0

    .line 1009
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/mediatek/internal/telephony/ims/RILRequest;->onError(ILjava/lang/Object;)V

    .line 1010
    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/ims/RILRequest;->release()V

    .line 1011
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;->this$0:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->decrementWakeLock()V
    invoke-static {v9}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->access$200(Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;)V

    goto/16 :goto_0

    .line 976
    .end local v4    # "exc":Ljava/lang/RuntimeException;
    .restart local v2    # "data":[B
    .restart local v8    # "s":Landroid/net/LocalSocket;
    :catchall_0
    move-exception v9

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v9

    .line 985
    :cond_2
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;->dataLength:[B

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;->dataLength:[B

    const/4 v12, 0x1

    const/4 v13, 0x0

    aput-byte v13, v11, v12

    aput-byte v13, v9, v10

    .line 986
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;->dataLength:[B

    const/4 v10, 0x2

    array-length v11, v2

    shr-int/lit8 v11, v11, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 987
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;->dataLength:[B

    const/4 v10, 0x3

    array-length v11, v2

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 991
    invoke-virtual {v8}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;->dataLength:[B

    invoke-virtual {v9, v10}, Ljava/io/OutputStream;->write([B)V

    .line 992
    invoke-virtual {v8}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 1028
    .end local v2    # "data":[B
    .end local v8    # "s":Landroid/net/LocalSocket;
    :pswitch_1
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;->this$0:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v10, v9, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v10

    .line 1029
    :try_start_6
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;->this$0:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->clearWakeLock()Z
    invoke-static {v9}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->access$400(Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1031
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;->this$0:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v9, v9, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1032
    .local v1, "count":I
    const-string v9, "IMS_RILA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WAKE_LOCK_TIMEOUT  mRequestList="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_3

    .line 1035
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILSender;->this$0:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v9, v9, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/mediatek/internal/telephony/ims/RILRequest;

    move-object v7, v0

    .line 1036
    const-string v9, "IMS_RILA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/mediatek/internal/telephony/ims/RILRequest;->mSerial:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/mediatek/internal/telephony/ims/RILRequest;->mRequest:I

    invoke-static {v12}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1041
    .end local v1    # "count":I
    .end local v5    # "i":I
    :cond_3
    monitor-exit v10

    goto/16 :goto_0

    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v9

    .line 956
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public run()V
    .locals 0

    .prologue
    .line 947
    return-void
.end method
