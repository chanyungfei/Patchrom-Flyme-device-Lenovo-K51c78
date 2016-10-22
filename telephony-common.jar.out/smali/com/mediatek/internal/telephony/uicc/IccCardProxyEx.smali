.class public Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;
.super Landroid/os/Handler;
.source "IccCardProxyEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx$1;
    }
.end annotation


# static fields
.field private static final APPLICATION_ID_ISIM:I = 0x0

.field private static final APPLICATION_ID_MAX:I = 0x1

.field private static final DBG:Z = true

.field private static final EVENT_APP_READY:I = 0x3

.field private static final EVENT_ICC_CHANGED:I = 0x2

.field private static final EVENT_NOT_AVAILABLE:I = 0x1

.field private static final EVENT_RECORDS_LOADED:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "IccCardProxyEx"


# instance fields
.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentAppType:I

.field private mExternalState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field private mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

.field private final mLock:Ljava/lang/Object;

.field private mSlotId:I

.field private mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 73
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mLock:Ljava/lang/Object;

    .line 80
    const/4 v1, 0x3

    iput v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mCurrentAppType:I

    .line 81
    iput-object v5, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 83
    iput-object v5, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 84
    new-array v1, v2, [Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 86
    new-array v1, v2, [Lcom/android/internal/telephony/uicc/IccRecords;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    .line 89
    new-array v1, v4, [Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mExternalState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 97
    iput-object p2, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mContext:Landroid/content/Context;

    .line 98
    iput-object p3, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 100
    iput p1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mSlotId:I

    .line 102
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mSlotId:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 103
    .local v0, "index":Ljava/lang/Integer;
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 104
    invoke-interface {p3, p0, v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 105
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/internal/telephony/uicc/UiccController;->registerForApplicationChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 107
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v1, v3}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 108
    const-string v1, "Creating"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;-><init>(ILandroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 94
    return-void
.end method

.method private broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "appId"    # I

    .prologue
    .line 245
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 247
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mediatek.intent.action.ACTION_SIM_STATE_CHANGED_MULTI_APPLICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phoneName"

    const-string v3, "Phone"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v1, "ss"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v1, "reason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mSlotId:I

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 253
    const-string v1, "appId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting intent ACTION_SIM_STATE_CHANGED_MULTI_APPLICATION "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " reason "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " slotd id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mSlotId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " app id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 256
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v3, -0x1

    invoke-static {v0, v1, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 258
    monitor-exit v2

    .line 259
    return-void

    .line 258
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 283
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx$1;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 292
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 284
    :pswitch_0
    const-string v0, "ABSENT"

    goto :goto_0

    .line 285
    :pswitch_1
    const-string v0, "LOCKED"

    goto :goto_0

    .line 286
    :pswitch_2
    const-string v0, "LOCKED"

    goto :goto_0

    .line 287
    :pswitch_3
    const-string v0, "LOCKED"

    goto :goto_0

    .line 288
    :pswitch_4
    const-string v0, "READY"

    goto :goto_0

    .line 289
    :pswitch_5
    const-string v0, "NOT_READY"

    goto :goto_0

    .line 290
    :pswitch_6
    const-string v0, "LOCKED"

    goto :goto_0

    .line 291
    :pswitch_7
    const-string v0, "CARD_IO_ERROR"

    goto :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;I)Ljava/lang/String;
    .locals 3
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "appId"    # I

    .prologue
    const/4 v0, 0x0

    .line 301
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx$1;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 315
    :goto_0
    :pswitch_0
    return-object v0

    .line 302
    :pswitch_1
    const-string v0, "PIN"

    goto :goto_0

    .line 303
    :pswitch_2
    const-string v0, "PUK"

    goto :goto_0

    .line 305
    :pswitch_3
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx$1;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$PersoSubState:[I

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 306
    :pswitch_4
    const-string v0, "NETWORK"

    goto :goto_0

    .line 307
    :pswitch_5
    const-string v0, "NETWORK_SUBSET"

    goto :goto_0

    .line 308
    :pswitch_6
    const-string v0, "CORPORATE"

    goto :goto_0

    .line 309
    :pswitch_7
    const-string v0, "SERVICE_PROVIDER"

    goto :goto_0

    .line 310
    :pswitch_8
    const-string v0, "SIM"

    goto :goto_0

    .line 313
    :pswitch_9
    const-string v0, "PERM_DISABLED"

    goto :goto_0

    .line 314
    :pswitch_a
    const-string v0, "CARD_IO_ERROR"

    goto :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 305
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getIndex(Landroid/os/Message;)Ljava/lang/Integer;
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 358
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 365
    .local v1, "index":Ljava/lang/Integer;
    if-eqz p1, :cond_0

    .line 366
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 367
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 375
    .restart local v1    # "index":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-object v1

    .line 368
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/AsyncResult;

    if-eqz v2, :cond_0

    .line 369
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 370
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 371
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .restart local v1    # "index":Ljava/lang/Integer;
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 380
    const-string v1, "IccCardProxyEx"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mSlotId:I

    if-nez v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return-void

    .line 380
    :cond_0
    const-string v0, "2"

    goto :goto_0
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 384
    const-string v1, "IccCardProxyEx"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mSlotId:I

    if-nez v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return-void

    .line 384
    :cond_0
    const-string v0, "2"

    goto :goto_0
.end method

.method private registerUiccCardEvents(I)V
    .locals 4
    .param p1, "appId"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v0, v0, p1

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mSlotId:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v0, v0, p1

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mSlotId:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 237
    :cond_1
    return-void
.end method

.method private setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 2
    .param p1, "newState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "appId"    # I

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExternalState(): newState =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " appId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 279
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;ZI)V

    .line 280
    return-void
.end method

.method private setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;ZI)V
    .locals 3
    .param p1, "newState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "override"    # Z
    .param p3, "appId"    # I

    .prologue
    .line 262
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 263
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExternalState(): mExternalState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mExternalState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " newState =  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " override = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 266
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mExternalState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p3

    if-ne p1, v0, :cond_0

    .line 267
    monitor-exit v1

    .line 275
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mExternalState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object p1, v0, p3

    .line 272
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mExternalState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p3

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mExternalState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p3

    invoke-direct {p0, v2, p3}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p3}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;I)V

    .line 274
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private unregisterUiccCardEvents(I)V
    .locals 1
    .param p1, "appId"    # I

    .prologue
    .line 240
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v0, v0, p1

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v0, v0, p1

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 242
    :cond_1
    return-void
.end method

.method private updateExternalState(I)V
    .locals 2
    .param p1, "appId"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-nez v0, :cond_0

    .line 200
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 228
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    .line 204
    :cond_1
    const-string v0, "updateExternalState = ABENT"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 205
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;ZI)V

    goto :goto_0

    .line 209
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CardState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v1, :cond_3

    .line 212
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    goto :goto_0

    .line 216
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUiccApplication[appId] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 219
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx$1;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppState:[I

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 222
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    goto/16 :goto_0

    .line 225
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    goto/16 :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateIccAvailability(I)V
    .locals 8
    .param p1, "appId"    # I

    .prologue
    .line 161
    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 162
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v7, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mSlotId:I

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    .line 163
    .local v2, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 164
    .local v4, "state":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    const/4 v1, 0x0

    .line 165
    .local v1, "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v3, 0x0

    .line 166
    .local v3, "newRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v0, 0x0

    .line 168
    .local v0, "appType":I
    packed-switch p1, :pswitch_data_0

    .line 176
    :goto_0
    if-eqz v2, :cond_0

    .line 177
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v4

    .line 178
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 179
    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    .line 184
    :cond_0
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v5, v5, p1

    if-ne v5, v3, :cond_1

    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v5, v5, p1

    if-ne v5, v1, :cond_1

    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eq v5, v2, :cond_2

    .line 185
    :cond_1
    const-string v5, "Icc changed. Reregestering."

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 186
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->unregisterUiccCardEvents(I)V

    .line 187
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 188
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aput-object v1, v5, p1

    .line 189
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aput-object v3, v5, p1

    .line 190
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->registerUiccCardEvents(I)V

    .line 193
    :cond_2
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->updateExternalState(I)V

    .line 194
    monitor-exit v6

    .line 195
    return-void

    .line 170
    :pswitch_0
    const/4 v0, 0x3

    .line 171
    goto :goto_0

    .line 194
    .end local v0    # "appType":I
    .end local v1    # "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v2    # "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v3    # "newRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v4    # "state":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    const-string v0, "Disposing"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 116
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForApplicationChanged(Landroid/os/Handler;)V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 118
    monitor-exit v1

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccFileHandler(I)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 2
    .param p1, "appId"    # I

    .prologue
    .line 347
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    monitor-exit v1

    .line 351
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 3
    .param p1, "family"    # I

    .prologue
    .line 327
    const/4 v0, -0x1

    .line 328
    .local v0, "appId":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 329
    packed-switch p1, :pswitch_data_0

    .line 334
    :try_start_0
    const-string v1, "Not Support"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 338
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v1, v1, v0

    monitor-exit v2

    .line 341
    :goto_1
    return-object v1

    .line 331
    :pswitch_0
    const/4 v0, 0x0

    .line 332
    goto :goto_0

    .line 341
    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_1

    .line 343
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public getState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 2
    .param p1, "appId"    # I

    .prologue
    .line 320
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mExternalState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p1

    monitor-exit v1

    return-object v0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 125
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->getIndex(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v2

    .line 127
    .local v2, "index":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->mSlotId:I

    if-eq v3, v4, :cond_2

    .line 128
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " received with event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->loge(Ljava/lang/String;)V

    .line 158
    :cond_1
    :goto_0
    return-void

    .line 132
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled message with number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :pswitch_0
    const-string v3, "handleMessage (EVENT_NOT_AVAILABLE)"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 135
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v3, 0x1

    if-ge v1, v3, :cond_1

    .line 136
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v3, v1}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 141
    .end local v1    # "i":I
    :pswitch_1
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->updateIccAvailability(I)V

    goto :goto_0

    .line 145
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    .line 146
    .local v0, "ar":Landroid/os/AsyncResult;
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v3, v5}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    goto :goto_0

    .line 150
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    .line 151
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const-string v3, "LOADED"

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/mediatek/internal/telephony/uicc/IccCardProxyEx;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
