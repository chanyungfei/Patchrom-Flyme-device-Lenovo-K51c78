.class public Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;
.super Landroid/os/Handler;
.source "SvlteUiccController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/uicc/SvlteUiccController$1;,
        Lcom/mediatek/internal/telephony/uicc/SvlteUiccController$SingletonHolder;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_C2K_WP_CARD_TYPE_READY:I = 0x1

.field private static final EVENT_ICC_CHANGED:I = 0x2

.field private static final INVALID_APP_TYPE:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SvlteUiccController"


# instance fields
.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 71
    const-string v0, "Constructing"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->logd(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 73
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForC2KWPCardTypeReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 75
    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/uicc/SvlteUiccController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/uicc/SvlteUiccController$1;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;-><init>()V

    return-void
.end method

.method private doIccAppTypeSwitch(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "radioTech"    # I

    .prologue
    .line 134
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccCardProxy;

    .line 135
    .local v0, "iccCard":Lcom/android/internal/telephony/uicc/IccCardProxy;
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setVoiceRadioTech(I)V

    .line 136
    return-void
.end method

.method private doOP09SvlteTestSimAppTypeSwitch(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OP09 Switch gsm radio technology for usim in slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->logd(Ljava/lang/String;)V

    .line 168
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->doIccAppTypeSwitch(II)V

    .line 169
    return-void
.end method

.method private doRemoteSimAppSwitchCheck()V
    .locals 4

    .prologue
    .line 191
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v1

    .line 192
    .local v1, "slotId":I
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->isNeedSwitchRemoteSimApp(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->getRemoteSimSlotAppType(I)I

    move-result v0

    .line 195
    .local v0, "appType":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote SIM, IccCard switch to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->getAppFamilyTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->logd(Ljava/lang/String;)V

    .line 197
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->getRadioTechByUiccAppType(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->doIccAppTypeSwitch(II)V

    .line 199
    .end local v0    # "appType":I
    :cond_0
    return-void
.end method

.method private getActivePhoneAppType(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x1

    .line 234
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    .line 235
    .local v0, "phone":Lcom/android/internal/telephony/PhoneProxy;
    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 242
    :goto_0
    return v1

    .line 236
    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    .line 240
    :cond_1
    const-string v1, "Could not get valid phone instance."

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->loge(Ljava/lang/String;)V

    .line 242
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getAppFamilyTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "appType"    # I

    .prologue
    .line 220
    packed-switch p1, :pswitch_data_0

    .line 223
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 221
    :pswitch_0
    const-string v0, "APP_FAM_3GPP"

    goto :goto_0

    .line 222
    :pswitch_1
    const-string v0, "APP_FAM_3GPP2"

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;
    .locals 2

    .prologue
    .line 67
    const-class v0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController$SingletonHolder;->INSTANCE:Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getRadioTechByUiccAppType(I)I
    .locals 1
    .param p1, "appType"    # I

    .prologue
    .line 212
    packed-switch p1, :pswitch_data_0

    .line 215
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 213
    :pswitch_0
    const/16 v0, 0x10

    goto :goto_0

    .line 214
    :pswitch_1
    const/16 v0, 0x8

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getRemoteSimSlotAppType(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method private isNeedAlignRemoteSimAppType(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->getActivePhoneAppType(I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->getRemoteSimSlotAppType(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedSwitchRemoteSimApp(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 202
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq v0, p1, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimWithCsim(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOP09()Z
    .locals 2

    .prologue
    .line 180
    const-string v0, "ro.operator.optr"

    const-string v1, "OM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OP09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSimReady(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 184
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 185
    .local v0, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isUsimTestSim(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 172
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->isOP09()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimOnly(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->isSvlteTestSimMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 263
    const-string v0, "SvlteUiccController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 267
    const-string v0, "SvlteUiccController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void
.end method

.method public static make()Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;

    move-result-object v0

    return-object v0
.end method

.method private onCardTypeReady()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->doRemoteSimAppSwitchCheck()V

    .line 140
    return-void
.end method

.method private onIccCardStatusChange(I)V
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->logd(Ljava/lang/String;)V

    .line 147
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->isSimReady(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->isUsimTestSim(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->doOP09SvlteTestSimAppTypeSwitch(I)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->isNeedSwitchRemoteSimApp(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->isNeedAlignRemoteSimAppType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->getRemoteSimSlotAppType(I)I

    move-result v0

    .line 156
    .local v0, "appType":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ICC: Remote SIM, switch to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->getAppFamilyTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->logd(Ljava/lang/String;)V

    .line 158
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->getRadioTechByUiccAppType(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->doIccAppTypeSwitch(II)V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 82
    const-string v0, "Disposing"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->logd(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForC2KWPCardTypeReady(Landroid/os/Handler;)V

    .line 85
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 87
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->logd(Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled message with number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->loge(Ljava/lang/String;)V

    .line 131
    :goto_0
    return-void

    .line 108
    :pswitch_0
    const-string v2, "handleMessage (EVENT_C2K_WP_CARD_TYPE_READY)."

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->logd(Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->onCardTypeReady()V

    goto :goto_0

    .line 112
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "ar":Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 113
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 114
    .local v1, "index":I
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 115
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage (EVENT_ICC_CHANGED) , index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->logd(Ljava/lang/String;)V

    .line 121
    :goto_1
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x64

    if-ne v2, v1, :cond_0

    .line 123
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v1

    .line 125
    :cond_0
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->onIccCardStatusChange(I)V

    goto :goto_0

    .line 118
    :cond_1
    const-string v2, "handleMessage (EVENT_ICC_CHANGED), come from myself"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isSvlteTestSimMode()Z
    .locals 4

    .prologue
    .line 95
    const-string v1, "persist.sys.forcttestcard"

    .line 96
    .local v1, "testCardFlag":Ljava/lang/String;
    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "forceCTTestCard":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "testCardFlag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->logd(Ljava/lang/String;)V

    .line 98
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method
