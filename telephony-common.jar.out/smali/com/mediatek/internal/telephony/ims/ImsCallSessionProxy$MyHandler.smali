.class Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;
.super Landroid/os/Handler;
.source "ImsCallSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final PAU_END_FLAG_FIELD:Ljava/lang/String; = ">"

.field private static final PAU_NAME_FIELD:Ljava/lang/String; = "<name:"

.field private static final PAU_NUMBER_FIELD:Ljava/lang/String; = "<tel:"

.field private static final PAU_SIP_NUMBER_FIELD:Ljava/lang/String; = "<sip:"


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)V
    .locals 0

    .prologue
    .line 679
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;

    .prologue
    .line 679
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;-><init>(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)V

    return-void
.end method

.method private getFieldValueFromPau(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "pau"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;

    .prologue
    .line 687
    const-string v2, ""

    .line 688
    .local v2, "value":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 689
    :cond_0
    const-string v4, "ImsCallSessionProxy"

    const-string v5, "getFieldValueFromPau()... pau or field is null !"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 703
    .end local v2    # "value":Ljava/lang/String;
    .local v3, "value":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 693
    .end local v3    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 694
    const-string v4, "ImsCallSessionProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFieldValueFromPau()... There is no such field in pau ! field / pau :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 696
    .end local v2    # "value":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 699
    .end local v3    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 700
    .local v1, "startIndex":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    .line 701
    const-string v4, ">"

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 702
    .local v0, "endIndex":I
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 703
    .end local v2    # "value":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method private retrieveMergeFail()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0xd3

    .line 832
    const/4 v2, 0x0

    .line 833
    .local v2, "mergeCallInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    const/4 v3, 0x0

    .line 834
    .local v3, "mergedCallInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    const/4 v1, 0x0

    .line 836
    .local v1, "isNotifyMergeFail":Z
    const-string v5, "ImsCallSessionProxy"

    const-string v6, "retrieveMergeFail"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$700(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$700(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 838
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$700(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    move-result-object v2

    .line 841
    :cond_0
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 842
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    move-result-object v3

    .line 845
    :cond_1
    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    .line 846
    const-string v5, "ImsCallSessionProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "retrieveMergeFail- MergeCallInfo: callId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " call status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " MergedCallInfo: callId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " call status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v5, v2, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    if-ne v5, v6, :cond_5

    iget-object v5, v3, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    if-ne v5, v6, :cond_5

    .line 852
    const/4 v1, 0x1

    .line 895
    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    .line 896
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 898
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    new-instance v7, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v7}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    invoke-interface {v5, v6, v7}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const-string v6, ""

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$702(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 905
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    sget-object v6, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->INVALID:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergeCallStatus:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1102(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;)Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    .line 906
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const-string v6, ""

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$902(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 907
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    sget-object v6, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->INVALID:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergedCallStatus:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1202(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;)Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    .line 909
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsMerging:Z
    invoke-static {v5, v9}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1302(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    .line 910
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z
    invoke-static {v5, v9}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1402(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    .line 912
    :cond_4
    return-void

    .line 853
    :cond_5
    iget-object v5, v2, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    if-ne v5, v6, :cond_6

    iget-object v5, v3, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    if-ne v5, v6, :cond_6

    .line 856
    const-string v5, "ImsCallSessionProxy"

    const-string v6, "retrieveMergeFail- two active call and hold merged call"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 858
    .local v4, "result":Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->hold(ILandroid/os/Message;)V

    goto :goto_0

    .line 859
    .end local v4    # "result":Landroid/os/Message;
    :cond_6
    iget-object v5, v2, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    if-ne v5, v6, :cond_7

    iget-object v5, v3, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    if-ne v5, v6, :cond_7

    .line 862
    const-string v5, "ImsCallSessionProxy"

    const-string v6, "retrieveMergeFail- two hold call and resume merge call"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 864
    .restart local v4    # "result":Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$700(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->resume(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 870
    .end local v4    # "result":Landroid/os/Message;
    :cond_7
    const-string v5, "ImsCallSessionProxy"

    const-string v6, "retrieveMergeFail- swap two calls"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 872
    .restart local v4    # "result":Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->swap(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 874
    .end local v4    # "result":Landroid/os/Message;
    :cond_8
    if-eqz v2, :cond_9

    if-nez v3, :cond_2

    .line 876
    :cond_9
    if-eqz v2, :cond_b

    .line 877
    const-string v5, "ImsCallSessionProxy"

    const-string v6, "retrieveMergeFail- only merge call is left"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v5, v2, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    if-eq v5, v6, :cond_a

    .line 879
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 880
    .restart local v4    # "result":Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$700(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->resume(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 882
    .end local v4    # "result":Landroid/os/Message;
    :cond_a
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 884
    :cond_b
    if-eqz v3, :cond_2

    .line 885
    const-string v5, "ImsCallSessionProxy"

    const-string v6, "retrieveMergeFail- only merged call is left"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    iget-object v5, v3, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    if-eq v5, v6, :cond_c

    .line 887
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 888
    .restart local v4    # "result":Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->hold(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 890
    .end local v4    # "result":Landroid/os/Message;
    :cond_c
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 900
    :catch_0
    move-exception v0

    .line 901
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "ImsCallSessionProxy"

    const-string v6, "RemoteException callSessionMergeFailed()"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private sipCauseFromCode(I)I
    .locals 9
    .param p1, "causeCode"    # I

    .prologue
    const/16 v3, 0x1fe

    const/16 v2, 0x154

    const/16 v8, 0x10

    const/4 v7, 0x2

    .line 707
    const-string v4, "ImsCallSessionProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sipCauseFromCode: causeCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    sparse-switch p1, :sswitch_data_0

    .line 792
    const-string v2, "ImsCallSessionProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WFC]mRatType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mRatType:I
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mRatType:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    move-result v2

    if-ne v2, v7, :cond_0

    if-eq p1, v8, :cond_0

    .line 795
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 797
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getDisconnectCause(I)I

    move-result p1

    .line 798
    const-string v2, "ImsCallSessionProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WFC] ConnectivityManager causeCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    .end local v0    # "connManager":Landroid/net/ConnectivityManager;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mRatType:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    move-result v2

    if-ne v2, v7, :cond_1

    const/16 v2, 0x7d1

    if-ne p1, v2, :cond_1

    .line 802
    const/16 v2, 0x389

    .line 825
    :goto_0
    :sswitch_0
    return v2

    .line 711
    :sswitch_1
    const/16 v2, 0x152

    goto :goto_0

    .line 715
    :sswitch_2
    const/16 v2, 0x150

    goto :goto_0

    .line 723
    :sswitch_3
    const/16 v2, 0x15f

    goto :goto_0

    .line 726
    :sswitch_4
    const/16 v2, 0x8d

    goto :goto_0

    .line 730
    :sswitch_5
    const/16 v2, 0x66

    goto :goto_0

    .line 738
    :sswitch_6
    const/16 v2, 0x162

    goto :goto_0

    .line 741
    :sswitch_7
    const/16 v2, 0xca

    goto :goto_0

    .line 744
    :sswitch_8
    const/16 v2, 0x1f6

    goto :goto_0

    .line 747
    :sswitch_9
    const/16 v2, 0x169

    goto :goto_0

    :sswitch_a
    move v2, v3

    .line 750
    goto :goto_0

    .line 754
    :sswitch_b
    const/16 v2, 0x151

    goto :goto_0

    .line 761
    :sswitch_c
    const/16 v2, 0x160

    goto :goto_0

    .line 765
    :sswitch_d
    const/16 v2, 0x14c

    goto :goto_0

    .line 772
    :sswitch_e
    const/16 v2, 0x14d

    goto :goto_0

    .line 775
    :sswitch_f
    const/16 v2, 0x153

    goto :goto_0

    .line 778
    :sswitch_10
    const/16 v2, 0x14f

    goto :goto_0

    .line 782
    :sswitch_11
    const/16 v2, 0x156

    goto :goto_0

    .line 786
    :sswitch_12
    const/16 v2, 0x149

    goto :goto_0

    .line 803
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mRatType:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    move-result v2

    if-ne v2, v7, :cond_3

    const/16 v2, 0x7d3

    if-eq p1, v2, :cond_2

    const/16 v2, 0x7d5

    if-ne p1, v2, :cond_3

    .line 806
    :cond_2
    const/16 v2, 0x38b

    goto :goto_0

    .line 807
    :cond_3
    const/16 v2, 0x7d4

    if-ne p1, v2, :cond_4

    .line 808
    const/16 v2, 0x38c

    goto :goto_0

    .line 812
    :cond_4
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ims/ImsService;->getImsServiceState()I

    move-result v1

    .line 814
    .local v1, "serviceState":I
    const-string v2, "ImsCallSessionProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "serviceState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 817
    const/16 v2, 0x6f

    goto :goto_0

    .line 818
    :cond_5
    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 819
    const/16 v2, 0x6a

    goto :goto_0

    .line 820
    :cond_6
    if-ne p1, v8, :cond_7

    move v2, v3

    .line 821
    goto/16 :goto_0

    .line 825
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 709
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x3 -> :sswitch_e
        0x6 -> :sswitch_0
        0x8 -> :sswitch_f
        0x11 -> :sswitch_1
        0x12 -> :sswitch_7
        0x13 -> :sswitch_8
        0x15 -> :sswitch_9
        0x1c -> :sswitch_b
        0x1d -> :sswitch_6
        0x1f -> :sswitch_a
        0x22 -> :sswitch_3
        0x26 -> :sswitch_c
        0x29 -> :sswitch_2
        0x2a -> :sswitch_c
        0x2b -> :sswitch_6
        0x2c -> :sswitch_2
        0x2f -> :sswitch_c
        0x31 -> :sswitch_0
        0x37 -> :sswitch_d
        0x39 -> :sswitch_d
        0x3a -> :sswitch_6
        0x3f -> :sswitch_c
        0x41 -> :sswitch_0
        0x44 -> :sswitch_4
        0x45 -> :sswitch_3
        0x51 -> :sswitch_11
        0x58 -> :sswitch_c
        0x66 -> :sswitch_10
        0x6f -> :sswitch_3
        0x7f -> :sswitch_6
        0xf0 -> :sswitch_5
        0xf1 -> :sswitch_5
        0x17c -> :sswitch_12
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 918
    const-string v3, "ImsCallSessionProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive message by ImsCallSessionProxy - CallId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1596
    :cond_0
    :goto_0
    return-void

    .line 945
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 946
    .local v9, "ar":Landroid/os/AsyncResult;
    iget-object v3, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object v11, v3

    check-cast v11, [Ljava/lang/String;

    .line 947
    .local v11, "callInfo":[Ljava/lang/String;
    const/16 v20, 0x0

    .line 948
    .local v20, "msgType":I
    const/16 v12, 0xff

    .line 950
    .local v12, "callMode":I
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_CALL_INFO_INDICATION"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const/4 v3, 0x1

    aget-object v3, v11, v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    aget-object v3, v11, v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 952
    const/4 v3, 0x1

    aget-object v3, v11, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 955
    :cond_1
    const/4 v3, 0x5

    aget-object v3, v11, v3

    if-eqz v3, :cond_2

    const/4 v3, 0x5

    aget-object v3, v11, v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 956
    const/4 v3, 0x5

    aget-object v3, v11, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 959
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsMerging:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    aget-object v3, v11, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 960
    packed-switch v20, :pswitch_data_0

    goto :goto_0

    .line 962
    :pswitch_0
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "IMS: +ECPI : conference assign call id"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    new-instance v4, Lcom/android/ims/ImsCallProfile;

    invoke-direct {v4}, Lcom/android/ims/ImsCallProfile;-><init>()V

    .line 965
    .local v4, "imsCallProfile":Lcom/android/ims/ImsCallProfile;
    const/4 v3, 0x6

    aget-object v3, v11, v3

    if-eqz v3, :cond_3

    const/4 v3, 0x6

    aget-object v3, v11, v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 966
    const-string v3, "oi"

    const/4 v5, 0x6

    aget-object v5, v11, v5

    invoke-virtual {v4, v3, v5}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    const-string v3, "remote_uri"

    const/4 v5, 0x6

    aget-object v5, v11, v5

    invoke-virtual {v4, v3, v5}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    const-string v3, "oir"

    const/4 v5, 0x2

    invoke-virtual {v4, v3, v5}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 981
    :goto_1
    new-instance v2, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/internal/telephony/ims/ImsService;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsService;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v7}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v11, v8

    invoke-direct/range {v2 .. v8}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;Lcom/mediatek/internal/telephony/ims/ImsService;Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;Ljava/lang/String;)V

    .line 984
    .local v2, "pendingConf":Lcom/android/ims/internal/IImsCallSession;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    invoke-interface {v3, v5, v2, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 986
    :catch_0
    move-exception v14

    .line 987
    .local v14, "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException when session merged started"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 977
    .end local v2    # "pendingConf":Lcom/android/ims/internal/IImsCallSession;
    .end local v14    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string v3, "oir"

    const/4 v5, 0x2

    invoke-virtual {v4, v3, v5}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 993
    .end local v4    # "imsCallProfile":Lcom/android/ims/ImsCallProfile;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v5, v11, v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 994
    sparse-switch v20, :sswitch_data_1

    goto/16 :goto_0

    .line 996
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x3

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mState:I
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;I)I

    .line 997
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "IMS: +ECPI : incoming call"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    const/4 v3, 0x5

    aget-object v3, v11, v3

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    aget-object v3, v11, v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 999
    const/4 v3, 0x5

    aget-object v3, v11, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1002
    :cond_5
    const/16 v3, 0x15

    if-ne v12, v3, :cond_6

    .line 1003
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const/4 v5, 0x4

    iput v5, v3, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 1006
    :cond_6
    const/16 v3, 0x16

    if-eq v12, v3, :cond_7

    const/16 v3, 0x17

    if-eq v12, v3, :cond_7

    const/16 v3, 0x18

    if-eq v12, v3, :cond_7

    const/16 v3, 0x19

    if-ne v12, v3, :cond_9

    .line 1010
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "mpty"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1017
    :goto_2
    const/4 v3, 0x6

    aget-object v3, v11, v3

    if-eqz v3, :cond_8

    const/4 v3, 0x6

    aget-object v3, v11, v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1018
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "oi"

    const/4 v6, 0x6

    aget-object v6, v11, v6

    invoke-virtual {v3, v5, v6}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "remote_uri"

    const/4 v6, 0x6

    aget-object v6, v11, v6

    invoke-virtual {v3, v5, v6}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "oir"

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1029
    const/16 v23, 0x1

    .line 1031
    .local v23, "serviceId":I
    const-string v3, "ImsCallSessionProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMS: sendIncomingCallIntent() call_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dialString = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x6

    aget-object v6, v11, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    new-instance v18, Landroid/content/Intent;

    const-string v3, "com.android.ims.IMS_INCOMING_CALL"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1035
    .local v18, "intent":Landroid/content/Intent;
    const-string v3, "android:imsCallID"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1036
    const-string v3, "android:imsDialString"

    const/4 v5, 0x6

    aget-object v5, v11, v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1037
    const-string v3, "android:imsServiceId"

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1038
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1013
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v23    # "serviceId":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "mpty"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1041
    :sswitch_2
    const/16 v19, 0x1

    .line 1043
    .local v19, "isIbt":I
    const/4 v3, 0x2

    aget-object v3, v11, v3

    if-eqz v3, :cond_a

    .line 1044
    const/4 v3, 0x2

    aget-object v3, v11, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 1047
    :cond_a
    if-nez v19, :cond_b

    .line 1048
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    const/4 v5, 0x0

    iput v5, v3, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 1052
    :cond_b
    const/16 v3, 0x8

    aget-object v3, v11, v3

    if-eqz v3, :cond_d

    const/16 v3, 0x8

    aget-object v3, v11, v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 1053
    const/16 v3, 0x8

    aget-object v3, v11, v3

    const-string v5, "<sip:"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->getFieldValueFromPau(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1055
    .local v26, "sipNumber":Ljava/lang/String;
    const-string v3, "ImsCallSessionProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSipNumberFromPAU()... sipNumber: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "pau"

    const/16 v6, 0x8

    aget-object v6, v11, v6

    invoke-virtual {v3, v5, v6}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    const-string v3, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1060
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "remote_uri"

    move-object/from16 v0, v26

    invoke-virtual {v3, v5, v0}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 1066
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1074
    .end local v26    # "sipNumber":Ljava/lang/String;
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 1076
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    iget-object v6, v6, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1082
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHasPendingMo:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1702(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_0

    .line 1068
    .restart local v26    # "sipNumber":Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 1069
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionUpdated"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1078
    .end local v14    # "e":Landroid/os/RemoteException;
    .end local v26    # "sipNumber":Ljava/lang/String;
    :catch_2
    move-exception v14

    .line 1079
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionProgressing"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1085
    .end local v14    # "e":Landroid/os/RemoteException;
    .end local v19    # "isIbt":I
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x4

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mState:I
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;I)I

    .line 1086
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    const/4 v5, 0x3

    iput v5, v3, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 1089
    const/16 v3, 0x16

    if-eq v12, v3, :cond_f

    const/16 v3, 0x17

    if-eq v12, v3, :cond_f

    const/16 v3, 0x18

    if-eq v12, v3, :cond_f

    const/16 v3, 0x19

    if-ne v12, v3, :cond_14

    .line 1093
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "mpty"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1100
    :goto_5
    const/16 v3, 0x8

    aget-object v3, v11, v3

    if-eqz v3, :cond_11

    const/16 v3, 0x8

    aget-object v3, v11, v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1101
    const/16 v3, 0x8

    aget-object v3, v11, v3

    const-string v5, "<sip:"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->getFieldValueFromPau(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1103
    .restart local v26    # "sipNumber":Ljava/lang/String;
    const-string v3, "ImsCallSessionProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSipNumberFromPAU()... sipNumber: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "pau"

    const/16 v6, 0x8

    aget-object v6, v11, v6

    invoke-virtual {v3, v5, v6}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    const-string v3, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "remote_uri"

    move-object/from16 v0, v26

    invoke-virtual {v3, v5, v0}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 1114
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1122
    .end local v26    # "sipNumber":Ljava/lang/String;
    :cond_11
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 1127
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHasPendingMo:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1700(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1128
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    iget-object v6, v6, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V

    .line 1132
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1138
    :cond_13
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHasPendingMo:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1702(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_0

    .line 1096
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "mpty"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 1116
    .restart local v26    # "sipNumber":Ljava/lang/String;
    :catch_3
    move-exception v14

    .line 1117
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionUpdated()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1134
    .end local v14    # "e":Landroid/os/RemoteException;
    .end local v26    # "sipNumber":Ljava/lang/String;
    :catch_4
    move-exception v14

    .line 1135
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionStarted()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1141
    .end local v14    # "e":Landroid/os/RemoteException;
    :sswitch_4
    const/16 v3, 0x8

    aget-object v3, v11, v3

    if-eqz v3, :cond_16

    const/16 v3, 0x8

    aget-object v3, v11, v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 1142
    const/16 v3, 0x8

    aget-object v3, v11, v3

    const-string v5, "<sip:"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->getFieldValueFromPau(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1144
    .restart local v26    # "sipNumber":Ljava/lang/String;
    const-string v3, "ImsCallSessionProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSipNumberFromPAU()... sipNumber: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "pau"

    const/16 v6, 0x8

    aget-object v6, v11, v6

    invoke-virtual {v3, v5, v6}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    const-string v3, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 1149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "remote_uri"

    move-object/from16 v0, v26

    invoke-virtual {v3, v5, v0}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 1154
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_6

    .line 1162
    .end local v26    # "sipNumber":Ljava/lang/String;
    :cond_16
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1400(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1164
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionHeld(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    .line 1166
    :catch_5
    move-exception v14

    .line 1167
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionHeld"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1156
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v26    # "sipNumber":Ljava/lang/String;
    :catch_6
    move-exception v14

    .line 1157
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionUpdated"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1172
    .end local v14    # "e":Landroid/os/RemoteException;
    .end local v26    # "sipNumber":Ljava/lang/String;
    :sswitch_5
    const/16 v3, 0x8

    aget-object v3, v11, v3

    if-eqz v3, :cond_18

    const/16 v3, 0x8

    aget-object v3, v11, v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 1173
    const/16 v3, 0x8

    aget-object v3, v11, v3

    const-string v5, "<sip:"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->getFieldValueFromPau(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1175
    .restart local v26    # "sipNumber":Ljava/lang/String;
    const-string v3, "ImsCallSessionProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSipNumberFromPAU()... sipNumber: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "pau"

    const/16 v6, 0x8

    aget-object v6, v11, v6

    invoke-virtual {v3, v5, v6}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    const-string v3, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 1180
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    const-string v5, "remote_uri"

    move-object/from16 v0, v26

    invoke-virtual {v3, v5, v0}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 1186
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_8

    .line 1194
    .end local v26    # "sipNumber":Ljava/lang/String;
    :cond_18
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1196
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mState:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1600(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 1197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionResumed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_0

    .line 1200
    :catch_7
    move-exception v14

    .line 1201
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException SessionResumed"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1188
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v26    # "sipNumber":Ljava/lang/String;
    :catch_8
    move-exception v14

    .line 1189
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionUpdated"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1206
    .end local v14    # "e":Landroid/os/RemoteException;
    .end local v26    # "sipNumber":Ljava/lang/String;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x1

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsOnTerminated:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1802(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    .line 1207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/16 v5, 0x8

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mState:I
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;I)I

    .line 1208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHasPendingMo:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1700(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHasPendingMo:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1702(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    .line 1210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    sget-object v5, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;->DIAL:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1902(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;)Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    .line 1214
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0x69

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    .line 1216
    .local v22, "result":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->getLastCallFailCause(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1212
    .end local v22    # "result":Landroid/os/Message;
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    sget-object v5, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;->DISCONNECT:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1902(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;)Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    goto :goto_a

    .line 1221
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const/16 v3, 0x82

    move/from16 v0, v20

    if-ne v0, v3, :cond_0

    .line 1222
    const-string v3, "ImsCallSessionProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMS: receive 130 URC, call_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v11, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x3

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mState:I
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;I)I

    .line 1224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    aget-object v5, v11, v5

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$402(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1228
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "callInfo":[Ljava/lang/String;
    .end local v12    # "callMode":I
    .end local v20    # "msgType":I
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1230
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_RINGBACK_TONE"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1234
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1237
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object v15, v3

    check-cast v15, [Ljava/lang/String;

    .line 1238
    .local v15, "econfResult":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsMerging:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1240
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_ECONF_RESULT_INDICATION"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    const/4 v3, 0x3

    aget-object v3, v15, v3

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1245
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "merge call successed"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 1250
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    invoke-interface {v3, v5}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    .line 1255
    :cond_1b
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsMerging:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1302(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    .line 1256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1402(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_0

    .line 1251
    :catch_9
    move-exception v14

    .line 1252
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionMerged()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1259
    .end local v14    # "e":Landroid/os/RemoteException;
    :cond_1c
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "merge call failed!!"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    goto/16 :goto_0

    .line 1268
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v15    # "econfResult":[Ljava/lang/String;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1270
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive DIAL_RESULT or DIAL_CONFERENCE_RESULT"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 1274
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "dial call failed!!"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0x69

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    .line 1280
    .restart local v22    # "result":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    sget-object v5, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;->DIAL:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1902(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;)Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    .line 1281
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->getLastCallFailCause(Landroid/os/Message;)V

    .line 1282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHasPendingMo:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1702(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_0

    .line 1287
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "result":Landroid/os/Message;
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1289
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_HOLD_RESULT"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1292
    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1e

    .line 1294
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "hold call failed!!"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const/16 v16, 0x0

    .line 1298
    .local v16, "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    :try_start_a
    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_1d

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->CC_CALL_HOLD_FAILED_CAUSED_BY_TERMINATED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v5, :cond_1d

    .line 1301
    new-instance v17, Lcom/android/ims/ImsReasonInfo;

    const/16 v3, 0x94

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .end local v16    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    .local v17, "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    move-object/from16 v16, v17

    .line 1306
    .end local v17    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    .restart local v16    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, v16

    invoke-interface {v3, v5, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionHoldFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a

    goto/16 :goto_0

    .line 1308
    :catch_a
    move-exception v14

    .line 1309
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionHoldFailed()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1304
    .end local v14    # "e":Landroid/os/RemoteException;
    :cond_1d
    :try_start_b
    new-instance v17, Lcom/android/ims/ImsReasonInfo;

    invoke-direct/range {v17 .. v17}, Lcom/android/ims/ImsReasonInfo;-><init>()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_a

    .end local v16    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    .restart local v17    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    move-object/from16 v16, v17

    .end local v17    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    .restart local v16    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    goto :goto_c

    .line 1313
    .end local v16    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    :cond_1e
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "hold call successed!!"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1319
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1321
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_RESUME_RESULT"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1324
    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1f

    .line 1326
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "resume call failed!!"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    new-instance v6, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v6}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionResumeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_b

    goto/16 :goto_0

    .line 1331
    :catch_b
    move-exception v14

    .line 1332
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionResumeFailed()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1336
    .end local v14    # "e":Landroid/os/RemoteException;
    :cond_1f
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "resume call successed"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1342
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1344
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_MERGE_RESULT"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1347
    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_20

    .line 1349
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "merge call failed!!"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    goto/16 :goto_0

    .line 1354
    :cond_20
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "merge call successed"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :try_start_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    invoke-interface {v3, v5}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_c

    .line 1362
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsMerging:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1302(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    .line 1363
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1402(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_0

    .line 1359
    :catch_c
    move-exception v14

    .line 1360
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionMerged()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1368
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "e":Landroid/os/RemoteException;
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1370
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_SWAP_BEFORE_MERGE_RESULT"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_21

    .line 1374
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "swap call failed!!"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    goto/16 :goto_0

    .line 1379
    :cond_21
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "swap call successed"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    move-result-object v21

    .line 1385
    .local v21, "myCallInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ims/ImsCallInfo;

    move-result-object v10

    .line 1386
    .local v10, "beMergedCallInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    if-nez v10, :cond_22

    .line 1387
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    goto/16 :goto_0

    .line 1391
    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsConferenceCallInBackgroundNecessarry:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1392
    move-object/from16 v0, v21

    iget-boolean v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mIsConference:Z

    if-eqz v3, :cond_23

    .line 1393
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "beMergedCall in foreground merge conference call"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0xce

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    .line 1395
    .restart local v22    # "result":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, v10, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v3, v5, v6, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1401
    .end local v22    # "result":Landroid/os/Message;
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0xce

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    .line 1402
    .restart local v22    # "result":Landroid/os/Message;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "myCall in foreground merge conference call"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v3

    iget-object v5, v10, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v3, v5, v6, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1408
    .end local v22    # "result":Landroid/os/Message;
    :cond_24
    move-object/from16 v0, v21

    iget-boolean v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mIsConference:Z

    if-eqz v3, :cond_25

    .line 1409
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "myCallI in foreground merge normal call"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0xce

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    .line 1411
    .restart local v22    # "result":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, v10, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v3, v5, v6, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1414
    .end local v22    # "result":Landroid/os/Message;
    :cond_25
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "beMergedCall in foreground merge normal call"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0xce

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    .line 1416
    .restart local v22    # "result":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v3

    iget-object v5, v10, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v3, v5, v6, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1427
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "beMergedCallInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    .end local v21    # "myCallInfo":Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
    .end local v22    # "result":Landroid/os/Message;
    :sswitch_e
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_RETRIEVE_MERGE_FAIL_RESULT"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 1432
    :try_start_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    new-instance v6, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v6}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_d

    .line 1439
    :cond_26
    :goto_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const-string v5, ""

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$702(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 1440
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    sget-object v5, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->INVALID:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergeCallStatus:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1102(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;)Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    .line 1441
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const-string v5, ""

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$902(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 1442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    sget-object v5, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->INVALID:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mMergedCallStatus:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1202(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;)Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    .line 1443
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsMerging:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1302(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    .line 1444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1402(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_0

    .line 1434
    :catch_d
    move-exception v14

    .line 1435
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionMergeFailed()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1447
    .end local v14    # "e":Landroid/os/RemoteException;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1449
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_ADD_CONFERENCE_RESULT"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsMerging:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1453
    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 1454
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    goto/16 :goto_0

    .line 1462
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsOnTerminated:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_0

    .line 1466
    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_28

    .line 1467
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x1

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2102(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    .line 1469
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # operator++ for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2208(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    .line 1471
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    move-result v5

    if-ge v3, v5, :cond_29

    .line 1472
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0xce

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    .line 1474
    .restart local v22    # "result":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2400(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I
    invoke-static {v7}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    move-result v7

    aget-object v6, v6, v7

    move-object/from16 v0, v22

    invoke-virtual {v3, v5, v6, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1478
    .end local v22    # "result":Landroid/os/Message;
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 1479
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 1481
    :try_start_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    new-instance v6, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v6}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_e

    .line 1495
    :cond_2a
    :goto_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2102(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_0

    .line 1483
    :catch_e
    move-exception v14

    .line 1484
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException InviteFailed()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1488
    .end local v14    # "e":Landroid/os/RemoteException;
    :cond_2b
    :try_start_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    invoke-interface {v3, v5}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_f

    goto :goto_f

    .line 1490
    :catch_f
    move-exception v14

    .line 1491
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException InviteDelivered()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1500
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "e":Landroid/os/RemoteException;
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1502
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_REMOVE_CONFERENCE_RESULT"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsOnTerminated:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_0

    .line 1509
    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2c

    .line 1510
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x1

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2102(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    .line 1513
    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # operator++ for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2208(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    .line 1514
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2300(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    move-result v5

    if-ge v3, v5, :cond_2d

    .line 1515
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0xce

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    .line 1517
    .restart local v22    # "result":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2400(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I
    invoke-static {v7}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)I

    move-result v7

    aget-object v6, v6, v7

    move-object/from16 v0, v22

    invoke-virtual {v3, v5, v6, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->removeParticipants(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1520
    .end local v22    # "result":Landroid/os/Message;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 1521
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 1523
    :try_start_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    new-instance v6, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v6}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    invoke-interface {v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_10

    .line 1537
    :cond_2e
    :goto_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$2102(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_0

    .line 1525
    :catch_10
    move-exception v14

    .line 1526
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException RemoveFailed()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1530
    .end local v14    # "e":Landroid/os/RemoteException;
    :cond_2f
    :try_start_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    invoke-interface {v3, v5}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_11

    goto :goto_10

    .line 1532
    :catch_11
    move-exception v14

    .line 1533
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException RemoveDelivered()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1541
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "e":Landroid/os/RemoteException;
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1543
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const/16 v24, 0x0

    .line 1545
    .local v24, "sipCauseCode":I
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "receive EVENT_GET_LAST_CALL_FAIL_CAUSE"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_30

    .line 1549
    new-instance v16, Lcom/android/ims/ImsReasonInfo;

    invoke-direct/range {v16 .. v16}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    .line 1556
    .restart local v16    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    :goto_11
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$2;->$SwitchMap$com$mediatek$internal$telephony$ims$ImsCallSessionProxy$CallErrorState:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$1900(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_0

    .line 1558
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1560
    :try_start_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, v16

    invoke-interface {v3, v5, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionStartFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_12

    goto/16 :goto_0

    .line 1562
    :catch_12
    move-exception v14

    .line 1563
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionStartFailed()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1551
    .end local v14    # "e":Landroid/os/RemoteException;
    .end local v16    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    :cond_30
    iget-object v3, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v5, 0x0

    aget v13, v3, v5

    .line 1552
    .local v13, "causeCode":I
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->sipCauseFromCode(I)I

    move-result v24

    .line 1553
    new-instance v16, Lcom/android/ims/ImsReasonInfo;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-direct {v0, v1, v3}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .restart local v16    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    goto :goto_11

    .line 1568
    .end local v13    # "causeCode":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1570
    :try_start_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, v16

    invoke-interface {v3, v5, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionTerminated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_13

    goto/16 :goto_0

    .line 1572
    :catch_13
    move-exception v14

    .line 1573
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy"

    const-string v5, "RemoteException callSessionTerminated()"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1582
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "e":Landroid/os/RemoteException;
    .end local v16    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    .end local v24    # "sipCauseCode":I
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1583
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v25, v3

    check-cast v25, [I

    .line 1586
    .local v25, "sipMessage":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1587
    if-eqz v25, :cond_0

    const/4 v3, 0x0

    aget v3, v25, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v3, v5, :cond_0

    .line 1588
    const-string v3, "ImsCallSessionProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive sip cause ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x4

    aget v6, v25, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 921
    nop

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_0
        0x67 -> :sswitch_7
        0x68 -> :sswitch_8
        0x69 -> :sswitch_11
        0xc9 -> :sswitch_9
        0xcb -> :sswitch_a
        0xcc -> :sswitch_b
        0xcd -> :sswitch_c
        0xce -> :sswitch_f
        0xcf -> :sswitch_10
        0xd0 -> :sswitch_12
        0xd1 -> :sswitch_9
        0xd2 -> :sswitch_d
        0xd3 -> :sswitch_e
    .end sparse-switch

    .line 960
    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_0
    .end packed-switch

    .line 994
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_2
        0x6 -> :sswitch_3
        0x83 -> :sswitch_4
        0x84 -> :sswitch_5
        0x85 -> :sswitch_6
    .end sparse-switch

    .line 1556
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
