.class Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;
.super Landroid/os/Handler;
.source "ImsUtStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ims/ImsUtStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 124
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleMessage(): event = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", requestId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 558
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown Event: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 128
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 129
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 131
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_1

    .line 132
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    move-object v7, v10

    check-cast v7, [I

    .line 133
    .local v7, "result":[I
    const/4 v10, 0x1

    new-array v6, v10, [Lcom/android/ims/ImsSsInfo;

    .line 134
    .local v6, "info":[Lcom/android/ims/ImsSsInfo;
    const/4 v10, 0x0

    new-instance v11, Lcom/android/ims/ImsSsInfo;

    invoke-direct {v11}, Lcom/android/ims/ImsSsInfo;-><init>()V

    aput-object v11, v6, v10

    .line 135
    const/4 v10, 0x0

    aget-object v10, v6, v10

    const/4 v11, 0x0

    aget v11, v7, v11

    iput v11, v10, Lcom/android/ims/ImsSsInfo;->mStatus:I

    .line 138
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IMS_UT_EVENT_GET_CB: status = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v7, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11, v12, v6}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v3

    .line 145
    .local v3, "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in utConfigurationCallBarringQueried"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 148
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v6    # "info":[Lcom/android/ims/ImsSsInfo;
    .end local v7    # "result":[I
    :cond_1
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Ljava/net/UnknownHostException;

    if-eqz v10, :cond_2

    .line 150
    const-string v10, "ImsUtService"

    const-string v11, "IMS_UT_EVENT_GET_CB: UnknownHostException."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :try_start_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    const/16 v14, 0x33f

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 156
    :catch_1
    move-exception v3

    .line 157
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CB: UnknownHostException utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 161
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v10, :cond_3

    .line 162
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v9, Lcom/mediatek/simservs/xcap/XcapException;

    .line 164
    .local v9, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    invoke-virtual {v13, v9}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 167
    :catch_2
    move-exception v3

    .line 168
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CB: utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 174
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    const/16 v14, 0x324

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 177
    :catch_3
    move-exception v3

    .line 178
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CB: utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 186
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "e":Landroid/os/RemoteException;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 187
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 189
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_5

    .line 190
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v2, v10

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 191
    .local v2, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v5, 0x0

    .line 193
    .local v5, "imsCfInfo":[Lcom/android/ims/ImsCallForwardInfo;
    if-eqz v2, :cond_4

    array-length v10, v2

    if-eqz v10, :cond_4

    .line 194
    array-length v10, v2

    new-array v5, v10, [Lcom/android/ims/ImsCallForwardInfo;

    .line 195
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v10, v2

    if-ge v4, v10, :cond_4

    .line 197
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IMS_UT_EVENT_GET_CF: cfInfo["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v2, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    aget-object v11, v2, v4

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getImsCallForwardInfo(Lcom/android/internal/telephony/CallForwardInfo;)Lcom/android/ims/ImsCallForwardInfo;
    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$100(Lcom/mediatek/internal/telephony/ims/ImsUtStub;Lcom/android/internal/telephony/CallForwardInfo;)Lcom/android/ims/ImsCallForwardInfo;

    move-result-object v10

    aput-object v10, v5, v4

    .line 195
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 205
    .end local v4    # "i":I
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11, v12, v5}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsCallForwardInfo;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 207
    :catch_4
    move-exception v3

    .line 208
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in utConfigurationCallForwardQueried"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 212
    .end local v2    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v5    # "imsCfInfo":[Lcom/android/ims/ImsCallForwardInfo;
    :cond_5
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v10, :cond_6

    .line 213
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v9, Lcom/mediatek/simservs/xcap/XcapException;

    .line 215
    .restart local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    invoke-virtual {v13, v9}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 218
    :catch_5
    move-exception v3

    .line 219
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CF: utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 223
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_6
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Ljava/net/UnknownHostException;

    if-eqz v10, :cond_7

    .line 225
    const-string v10, "ImsUtService"

    const-string v11, "IMS_UT_EVENT_GET_CF: UnknownHostException."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :try_start_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    const/16 v14, 0x33f

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 231
    :catch_6
    move-exception v3

    .line 232
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CF: UnknownHostException utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 238
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_7
    :try_start_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    const/16 v14, 0x324

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    .line 241
    :catch_7
    move-exception v3

    .line 242
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CF: utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 251
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "e":Landroid/os/RemoteException;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 252
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 254
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_8

    .line 255
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    move-object v7, v10

    check-cast v7, [I

    .line 256
    .restart local v7    # "result":[I
    const/4 v10, 0x1

    new-array v6, v10, [Lcom/android/ims/ImsSsInfo;

    .line 257
    .restart local v6    # "info":[Lcom/android/ims/ImsSsInfo;
    const/4 v10, 0x0

    new-instance v11, Lcom/android/ims/ImsSsInfo;

    invoke-direct {v11}, Lcom/android/ims/ImsSsInfo;-><init>()V

    aput-object v11, v6, v10

    .line 258
    const/4 v10, 0x0

    aget-object v10, v6, v10

    const/4 v11, 0x0

    aget v11, v7, v11

    iput v11, v10, Lcom/android/ims/ImsSsInfo;->mStatus:I

    .line 261
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IMS_UT_EVENT_GET_CW: status = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v7, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :try_start_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11, v12, v6}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_0

    .line 267
    :catch_8
    move-exception v3

    .line 268
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in utConfigurationCallWaitingQueried"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 271
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v6    # "info":[Lcom/android/ims/ImsSsInfo;
    .end local v7    # "result":[I
    :cond_8
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Ljava/net/UnknownHostException;

    if-eqz v10, :cond_9

    .line 273
    const-string v10, "ImsUtService"

    const-string v11, "IMS_UT_EVENT_GET_CW: UnknownHostException."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :try_start_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    const/16 v14, 0x33f

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_0

    .line 279
    :catch_9
    move-exception v3

    .line 280
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CW: UnknownHostException utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 284
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_9
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v10, :cond_a

    .line 285
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v9, Lcom/mediatek/simservs/xcap/XcapException;

    .line 287
    .restart local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    invoke-virtual {v13, v9}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a

    goto/16 :goto_0

    .line 290
    :catch_a
    move-exception v3

    .line 291
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CW: utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 297
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_a
    :try_start_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    const/16 v14, 0x324

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_b

    goto/16 :goto_0

    .line 300
    :catch_b
    move-exception v3

    .line 301
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CW: utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 309
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "e":Landroid/os/RemoteException;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 310
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 312
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_b

    .line 313
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    move-object v7, v10

    check-cast v7, [I

    .line 314
    .restart local v7    # "result":[I
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 315
    .local v6, "info":Landroid/os/Bundle;
    const-string v10, "queryClir"

    invoke-virtual {v6, v10, v7}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 318
    :try_start_c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11, v12, v6}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_c

    goto/16 :goto_0

    .line 319
    :catch_c
    move-exception v3

    .line 320
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CLIR: utConfigurationQueried"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 324
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v6    # "info":Landroid/os/Bundle;
    .end local v7    # "result":[I
    :cond_b
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Ljava/net/UnknownHostException;

    if-eqz v10, :cond_c

    .line 326
    const-string v10, "ImsUtService"

    const-string v11, "IMS_UT_EVENT_GET_CLIR: UnknownHostException."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :try_start_d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    const/16 v14, 0x33f

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_d

    goto/16 :goto_0

    .line 332
    :catch_d
    move-exception v3

    .line 333
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CLIR: UnknownHostException utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 337
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_c
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v10, :cond_d

    .line 338
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v9, Lcom/mediatek/simservs/xcap/XcapException;

    .line 340
    .restart local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :try_start_e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    invoke-virtual {v13, v9}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_e

    goto/16 :goto_0

    .line 343
    :catch_e
    move-exception v3

    .line 344
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CLIR: utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 350
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_d
    :try_start_f
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    const/16 v14, 0x324

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_f

    goto/16 :goto_0

    .line 353
    :catch_f
    move-exception v3

    .line 354
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CLIR: utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 364
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "e":Landroid/os/RemoteException;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 365
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 367
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_e

    .line 368
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    move-object v7, v10

    check-cast v7, [I

    .line 369
    .restart local v7    # "result":[I
    new-instance v8, Lcom/android/ims/ImsSsInfo;

    invoke-direct {v8}, Lcom/android/ims/ImsSsInfo;-><init>()V

    .line 370
    .local v8, "ssInfo":Lcom/android/ims/ImsSsInfo;
    const/4 v10, 0x0

    aget v10, v7, v10

    iput v10, v8, Lcom/android/ims/ImsSsInfo;->mStatus:I

    .line 371
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 372
    .restart local v6    # "info":Landroid/os/Bundle;
    const-string v10, "imsSsInfo"

    invoke-virtual {v6, v10, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 375
    :try_start_10
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11, v12, v6}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_10

    goto/16 :goto_0

    .line 376
    :catch_10
    move-exception v3

    .line 377
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RemoteException in utConfigurationQueried, event = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 382
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v6    # "info":Landroid/os/Bundle;
    .end local v7    # "result":[I
    .end local v8    # "ssInfo":Lcom/android/ims/ImsSsInfo;
    :cond_e
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v10, :cond_f

    .line 383
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v9, Lcom/mediatek/simservs/xcap/XcapException;

    .line 385
    .restart local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :try_start_11
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    invoke-virtual {v13, v9}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_11

    goto/16 :goto_0

    .line 388
    :catch_11
    move-exception v3

    .line 389
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RemoteException in utConfigurationQueryFailed, event = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 393
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_f
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Ljava/net/UnknownHostException;

    if-eqz v10, :cond_10

    .line 395
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UnknownHostException. event = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :try_start_12
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    const/16 v14, 0x33f

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_12

    goto/16 :goto_0

    .line 401
    :catch_12
    move-exception v3

    .line 402
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RemoteException UnknownHostException utConfigurationQueryFailed, event"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 408
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_10
    :try_start_13
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    const/16 v14, 0x324

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_13

    goto/16 :goto_0

    .line 411
    :catch_13
    move-exception v3

    .line 412
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RemoteException in utConfigurationQueryFailed, event = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 428
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "e":Landroid/os/RemoteException;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 429
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 431
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_11

    .line 433
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "utConfigurationUpdated(): event = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :try_start_14
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11, v12}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_14

    goto/16 :goto_0

    .line 438
    :catch_14
    move-exception v3

    .line 439
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RemoteException in utConfigurationUpdated, event = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 444
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_11
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v10, :cond_12

    .line 445
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v9, Lcom/mediatek/simservs/xcap/XcapException;

    .line 447
    .restart local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :try_start_15
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    invoke-virtual {v13, v9}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_15

    goto/16 :goto_0

    .line 450
    :catch_15
    move-exception v3

    .line 451
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RemoteException in utConfigurationUpdateFailed, event = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 455
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_12
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Ljava/net/UnknownHostException;

    if-eqz v10, :cond_13

    .line 457
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UnknownHostException. event = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :try_start_16
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    const/16 v14, 0x33f

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_16

    goto/16 :goto_0

    .line 463
    :catch_16
    move-exception v3

    .line 464
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RemoteException UnknownHostException utConfigurationUpdateFailed, event"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 470
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_13
    :try_start_17
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    const/16 v14, 0x324

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_17

    goto/16 :goto_0

    .line 473
    :catch_17
    move-exception v3

    .line 474
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RemoteException in utConfigurationUpdateFailed, event = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 484
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "e":Landroid/os/RemoteException;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 485
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 487
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_15

    .line 488
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [Lcom/android/internal/telephony/CallForwardInfoEx;

    move-object v2, v10

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfoEx;

    .line 489
    .local v2, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfoEx;
    const/4 v5, 0x0

    .line 491
    .local v5, "imsCfInfo":[Lcom/android/ims/ImsCallForwardInfoEx;
    if-eqz v2, :cond_14

    array-length v10, v2

    if-eqz v10, :cond_14

    .line 492
    array-length v10, v2

    new-array v5, v10, [Lcom/android/ims/ImsCallForwardInfoEx;

    .line 493
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    array-length v10, v2

    if-ge v4, v10, :cond_14

    .line 494
    new-instance v6, Lcom/android/ims/ImsCallForwardInfoEx;

    invoke-direct {v6}, Lcom/android/ims/ImsCallForwardInfoEx;-><init>()V

    .line 495
    .local v6, "info":Lcom/android/ims/ImsCallForwardInfoEx;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    aget-object v11, v2, v4

    iget v11, v11, Lcom/android/internal/telephony/CallForwardInfoEx;->reason:I

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getConditionFromCFReason(I)I
    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$200(Lcom/mediatek/internal/telephony/ims/ImsUtStub;I)I

    move-result v10

    iput v10, v6, Lcom/android/ims/ImsCallForwardInfoEx;->mCondition:I

    .line 497
    aget-object v10, v2, v4

    iget v10, v10, Lcom/android/internal/telephony/CallForwardInfoEx;->status:I

    iput v10, v6, Lcom/android/ims/ImsCallForwardInfoEx;->mStatus:I

    .line 498
    aget-object v10, v2, v4

    iget v10, v10, Lcom/android/internal/telephony/CallForwardInfoEx;->serviceClass:I

    iput v10, v6, Lcom/android/ims/ImsCallForwardInfoEx;->mServiceClass:I

    .line 499
    aget-object v10, v2, v4

    iget v10, v10, Lcom/android/internal/telephony/CallForwardInfoEx;->toa:I

    iput v10, v6, Lcom/android/ims/ImsCallForwardInfoEx;->mToA:I

    .line 500
    aget-object v10, v2, v4

    iget-object v10, v10, Lcom/android/internal/telephony/CallForwardInfoEx;->number:Ljava/lang/String;

    iput-object v10, v6, Lcom/android/ims/ImsCallForwardInfoEx;->mNumber:Ljava/lang/String;

    .line 501
    aget-object v10, v2, v4

    iget v10, v10, Lcom/android/internal/telephony/CallForwardInfoEx;->timeSeconds:I

    iput v10, v6, Lcom/android/ims/ImsCallForwardInfoEx;->mTimeSeconds:I

    .line 502
    aget-object v10, v2, v4

    iget-object v10, v10, Lcom/android/internal/telephony/CallForwardInfoEx;->timeSlot:[J

    iput-object v10, v6, Lcom/android/ims/ImsCallForwardInfoEx;->mTimeSlot:[J

    .line 503
    aput-object v6, v5, v4

    .line 493
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 508
    .end local v4    # "i":I
    .end local v6    # "info":Lcom/android/ims/ImsCallForwardInfoEx;
    :cond_14
    :try_start_18
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11, v12, v5}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallForwardInTimeSlotQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsCallForwardInfoEx;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_18

    goto/16 :goto_0

    .line 510
    :catch_18
    move-exception v3

    .line 511
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CF_TIME_SLOT utConfigurationCallForwardInTimeSlotQueried"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 516
    .end local v2    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfoEx;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v5    # "imsCfInfo":[Lcom/android/ims/ImsCallForwardInfoEx;
    :cond_15
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v10, :cond_16

    .line 517
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v9, Lcom/mediatek/simservs/xcap/XcapException;

    .line 519
    .restart local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :try_start_19
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    invoke-virtual {v13, v9}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_19

    goto/16 :goto_0

    .line 522
    :catch_19
    move-exception v3

    .line 523
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CF_TIME_SLOT utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 527
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_16
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Ljava/net/UnknownHostException;

    if-eqz v10, :cond_17

    .line 529
    const-string v10, "ImsUtService"

    const-string v11, "IMS_UT_EVENT_GET_CF_TIME_SLOT: UnknownHostException."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    const/16 v14, 0x33f

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_1a

    goto/16 :goto_0

    .line 536
    :catch_1a
    move-exception v3

    .line 537
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CF_TIME_SLOT: UnknownHostException utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 543
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_17
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    const/16 v14, 0x324

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_1b

    goto/16 :goto_0

    .line 547
    :catch_1b
    move-exception v3

    .line 548
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CF_TIME_SLOT utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
