.class public final Landroid/telecom/ParcelableCall;
.super Ljava/lang/Object;
.source "ParcelableCall.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/ParcelableCall;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private final mCallerDisplayName:Ljava/lang/String;

.field private final mCallerDisplayNamePresentation:I

.field private final mCannedSmsResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCapabilities:I

.field private final mChildCallIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mConferenceableCallIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectTimeMillis:J

.field private final mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private final mExtras:Landroid/os/Bundle;

.field private final mGatewayInfo:Landroid/telecom/GatewayInfo;

.field private final mHandle:Landroid/net/Uri;

.field private final mHandlePresentation:I

.field private final mId:Ljava/lang/String;

.field private final mParentCallId:Ljava/lang/String;

.field private final mProperties:I

.field private final mState:I

.field private final mStatusHints:Landroid/telecom/StatusHints;

.field private mVideoCall:Landroid/telecom/InCallService$VideoCall;

.field private final mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

.field private final mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 241
    new-instance v0, Landroid/telecom/ParcelableCall$1;

    invoke-direct {v0}, Landroid/telecom/ParcelableCall$1;-><init>()V

    sput-object v0, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/telecom/DisconnectCause;Ljava/util/List;IIJLandroid/net/Uri;ILjava/lang/String;ILandroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Lcom/android/internal/telecom/IVideoProvider;Ljava/lang/String;Ljava/util/List;Landroid/telecom/StatusHints;ILjava/util/List;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p5, "capabilities"    # I
    .param p6, "properties"    # I
    .param p7, "connectTimeMillis"    # J
    .param p9, "handle"    # Landroid/net/Uri;
    .param p10, "handlePresentation"    # I
    .param p11, "callerDisplayName"    # Ljava/lang/String;
    .param p12, "callerDisplayNamePresentation"    # I
    .param p13, "gatewayInfo"    # Landroid/telecom/GatewayInfo;
    .param p14, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p15, "videoCallProvider"    # Lcom/android/internal/telecom/IVideoProvider;
    .param p16, "parentCallId"    # Ljava/lang/String;
    .param p18, "statusHints"    # Landroid/telecom/StatusHints;
    .param p19, "videoState"    # I
    .param p21, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/telecom/DisconnectCause;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IIJ",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Landroid/telecom/GatewayInfo;",
            "Landroid/telecom/PhoneAccountHandle;",
            "Lcom/android/internal/telecom/IVideoProvider;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telecom/StatusHints;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    .local p4, "cannedSmsResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p17, "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p20, "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    .line 85
    iput p2, p0, Landroid/telecom/ParcelableCall;->mState:I

    .line 86
    iput-object p3, p0, Landroid/telecom/ParcelableCall;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 87
    iput-object p4, p0, Landroid/telecom/ParcelableCall;->mCannedSmsResponses:Ljava/util/List;

    .line 88
    iput p5, p0, Landroid/telecom/ParcelableCall;->mCapabilities:I

    .line 89
    iput p6, p0, Landroid/telecom/ParcelableCall;->mProperties:I

    .line 90
    iput-wide p7, p0, Landroid/telecom/ParcelableCall;->mConnectTimeMillis:J

    .line 91
    iput-object p9, p0, Landroid/telecom/ParcelableCall;->mHandle:Landroid/net/Uri;

    .line 92
    iput p10, p0, Landroid/telecom/ParcelableCall;->mHandlePresentation:I

    .line 93
    iput-object p11, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayName:Ljava/lang/String;

    .line 94
    iput p12, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayNamePresentation:I

    .line 95
    move-object/from16 v0, p13

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    .line 96
    move-object/from16 v0, p14

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 97
    move-object/from16 v0, p15

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    .line 98
    move-object/from16 v0, p16

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    .line 99
    move-object/from16 v0, p17

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    .line 100
    move-object/from16 v0, p18

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mStatusHints:Landroid/telecom/StatusHints;

    .line 101
    move/from16 v0, p19

    iput v0, p0, Landroid/telecom/ParcelableCall;->mVideoState:I

    .line 102
    invoke-static/range {p20 .. p20}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/telecom/ParcelableCall;->mConferenceableCallIds:Ljava/util/List;

    .line 103
    move-object/from16 v0, p21

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mExtras:Landroid/os/Bundle;

    .line 104
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getCallerDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerDisplayNamePresentation()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public getCannedSmsResponses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mCannedSmsResponses:Ljava/util/List;

    return-object v0
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Landroid/telecom/ParcelableCall;->mCapabilities:I

    return v0
.end method

.method public getChildCallIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    return-object v0
.end method

.method public getConferenceableCallIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mConferenceableCallIds:Ljava/util/List;

    return-object v0
.end method

.method public getConnectTimeMillis()J
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Landroid/telecom/ParcelableCall;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getGatewayInfo()Landroid/telecom/GatewayInfo;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    return-object v0
.end method

.method public getHandle()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mHandle:Landroid/net/Uri;

    return-object v0
.end method

.method public getHandlePresentation()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Landroid/telecom/ParcelableCall;->mHandlePresentation:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getParentCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Landroid/telecom/ParcelableCall;->mProperties:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Landroid/telecom/ParcelableCall;->mState:I

    return v0
.end method

.method public getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public getVideoCall()Landroid/telecom/InCallService$VideoCall;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    if-eqz v0, :cond_0

    .line 186
    :try_start_0
    new-instance v0, Landroid/telecom/VideoCallImpl;

    iget-object v1, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-direct {v0, v1}, Landroid/telecom/VideoCallImpl;-><init>(Lcom/android/internal/telecom/IVideoProvider;)V

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCall:Landroid/telecom/InCallService$VideoCall;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    return-object v0

    .line 187
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Landroid/telecom/ParcelableCall;->mVideoState:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 333
    const-string v0, "[%s, parent:%s, children:%s]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 308
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    iget v0, p0, Landroid/telecom/ParcelableCall;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 311
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mCannedSmsResponses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 312
    iget v0, p0, Landroid/telecom/ParcelableCall;->mCapabilities:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    iget v0, p0, Landroid/telecom/ParcelableCall;->mProperties:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget-wide v0, p0, Landroid/telecom/ParcelableCall;->mConnectTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 315
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mHandle:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 316
    iget v0, p0, Landroid/telecom/ParcelableCall;->mHandlePresentation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    iget v0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayNamePresentation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 320
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 321
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 323
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 325
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mStatusHints:Landroid/telecom/StatusHints;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 326
    iget v0, p0, Landroid/telecom/ParcelableCall;->mVideoState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mConferenceableCallIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 328
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 329
    return-void

    .line 321
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
