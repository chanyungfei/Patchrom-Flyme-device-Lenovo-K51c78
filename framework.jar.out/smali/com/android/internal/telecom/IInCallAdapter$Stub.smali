.class public abstract Lcom/android/internal/telecom/IInCallAdapter$Stub;
.super Landroid/os/Binder;
.source "IInCallAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/IInCallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IInCallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IInCallAdapter"

.field static final TRANSACTION_answerCall:I = 0x1

.field static final TRANSACTION_conference:I = 0xc

.field static final TRANSACTION_disconnectCall:I = 0x3

.field static final TRANSACTION_explicitCallTransfer:I = 0x16

.field static final TRANSACTION_hangupActiveAndAnswerWaiting:I = 0x19

.field static final TRANSACTION_hangupAll:I = 0x17

.field static final TRANSACTION_hangupAllHoldCalls:I = 0x18

.field static final TRANSACTION_holdCall:I = 0x4

.field static final TRANSACTION_inviteConferenceParticipants:I = 0x1b

.field static final TRANSACTION_mergeConference:I = 0xe

.field static final TRANSACTION_mute:I = 0x6

.field static final TRANSACTION_onUiShowing:I = 0x1c

.field static final TRANSACTION_phoneAccountSelected:I = 0xb

.field static final TRANSACTION_playDtmfTone:I = 0x8

.field static final TRANSACTION_postDialContinue:I = 0xa

.field static final TRANSACTION_rejectCall:I = 0x2

.field static final TRANSACTION_setAudioRoute:I = 0x7

.field static final TRANSACTION_setSortedBackgroudCallList:I = 0x14

.field static final TRANSACTION_setSortedIncomingCallList:I = 0x15

.field static final TRANSACTION_splitFromConference:I = 0xd

.field static final TRANSACTION_startVoiceRecording:I = 0x12

.field static final TRANSACTION_stopDtmfTone:I = 0x9

.field static final TRANSACTION_stopVoiceRecording:I = 0x13

.field static final TRANSACTION_swapConference:I = 0xf

.field static final TRANSACTION_turnOffProximitySensor:I = 0x11

.field static final TRANSACTION_turnOnProximitySensor:I = 0x10

.field static final TRANSACTION_unholdCall:I = 0x5

.field static final TRANSACTION_updatePowerForSmartBook:I = 0x1a


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallAdapter;
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
    const-string v1, "com.android.internal.telecom.IInCallAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telecom/IInCallAdapter;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/android/internal/telecom/IInCallAdapter;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 288
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 49
    :sswitch_0
    const-string v6, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v6, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 59
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->answerCall(Ljava/lang/String;I)V

    goto :goto_0

    .line 64
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_2
    const-string v7, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    move v2, v5

    .line 70
    .local v2, "_arg1":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .end local v2    # "_arg1":Z
    .end local v4    # "_arg2":Ljava/lang/String;
    :cond_0
    move v2, v6

    .line 68
    goto :goto_1

    .line 76
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string v6, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->disconnectCall(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string v6, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->holdCall(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string v6, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->unholdCall(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_6
    const-string v7, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    move v0, v5

    .line 103
    .local v0, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->mute(Z)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    :cond_1
    move v0, v6

    .line 102
    goto :goto_2

    .line 108
    :sswitch_7
    const-string v6, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 111
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->setAudioRoute(I)V

    goto :goto_0

    .line 116
    .end local v0    # "_arg0":I
    :sswitch_8
    const-string v6, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v2, v6

    .line 121
    .local v2, "_arg1":C
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->playDtmfTone(Ljava/lang/String;C)V

    goto/16 :goto_0

    .line 126
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":C
    :sswitch_9
    const-string v6, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->stopDtmfTone(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 134
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string v7, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    move v2, v5

    .line 139
    .local v2, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->postDialContinue(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    :cond_2
    move v2, v6

    .line 138
    goto :goto_3

    .line 144
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string v7, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 148
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    .line 149
    sget-object v7, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 155
    .local v2, "_arg1":Landroid/telecom/PhoneAccountHandle;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    move v4, v5

    .line 156
    .local v4, "_arg2":Z
    :goto_5
    invoke-virtual {p0, v0, v2, v4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    goto/16 :goto_0

    .line 152
    .end local v2    # "_arg1":Landroid/telecom/PhoneAccountHandle;
    .end local v4    # "_arg2":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/telecom/PhoneAccountHandle;
    goto :goto_4

    :cond_4
    move v4, v6

    .line 155
    goto :goto_5

    .line 161
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/telecom/PhoneAccountHandle;
    :sswitch_c
    const-string v6, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->conference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 171
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_d
    const-string v6, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->splitFromConference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 179
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string v6, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->mergeConference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 187
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_f
    const-string v6, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 190
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->swapConference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 195
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_10
    const-string v6, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->turnOnProximitySensor()V

    goto/16 :goto_0

    .line 201
    :sswitch_11
    const-string v7, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5

    move v0, v5

    .line 204
    .local v0, "_arg0":Z
    :goto_6
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->turnOffProximitySensor(Z)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_5
    move v0, v6

    .line 203
    goto :goto_6

    .line 209
    :sswitch_12
    const-string v6, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->startVoiceRecording()V

    goto/16 :goto_0

    .line 215
    :sswitch_13
    const-string v6, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->stopVoiceRecording()V

    goto/16 :goto_0

    .line 221
    :sswitch_14
    const-string v6, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 224
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->setSortedBackgroudCallList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 229
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_15
    const-string v6, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 232
    .restart local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->setSortedIncomingCallList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 237
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_16
    const-string v6, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->explicitCallTransfer(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 245
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_17
    const-string v6, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->hangupAll()V

    goto/16 :goto_0

    .line 251
    :sswitch_18
    const-string v6, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->hangupAllHoldCalls()V

    goto/16 :goto_0

    .line 257
    :sswitch_19
    const-string v6, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->hangupActiveAndAnswerWaiting()V

    goto/16 :goto_0

    .line 263
    :sswitch_1a
    const-string v7, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6

    move v0, v5

    .line 266
    .local v0, "_arg0":Z
    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->updatePowerForSmartBook(Z)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_6
    move v0, v6

    .line 265
    goto :goto_7

    .line 271
    :sswitch_1b
    const-string v6, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 276
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->inviteConferenceParticipants(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 281
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_1c
    const-string v7, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_7

    move v0, v5

    .line 284
    .local v0, "_arg0":Z
    :goto_8
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->onUiShowing(Z)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_7
    move v0, v6

    .line 283
    goto :goto_8

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
