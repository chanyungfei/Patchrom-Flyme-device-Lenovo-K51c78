.class public Lcom/mediatek/internal/telephony/CellConnMgr;
.super Ljava/lang/Object;
.source "CellConnMgr.java"


# static fields
.field private static final INTENT_SET_RADIO_POWER:Ljava/lang/String; = "com.mediatek.internal.telephony.RadioManager.intent.action.FORCE_SET_RADIO_POWER"

.field public static final STATE_FLIGHT_MODE:I = 0x1

.field public static final STATE_RADIO_OFF:I = 0x2

.field public static final STATE_READY:I = 0x0

.field public static final STATE_ROAMING:I = 0x8

.field public static final STATE_SIM_LOCKED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CellConnMgr"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/mediatek/internal/telephony/CellConnMgr;->mContext:Landroid/content/Context;

    .line 54
    iget-object v0, p0, Lcom/mediatek/internal/telephony/CellConnMgr;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CellConnMgr must be created by indicated context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    return-void
.end method

.method private clearRoamingNeeded(I)V
    .locals 0
    .param p1, "slot"    # I

    .prologue
    .line 427
    return-void
.end method

.method private isRadioOffBySimManagement(I)Z
    .locals 6
    .param p1, "subId"    # I

    .prologue
    .line 363
    const/4 v2, 0x1

    .line 365
    .local v2, "result":Z
    :try_start_0
    const-string v3, "phoneEx"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 368
    .local v1, "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_0

    .line 369
    const-string v3, "CellConnMgr"

    const-string v4, "[isRadioOffBySimManagement] iTelEx is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/4 v3, 0x0

    .line 379
    .end local v1    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :goto_0
    return v3

    .line 373
    .restart local v1    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :cond_0
    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isRadioOffBySimManagement(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 378
    .end local v1    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :goto_1
    const-string v3, "CellConnMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isRadioOffBySimManagement]  subId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 379
    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private isRadioOn(I)Z
    .locals 6
    .param p1, "subId"    # I

    .prologue
    .line 384
    const-string v3, "CellConnMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRadioOff verify subId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/4 v2, 0x1

    .line 387
    .local v2, "radioOn":Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 390
    .local v1, "iTel":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 391
    const-string v3, "CellConnMgr"

    const-string v4, "isRadioOff iTel is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/4 v3, 0x0

    .line 401
    .end local v1    # "iTel":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v3

    .line 395
    .restart local v1    # "iTel":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isRadioOnForSubscriber(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 400
    .end local v1    # "iTel":Lcom/android/internal/telephony/ITelephony;
    :goto_1
    const-string v3, "CellConnMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRadioOff subId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " radio on? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 401
    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private isRoamingNeeded(I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 407
    const/4 v0, 0x0

    return v0
.end method

.method private roamingRequest(I)Z
    .locals 6
    .param p1, "subId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    const/4 v0, 0x1

    .line 430
    const-string v2, "CellConnMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "roamingRequest subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 433
    const-string v2, "CellConnMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "roamingRequest subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is roaming"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v2, p0, Lcom/mediatek/internal/telephony/CellConnMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "roaming_reminder_mode_setting"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 441
    const-string v1, "CellConnMgr"

    const-string v2, "roamingRequest reminder always"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :goto_0
    return v0

    .line 435
    :cond_0
    const-string v0, "CellConnMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "roamingRequest subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not roaming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 436
    goto :goto_0

    .line 445
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/CellConnMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "roaming_reminder_mode_setting"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/CellConnMgr;->isRoamingNeeded(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 448
    const-string v1, "CellConnMgr"

    const-string v2, "roamingRequest reminder once and need to indicate"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 452
    :cond_2
    const-string v0, "CellConnMgr"

    const-string v2, "roamingRequest result = false"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 453
    goto :goto_0
.end method


# virtual methods
.method public getCurrentState(II)I
    .locals 10
    .param p1, "subId"    # I
    .param p2, "requestType"    # I

    .prologue
    .line 76
    const/4 v5, 0x0

    .line 79
    .local v5, "state":I
    iget-object v7, p0, Lcom/mediatek/internal/telephony/CellConnMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    const/4 v9, -0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 83
    .local v0, "flightMode":I
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/CellConnMgr;->isRadioOn(I)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/CellConnMgr;->isRadioOffBySimManagement(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v2, 0x1

    .line 86
    .local v2, "isRadioOff":Z
    :goto_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v4

    .line 87
    .local v4, "slotId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 88
    .local v6, "telephonyMgr":Landroid/telephony/TelephonyManager;
    const/4 v7, 0x2

    invoke-virtual {v6, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v8

    if-eq v7, v8, :cond_0

    const/4 v7, 0x3

    invoke-virtual {v6, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v8

    if-eq v7, v8, :cond_0

    const/4 v7, 0x4

    invoke-virtual {v6, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v8

    if-ne v7, v8, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 94
    .local v1, "isLocked":Z
    :goto_1
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/CellConnMgr;->roamingRequest(I)Z

    move-result v3

    .line 96
    .local v3, "isRoaming":Z
    const-string v7, "CellConnMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getCurrentState]subId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", requestType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; (flight mode, radio off, locked, roaming) = ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    packed-switch p2, :pswitch_data_0

    .line 126
    :pswitch_0
    const/4 v7, 0x1

    if-ne v0, v7, :cond_b

    const/4 v7, 0x1

    move v8, v7

    :goto_2
    if-eqz v2, :cond_c

    const/4 v7, 0x2

    :goto_3
    or-int/2addr v8, v7

    if-eqz v1, :cond_d

    const/4 v7, 0x4

    :goto_4
    or-int/2addr v8, v7

    if-eqz v3, :cond_e

    const/16 v7, 0x8

    :goto_5
    or-int v5, v8, v7

    .line 132
    :goto_6
    const-string v7, "CellConnMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getCurrentState] state:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return v5

    .line 83
    .end local v1    # "isLocked":Z
    .end local v2    # "isRadioOff":Z
    .end local v3    # "isRoaming":Z
    .end local v4    # "slotId":I
    .end local v6    # "telephonyMgr":Landroid/telephony/TelephonyManager;
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 88
    .restart local v2    # "isRadioOff":Z
    .restart local v4    # "slotId":I
    .restart local v6    # "telephonyMgr":Landroid/telephony/TelephonyManager;
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 102
    .restart local v1    # "isLocked":Z
    .restart local v3    # "isRoaming":Z
    :pswitch_1
    const/4 v7, 0x1

    if-ne v0, v7, :cond_3

    const/4 v5, 0x1

    .line 103
    :goto_7
    goto :goto_6

    .line 102
    :cond_3
    const/4 v5, 0x0

    goto :goto_7

    .line 106
    :pswitch_2
    if-eqz v2, :cond_4

    const/4 v5, 0x2

    .line 107
    :goto_8
    goto :goto_6

    .line 106
    :cond_4
    const/4 v5, 0x0

    goto :goto_8

    .line 110
    :pswitch_3
    const/4 v7, 0x1

    if-ne v0, v7, :cond_5

    const/4 v7, 0x1

    move v8, v7

    :goto_9
    if-eqz v2, :cond_6

    const/4 v7, 0x2

    :goto_a
    or-int/2addr v8, v7

    if-eqz v1, :cond_7

    const/4 v7, 0x4

    :goto_b
    or-int v5, v8, v7

    .line 113
    goto :goto_6

    .line 110
    :cond_5
    const/4 v7, 0x0

    move v8, v7

    goto :goto_9

    :cond_6
    const/4 v7, 0x0

    goto :goto_a

    :cond_7
    const/4 v7, 0x0

    goto :goto_b

    .line 119
    :pswitch_4
    const/4 v7, 0x1

    if-ne v0, v7, :cond_8

    const/4 v7, 0x1

    move v8, v7

    :goto_c
    if-eqz v2, :cond_9

    const/4 v7, 0x2

    :goto_d
    or-int/2addr v8, v7

    if-eqz v3, :cond_a

    const/16 v7, 0x8

    :goto_e
    or-int v5, v8, v7

    .line 123
    goto :goto_6

    .line 119
    :cond_8
    const/4 v7, 0x0

    move v8, v7

    goto :goto_c

    :cond_9
    const/4 v7, 0x0

    goto :goto_d

    :cond_a
    const/4 v7, 0x0

    goto :goto_e

    .line 126
    :cond_b
    const/4 v7, 0x0

    move v8, v7

    goto :goto_2

    :cond_c
    const/4 v7, 0x0

    goto :goto_3

    :cond_d
    const/4 v7, 0x0

    goto :goto_4

    :cond_e
    const/4 v7, 0x0

    goto :goto_5

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getStringUsingState(II)Ljava/util/ArrayList;
    .locals 10
    .param p1, "subId"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const v5, 0x805009c

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v0, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "CellConnMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getStringUsingState] subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    .line 160
    .local v1, "svlteSlot":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isRuimCsim(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 161
    and-int/lit8 v2, p2, 0x3

    if-ne v2, v8, :cond_1

    .line 164
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x80500a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x80500a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x805009b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    const-string v2, "CellConnMgr"

    const-string v3, "[getStringUsingState] STATE_FLIGHT_MODE + STATE_RADIO_OFF"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    :goto_0
    const-string v2, "CellConnMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getStringUsingState]stringList size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    return-object v2

    .line 173
    :cond_1
    and-int/lit8 v2, p2, 0x1

    if-ne v2, v6, :cond_2

    .line 175
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x805007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x805007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x805009e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    const-string v2, "CellConnMgr"

    const-string v3, "[getStringUsingState] STATE_FLIGHT_MODE"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    :cond_2
    and-int/lit8 v2, p2, 0x2

    if-ne v2, v7, :cond_3

    .line 186
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x80500a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x80500a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x805009f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    const-string v2, "CellConnMgr"

    const-string v3, "[getStringUsingState] STATE_RADIO_OFF"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 195
    :cond_3
    and-int/lit8 v2, p2, 0x4

    if-ne v2, v9, :cond_0

    .line 197
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x80500a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x80500a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x805009d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    const-string v2, "CellConnMgr"

    const-string v3, "[getStringUsingState] STATE_SIM_LOCKED"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 208
    :cond_4
    and-int/lit8 v2, p2, 0x3

    if-ne v2, v8, :cond_5

    .line 211
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x805008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x805008b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x805009b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    const-string v2, "CellConnMgr"

    const-string v3, "[getStringUsingState] STATE_FLIGHT_MODE + STATE_RADIO_OFF"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 220
    :cond_5
    and-int/lit8 v2, p2, 0x1

    if-ne v2, v6, :cond_6

    .line 222
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x805007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x805007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x805009e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    const-string v2, "CellConnMgr"

    const-string v3, "[getStringUsingState] STATE_FLIGHT_MODE"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 231
    :cond_6
    and-int/lit8 v2, p2, 0x2

    if-ne v2, v7, :cond_7

    .line 233
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x805007e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x805007f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x805009f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    const-string v2, "CellConnMgr"

    const-string v3, "[getStringUsingState] STATE_RADIO_OFF"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 242
    :cond_7
    and-int/lit8 v2, p2, 0x4

    if-ne v2, v9, :cond_0

    .line 244
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x805008c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x805008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x805009d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    const-string v2, "CellConnMgr"

    const-string v3, "[getStringUsingState] STATE_SIM_LOCKED"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public handleRequest(II)V
    .locals 12
    .param p1, "subId"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 286
    const-string v6, "CellConnMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleRequest] subId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", state:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    and-int/lit8 v6, p2, 0x1

    if-ne v6, v10, :cond_0

    .line 290
    iget-object v6, p0, Lcom/mediatek/internal/telephony/CellConnMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 292
    iget-object v6, p0, Lcom/mediatek/internal/telephony/CellConnMgr;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "state"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 296
    const-string v6, "CellConnMgr"

    const-string v7, "[handleRequest] Turn off flight mode."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    and-int/lit8 v6, p2, 0x2

    if-ne v6, v11, :cond_5

    .line 301
    const/4 v4, 0x0

    .line 302
    .local v4, "mSimMode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 304
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    .line 306
    .local v5, "targetSubId":[I
    if-eqz v5, :cond_1

    aget v6, v5, v9

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/CellConnMgr;->isRadioOn(I)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v6

    if-ne v1, v6, :cond_3

    .line 308
    :cond_2
    shl-int v6, v10, v1

    or-int/2addr v4, v6

    .line 302
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    .end local v5    # "targetSubId":[I
    :cond_4
    iget-object v6, p0, Lcom/mediatek/internal/telephony/CellConnMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "msim_mode_setting"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 315
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.mediatek.internal.telephony.RadioManager.intent.action.FORCE_SET_RADIO_POWER"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "mode"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    iget-object v6, p0, Lcom/mediatek/internal/telephony/CellConnMgr;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 319
    const-string v6, "CellConnMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleRequest] Turn radio on, MSIM mode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .end local v1    # "i":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "mSimMode":I
    :cond_5
    and-int/lit8 v6, p2, 0x1

    if-eq v6, v10, :cond_6

    and-int/lit8 v6, p2, 0x2

    if-eq v6, v11, :cond_6

    and-int/lit8 v6, p2, 0x4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    .line 334
    :try_start_0
    const-string v6, "phoneEx"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 337
    .local v2, "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->broadcastIccUnlockIntent(I)Z

    .line 339
    const-string v6, "CellConnMgr"

    const-string v7, "[handleRequest] broadcastIccUnlockIntent"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 359
    .end local v2    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :cond_6
    :goto_1
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 343
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 344
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v6, "CellConnMgr"

    const-string v7, "ITelephonyEx is null"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method
