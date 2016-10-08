.class public abstract Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;
.super Landroid/os/Binder;
.source "ITelephonyEx.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/ITelephonyEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ITelephonyEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.internal.telephony.ITelephonyEx"

.field static final TRANSACTION_abortEnableDedicateBearer:I = 0x2c

.field static final TRANSACTION_broadcastIccUnlockIntent:I = 0x19

.field static final TRANSACTION_btSimapApduRequest:I = 0x12

.field static final TRANSACTION_btSimapConnectSIM:I = 0x10

.field static final TRANSACTION_btSimapDisconnectSIM:I = 0x11

.field static final TRANSACTION_btSimapPowerOffSIM:I = 0x15

.field static final TRANSACTION_btSimapPowerOnSIM:I = 0x14

.field static final TRANSACTION_btSimapResetSIM:I = 0x13

.field static final TRANSACTION_configSimSwap:I = 0x1d

.field static final TRANSACTION_disableDedicateBearer:I = 0x2a

.field static final TRANSACTION_enableDedicateBearer:I = 0x2b

.field static final TRANSACTION_getAdnStorageInfo:I = 0x24

.field static final TRANSACTION_getCapSwitchManualList:I = 0x20

.field static final TRANSACTION_getDeactivateCidArray:I = 0x31

.field static final TRANSACTION_getDefaultBearerProperties:I = 0x2f

.field static final TRANSACTION_getIccCardType:I = 0x6

.field static final TRANSACTION_getLastDataConnectionFailCause:I = 0x30

.field static final TRANSACTION_getLinkProperties:I = 0x32

.field static final TRANSACTION_getLocatedPlmn:I = 0x21

.field static final TRANSACTION_getMvnoMatchType:I = 0xa

.field static final TRANSACTION_getMvnoPattern:I = 0xb

.field static final TRANSACTION_getNetworkHideState:I = 0x22

.field static final TRANSACTION_getNetworkOperatorGemini:I = 0xe

.field static final TRANSACTION_getNetworkOperatorNameGemini:I = 0xc

.field static final TRANSACTION_getNetworkOperatorNameUsingSub:I = 0xd

.field static final TRANSACTION_getNetworkOperatorUsingSub:I = 0xf

.field static final TRANSACTION_getPhoneCapability:I = 0x1b

.field static final TRANSACTION_getScAddressUsingSubId:I = 0x26

.field static final TRANSACTION_getServiceState:I = 0x23

.field static final TRANSACTION_getSubscriberIdForLteDcPhone:I = 0x3c

.field static final TRANSACTION_getSvlteCardType:I = 0x7

.field static final TRANSACTION_getSvlteImei:I = 0x3d

.field static final TRANSACTION_getSvlteMeid:I = 0x40

.field static final TRANSACTION_getSvlteServiceState:I = 0x38

.field static final TRANSACTION_isAirplanemodeAvailableNow:I = 0x28

.field static final TRANSACTION_isAllowAirplaneModeChange:I = 0x3e

.field static final TRANSACTION_isAppTypeSupported:I = 0x8

.field static final TRANSACTION_isCapSwitchManualEnabled:I = 0x1f

.field static final TRANSACTION_isCapabilitySwitching:I = 0x35

.field static final TRANSACTION_isDedicateBearer:I = 0x29

.field static final TRANSACTION_isFdnEnabled:I = 0x5

.field static final TRANSACTION_isInHomeNetwork:I = 0x3f

.field static final TRANSACTION_isPhbReady:I = 0x25

.field static final TRANSACTION_isRadioOffBySimManagement:I = 0x1a

.field static final TRANSACTION_isSimSwapped:I = 0x1e

.field static final TRANSACTION_isTestIccCard:I = 0x9

.field static final TRANSACTION_modifyDedicateBearer:I = 0x2d

.field static final TRANSACTION_pcscfDiscovery:I = 0x33

.field static final TRANSACTION_queryNetworkLock:I = 0x1

.field static final TRANSACTION_repollIccStateForNetworkLock:I = 0x3

.field static final TRANSACTION_setDefaultBearerConfig:I = 0x2e

.field static final TRANSACTION_setLine1Number:I = 0x4

.field static final TRANSACTION_setPhoneCapability:I = 0x1c

.field static final TRANSACTION_setRadioCapability:I = 0x34

.field static final TRANSACTION_setRadioTechnology:I = 0x3a

.field static final TRANSACTION_setScAddressUsingSubId:I = 0x27

.field static final TRANSACTION_setSvlteRatMode:I = 0x37

.field static final TRANSACTION_setTrmForPhone:I = 0x3b

.field static final TRANSACTION_simAkaAuthentication:I = 0x16

.field static final TRANSACTION_simGbaAuthBootStrapMode:I = 0x17

.field static final TRANSACTION_simGbaAuthNafMode:I = 0x18

.field static final TRANSACTION_supplyNetworkDepersonalization:I = 0x2

.field static final TRANSACTION_switchRadioTechnology:I = 0x39

.field static final TRANSACTION_switchSvlteRatMode:I = 0x36


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v1, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/internal/telephony/ITelephonyEx;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/mediatek/internal/telephony/ITelephonyEx;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 858
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 49
    :sswitch_0
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 58
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 59
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->queryNetworkLock(II)Landroid/os/Bundle;

    move-result-object v6

    .line 60
    .local v6, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v6, :cond_0

    .line 62
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {v6, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Landroid/os/Bundle;
    :sswitch_2
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 76
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)I

    move-result v6

    .line 78
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 84
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_3
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 88
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v2, v7

    .line 89
    .local v2, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->repollIccStateForNetworkLock(IZ)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v2    # "_arg1":Z
    :cond_1
    move v2, v0

    .line 88
    goto :goto_1

    .line 95
    .end local v1    # "_arg0":I
    :sswitch_4
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 99
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setLine1Number(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 103
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 109
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_5
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 112
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isFdnEnabled(I)Z

    move-result v6

    .line 113
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v6, :cond_2

    move v0, v7

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 119
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_6
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 122
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getIccCardType(I)Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 132
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getSvlteCardType(I)I

    move-result v6

    .line 133
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 139
    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_8
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 143
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 144
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isAppTypeSupported(II)Z

    move-result v6

    .line 145
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v6, :cond_3

    move v0, v7

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 151
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_9
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 154
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isTestIccCard(I)Z

    move-result v6

    .line 155
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v6, :cond_4

    move v0, v7

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 161
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_a
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 164
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getMvnoMatchType(I)Ljava/lang/String;

    move-result-object v6

    .line 165
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 171
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_b
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 175
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getMvnoPattern(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 177
    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 186
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getNetworkOperatorNameGemini(I)Ljava/lang/String;

    move-result-object v6

    .line 187
    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 193
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_d
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 196
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getNetworkOperatorNameUsingSub(I)Ljava/lang/String;

    move-result-object v6

    .line 197
    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_e
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 206
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getNetworkOperatorGemini(I)Ljava/lang/String;

    move-result-object v6

    .line 207
    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 213
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 216
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getNetworkOperatorUsingSub(I)Ljava/lang/String;

    move-result-object v6

    .line 217
    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 223
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_10
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 227
    .restart local v1    # "_arg0":I
    new-instance v2, Lcom/mediatek/internal/telephony/BtSimapOperResponse;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;-><init>()V

    .line 228
    .local v2, "_arg1":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->btSimapConnectSIM(ILcom/mediatek/internal/telephony/BtSimapOperResponse;)I

    move-result v6

    .line 229
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    if-eqz v2, :cond_5

    .line 232
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    invoke-virtual {v2, p3, v7}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 236
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 242
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    .end local v6    # "_result":I
    :sswitch_11
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->btSimapDisconnectSIM()I

    move-result v6

    .line 244
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 250
    .end local v6    # "_result":I
    :sswitch_12
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 254
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "_arg1":Ljava/lang/String;
    new-instance v3, Lcom/mediatek/internal/telephony/BtSimapOperResponse;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;-><init>()V

    .line 257
    .local v3, "_arg2":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->btSimapApduRequest(ILjava/lang/String;Lcom/mediatek/internal/telephony/BtSimapOperResponse;)I

    move-result v6

    .line 258
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    if-eqz v3, :cond_6

    .line 261
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    invoke-virtual {v3, p3, v7}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 265
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 271
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    .end local v6    # "_result":I
    :sswitch_13
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 275
    .restart local v1    # "_arg0":I
    new-instance v2, Lcom/mediatek/internal/telephony/BtSimapOperResponse;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;-><init>()V

    .line 276
    .local v2, "_arg1":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->btSimapResetSIM(ILcom/mediatek/internal/telephony/BtSimapOperResponse;)I

    move-result v6

    .line 277
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    if-eqz v2, :cond_7

    .line 280
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    invoke-virtual {v2, p3, v7}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 284
    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 290
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    .end local v6    # "_result":I
    :sswitch_14
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 294
    .restart local v1    # "_arg0":I
    new-instance v2, Lcom/mediatek/internal/telephony/BtSimapOperResponse;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;-><init>()V

    .line 295
    .restart local v2    # "_arg1":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->btSimapPowerOnSIM(ILcom/mediatek/internal/telephony/BtSimapOperResponse;)I

    move-result v6

    .line 296
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    if-eqz v2, :cond_8

    .line 299
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    invoke-virtual {v2, p3, v7}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 303
    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 309
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    .end local v6    # "_result":I
    :sswitch_15
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->btSimapPowerOffSIM()I

    move-result v6

    .line 311
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 317
    .end local v6    # "_result":I
    :sswitch_16
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 321
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 323
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 325
    .local v3, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 326
    .local v4, "_arg3":[B
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->simAkaAuthentication(II[B[B)[B

    move-result-object v6

    .line 327
    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 333
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[B
    .end local v6    # "_result":[B
    :sswitch_17
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 337
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 339
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 341
    .restart local v3    # "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 342
    .restart local v4    # "_arg3":[B
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->simGbaAuthBootStrapMode(II[B[B)[B

    move-result-object v6

    .line 343
    .restart local v6    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 349
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[B
    .end local v6    # "_result":[B
    :sswitch_18
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 353
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 355
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 357
    .restart local v3    # "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 358
    .restart local v4    # "_arg3":[B
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->simGbaAuthNafMode(II[B[B)[B

    move-result-object v6

    .line 359
    .restart local v6    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 365
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[B
    .end local v6    # "_result":[B
    :sswitch_19
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 368
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->broadcastIccUnlockIntent(I)Z

    move-result v6

    .line 369
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    if-eqz v6, :cond_9

    move v0, v7

    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 375
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_1a
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 378
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isRadioOffBySimManagement(I)Z

    move-result v6

    .line 379
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    if-eqz v6, :cond_a

    move v0, v7

    :cond_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 385
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_1b
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 388
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getPhoneCapability(I)I

    move-result v6

    .line 389
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 395
    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_1c
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 399
    .local v1, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 400
    .local v2, "_arg1":[I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setPhoneCapability([I[I)V

    .line 401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 406
    .end local v1    # "_arg0":[I
    .end local v2    # "_arg1":[I
    :sswitch_1d
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_c

    move v1, v7

    .line 409
    .local v1, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->configSimSwap(Z)Z

    move-result v6

    .line 410
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    if-eqz v6, :cond_b

    move v0, v7

    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v6    # "_result":Z
    :cond_c
    move v1, v0

    .line 408
    goto :goto_2

    .line 416
    :sswitch_1e
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isSimSwapped()Z

    move-result v6

    .line 418
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    if-eqz v6, :cond_d

    move v0, v7

    :cond_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 424
    .end local v6    # "_result":Z
    :sswitch_1f
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isCapSwitchManualEnabled()Z

    move-result v6

    .line 426
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    if-eqz v6, :cond_e

    move v0, v7

    :cond_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 432
    .end local v6    # "_result":Z
    :sswitch_20
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getCapSwitchManualList()[Ljava/lang/String;

    move-result-object v6

    .line 434
    .local v6, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 440
    .end local v6    # "_result":[Ljava/lang/String;
    :sswitch_21
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 443
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getLocatedPlmn(I)Ljava/lang/String;

    move-result-object v6

    .line 444
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 450
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_22
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 453
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getNetworkHideState(I)I

    move-result v6

    .line 454
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 460
    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_23
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 463
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getServiceState(I)Landroid/os/Bundle;

    move-result-object v6

    .line 464
    .local v6, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    if-eqz v6, :cond_f

    .line 466
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    invoke-virtual {v6, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 470
    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 476
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Landroid/os/Bundle;
    :sswitch_24
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 479
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getAdnStorageInfo(I)[I

    move-result-object v6

    .line 480
    .local v6, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 486
    .end local v1    # "_arg0":I
    .end local v6    # "_result":[I
    :sswitch_25
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 489
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isPhbReady(I)Z

    move-result v6

    .line 490
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    if-eqz v6, :cond_10

    move v0, v7

    :cond_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 496
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_26
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 499
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getScAddressUsingSubId(I)Landroid/os/Bundle;

    move-result-object v6

    .line 500
    .local v6, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    if-eqz v6, :cond_11

    .line 502
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    invoke-virtual {v6, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 506
    :cond_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 512
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Landroid/os/Bundle;
    :sswitch_27
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 516
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 517
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setScAddressUsingSubId(ILjava/lang/String;)Z

    move-result v6

    .line 518
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    if-eqz v6, :cond_12

    move v0, v7

    :cond_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 524
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_28
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isAirplanemodeAvailableNow()Z

    move-result v6

    .line 526
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    if-eqz v6, :cond_13

    move v0, v7

    :cond_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 532
    .end local v6    # "_result":Z
    :sswitch_29
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 536
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 537
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isDedicateBearer(II)Z

    move-result v6

    .line 538
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    if-eqz v6, :cond_14

    move v0, v7

    :cond_14
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 544
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_2a
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 550
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 551
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->disableDedicateBearer(Ljava/lang/String;II)I

    move-result v6

    .line 552
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 558
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v6    # "_result":I
    :sswitch_2b
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 562
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_15

    move v2, v7

    .line 564
    .local v2, "_arg1":Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    .line 565
    sget-object v0, Lcom/mediatek/internal/telephony/QosStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/QosStatus;

    .line 571
    .local v3, "_arg2":Lcom/mediatek/internal/telephony/QosStatus;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    .line 572
    sget-object v0, Lcom/mediatek/internal/telephony/TftStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/TftStatus;

    .line 578
    .local v4, "_arg3":Lcom/mediatek/internal/telephony/TftStatus;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 579
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->enableDedicateBearer(Ljava/lang/String;ZLcom/mediatek/internal/telephony/QosStatus;Lcom/mediatek/internal/telephony/TftStatus;I)I

    move-result v6

    .line 580
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Lcom/mediatek/internal/telephony/QosStatus;
    .end local v4    # "_arg3":Lcom/mediatek/internal/telephony/TftStatus;
    .end local v5    # "_arg4":I
    .end local v6    # "_result":I
    :cond_15
    move v2, v0

    .line 562
    goto :goto_3

    .line 568
    .restart local v2    # "_arg1":Z
    :cond_16
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Lcom/mediatek/internal/telephony/QosStatus;
    goto :goto_4

    .line 575
    :cond_17
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Lcom/mediatek/internal/telephony/TftStatus;
    goto :goto_5

    .line 586
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Lcom/mediatek/internal/telephony/QosStatus;
    .end local v4    # "_arg3":Lcom/mediatek/internal/telephony/TftStatus;
    :sswitch_2c
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 590
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 592
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 593
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->abortEnableDedicateBearer(Ljava/lang/String;II)I

    move-result v6

    .line 594
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 600
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v6    # "_result":I
    :sswitch_2d
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 604
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    .line 605
    sget-object v0, Lcom/mediatek/internal/telephony/QosStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/QosStatus;

    .line 611
    .local v2, "_arg1":Lcom/mediatek/internal/telephony/QosStatus;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    .line 612
    sget-object v0, Lcom/mediatek/internal/telephony/TftStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/TftStatus;

    .line 618
    .local v3, "_arg2":Lcom/mediatek/internal/telephony/TftStatus;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 619
    .local v4, "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->modifyDedicateBearer(ILcom/mediatek/internal/telephony/QosStatus;Lcom/mediatek/internal/telephony/TftStatus;I)I

    move-result v6

    .line 620
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 608
    .end local v2    # "_arg1":Lcom/mediatek/internal/telephony/QosStatus;
    .end local v3    # "_arg2":Lcom/mediatek/internal/telephony/TftStatus;
    .end local v4    # "_arg3":I
    .end local v6    # "_result":I
    :cond_18
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Lcom/mediatek/internal/telephony/QosStatus;
    goto :goto_6

    .line 615
    :cond_19
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Lcom/mediatek/internal/telephony/TftStatus;
    goto :goto_7

    .line 626
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/mediatek/internal/telephony/QosStatus;
    .end local v3    # "_arg2":Lcom/mediatek/internal/telephony/TftStatus;
    :sswitch_2e
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 630
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 631
    sget-object v0, Lcom/mediatek/internal/telephony/DefaultBearerConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/DefaultBearerConfig;

    .line 637
    .local v2, "_arg1":Lcom/mediatek/internal/telephony/DefaultBearerConfig;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 638
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setDefaultBearerConfig(Ljava/lang/String;Lcom/mediatek/internal/telephony/DefaultBearerConfig;I)I

    move-result v6

    .line 639
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 634
    .end local v2    # "_arg1":Lcom/mediatek/internal/telephony/DefaultBearerConfig;
    .end local v3    # "_arg2":I
    .end local v6    # "_result":I
    :cond_1a
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Lcom/mediatek/internal/telephony/DefaultBearerConfig;
    goto :goto_8

    .line 645
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/mediatek/internal/telephony/DefaultBearerConfig;
    :sswitch_2f
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 649
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 650
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getDefaultBearerProperties(Ljava/lang/String;I)Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    move-result-object v6

    .line 651
    .local v6, "_result":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    if-eqz v6, :cond_1b

    .line 653
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 654
    invoke-virtual {v6, p3, v7}, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 657
    :cond_1b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 663
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    :sswitch_30
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 667
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 668
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getLastDataConnectionFailCause(Ljava/lang/String;I)I

    move-result v6

    .line 669
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 675
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":I
    :sswitch_31
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 679
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 680
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getDeactivateCidArray(Ljava/lang/String;I)[I

    move-result-object v6

    .line 681
    .local v6, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 687
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":[I
    :sswitch_32
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 691
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 692
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getLinkProperties(Ljava/lang/String;I)Landroid/net/LinkProperties;

    move-result-object v6

    .line 693
    .local v6, "_result":Landroid/net/LinkProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    if-eqz v6, :cond_1c

    .line 695
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    invoke-virtual {v6, p3, v7}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 699
    :cond_1c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 705
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Landroid/net/LinkProperties;
    :sswitch_33
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 709
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 711
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 713
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 714
    sget-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .line 719
    .local v4, "_arg3":Landroid/os/Message;
    :goto_9
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->pcscfDiscovery(Ljava/lang/String;IILandroid/os/Message;)I

    move-result v6

    .line 720
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 717
    .end local v4    # "_arg3":Landroid/os/Message;
    .end local v6    # "_result":I
    :cond_1d
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/os/Message;
    goto :goto_9

    .line 726
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/Message;
    :sswitch_34
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    sget-object v8, Landroid/telephony/RadioAccessFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/telephony/RadioAccessFamily;

    .line 729
    .local v1, "_arg0":[Landroid/telephony/RadioAccessFamily;
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v6

    .line 730
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    if-eqz v6, :cond_1e

    move v0, v7

    :cond_1e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 736
    .end local v1    # "_arg0":[Landroid/telephony/RadioAccessFamily;
    .end local v6    # "_result":Z
    :sswitch_35
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isCapabilitySwitching()Z

    move-result v6

    .line 738
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    if-eqz v6, :cond_1f

    move v0, v7

    :cond_1f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 744
    .end local v6    # "_result":Z
    :sswitch_36
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 747
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->switchSvlteRatMode(I)V

    .line 748
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 753
    .end local v1    # "_arg0":I
    :sswitch_37
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 757
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 758
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setSvlteRatMode(II)V

    .line 759
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 764
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_38
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 767
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getSvlteServiceState(I)Landroid/os/Bundle;

    move-result-object v6

    .line 768
    .local v6, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    if-eqz v6, :cond_20

    .line 770
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 771
    invoke-virtual {v6, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 774
    :cond_20
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 780
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Landroid/os/Bundle;
    :sswitch_39
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 783
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->switchRadioTechnology(I)V

    .line 784
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 789
    .end local v1    # "_arg0":I
    :sswitch_3a
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 793
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 794
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setRadioTechnology(II)V

    .line 795
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 800
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_3b
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 804
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 805
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setTrmForPhone(II)V

    .line 806
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 811
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_3c
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 813
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 814
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getSubscriberIdForLteDcPhone(I)Ljava/lang/String;

    move-result-object v6

    .line 815
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 821
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_3d
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 823
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 824
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getSvlteImei(I)Ljava/lang/String;

    move-result-object v6

    .line 825
    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 831
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_3e
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isAllowAirplaneModeChange()Z

    move-result v6

    .line 833
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    if-eqz v6, :cond_21

    move v0, v7

    :cond_21
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 839
    .end local v6    # "_result":Z
    :sswitch_3f
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 842
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isInHomeNetwork(I)Z

    move-result v6

    .line 843
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    if-eqz v6, :cond_22

    move v0, v7

    :cond_22
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 849
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_40
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 851
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 852
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getSvlteMeid(I)Ljava/lang/String;

    move-result-object v6

    .line 853
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
