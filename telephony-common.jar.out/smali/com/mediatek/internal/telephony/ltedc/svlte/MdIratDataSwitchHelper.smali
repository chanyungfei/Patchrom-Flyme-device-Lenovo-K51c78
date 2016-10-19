.class public Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;
.super Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;
.source "MdIratDataSwitchHelper.java"


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;)V
    .locals 0
    .param p1, "svltePhoneProxy"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;)V

    .line 21
    return-void
.end method

.method private notifyDataConnectionAttached()V
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDataConnectionAttached: mPsServiceType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mPsServiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->log(Ljava/lang/String;)V

    .line 90
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mPsServiceType:I

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mPsServiceType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 95
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 98
    :cond_2
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mPsServiceType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0
.end method

.method private notifyDataConnectionDetached()V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDataConnectionDetached: mPsServiceType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mPsServiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->log(Ljava/lang/String;)V

    .line 108
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mPsServiceType:I

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mPsServiceType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 113
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 116
    :cond_2
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mPsServiceType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 125
    const-string v0, "[IRAT_DSH]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 129
    const-string v0, "[IRAT_DSH]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method protected onCdmaDataAllowUrc()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDataAllowed from CDMA: mPsServiceType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mPsServiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->log(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mDataAllowedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 47
    return-void
.end method

.method protected onCdmaDataAttached()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->notifyDataConnectionAttached()V

    .line 26
    return-void
.end method

.method protected onCdmaDataDetached()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->notifyDataConnectionDetached()V

    .line 36
    return-void
.end method

.method protected onCdmaSetDataAllowedDone()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method protected onGsmDataAllowUrc()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDataAllowed from GSM: mPsServiceType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mPsServiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->log(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mDataAllowedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 53
    return-void
.end method

.method protected onGsmSetDataAllowedDone()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method protected onLteDataAttached()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->notifyDataConnectionAttached()V

    .line 31
    return-void
.end method

.method protected onLteDataDetached()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->notifyDataConnectionDetached()V

    .line 41
    return-void
.end method

.method public setDataAllowed(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "allowed"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataAllowed: allowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->log(Ljava/lang/String;)V

    .line 66
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mPsServiceType:I

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mLteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 68
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mCdmaCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 78
    :goto_0
    if-eqz p1, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->notifyDataConnectionAttached()V

    .line 81
    :cond_0
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mLteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 71
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mCdmaCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method public syncAndNotifyAttachState()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->notifyDataConnectionAttached()V

    .line 86
    return-void
.end method
