.class public Landroid/net/wifi/p2p/WifiP2pWfdInfo;
.super Ljava/lang/Object;
.source "WifiP2pWfdInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final CONTENT_PROTECTION_SUPPORT:I = 0x100

.field private static final COUPLED_SINK_SUPPORT_AT_SINK:I = 0x8

.field private static final COUPLED_SINK_SUPPORT_AT_SOURCE:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pWfdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEVICE_TYPE:I = 0x3

.field private static final I2C_READ_WRITE_SUPPORT:I = 0x2

.field private static final PREFERRED_DISPLAY_SUPPORT:I = 0x4

.field public static final PRIMARY_SINK:I = 0x1

.field public static final SECONDARY_SINK:I = 0x2

.field private static final SESSION_AVAILABLE:I = 0x30

.field private static final SESSION_AVAILABLE_BIT1:I = 0x10

.field private static final SESSION_AVAILABLE_BIT2:I = 0x20

.field public static final SOURCE_OR_PRIMARY_SINK:I = 0x3

.field private static final STANDBY_RESUME_CONTROL_SUPPORT:I = 0x8

.field private static final TAG:Ljava/lang/String; = "WifiP2pWfdInfo"

.field private static final UIBC_SUPPORT:I = 0x1

.field public static final WFD_SOURCE:I


# instance fields
.field private mCtrlPort:I

.field private mDeviceInfo:I

.field private mExtCapa:I

.field private mMaxThroughput:I

.field private mWfdEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 287
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "devInfo"    # I
    .param p2, "ctrlPort"    # I
    .param p3, "maxTput"    # I

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    .line 77
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 78
    iput p2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    .line 79
    iput p3, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    .line 80
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "devInfo"    # I
    .param p2, "ctrlPort"    # I
    .param p3, "maxTput"    # I
    .param p4, "extCapa"    # I

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    .line 84
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 85
    iput p2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    .line 86
    iput p3, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    .line 87
    iput p4, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pWfdInfo;)V
    .locals 1
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    if-eqz p1, :cond_0

    .line 261
    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    .line 262
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 263
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    .line 264
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    .line 265
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    .line 267
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public getControlPort()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    return v0
.end method

.method public getDeviceInfoHex()Ljava/lang/String;
    .locals 5

    .prologue
    .line 234
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%04x%04x%04x%04x"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getExtCapaHex()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 239
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%04x%04x"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedCapability()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    return v0
.end method

.method public getMaxThroughput()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    return v0
.end method

.method public isContentProtected()Z
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCoupledSinkSupportedAtSink()Z
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCoupledSinkSupportedAtSource()Z
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isI2cRWSupported()Z
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreferredDisplaySupported()Z
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSessionAvailable()Z
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, 0x30

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStandbyResumeCtrlSupported()Z
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUibcSupported()Z
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWfdEnabled()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    .line 284
    return-void

    .line 279
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentProtected(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 152
    if-eqz p1, :cond_0

    .line 153
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    goto :goto_0
.end method

.method public setControlPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 222
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    .line 223
    return-void
.end method

.method public setCoupledSinkSupportAtSink(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 130
    if-eqz p1, :cond_0

    .line 131
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    goto :goto_0
.end method

.method public setCoupledSinkSupportAtSource(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 119
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    goto :goto_0
.end method

.method public setDeviceType(I)Z
    .locals 2
    .param p1, "deviceType"    # I

    .prologue
    .line 103
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 105
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    const v1, 0xfffc

    and-int/2addr v0, v1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 107
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 108
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setI2cRWSupported(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 182
    if-eqz p1, :cond_0

    .line 183
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    goto :goto_0
.end method

.method public setMaxThroughput(I)V
    .locals 0
    .param p1, "maxThroughput"    # I

    .prologue
    .line 226
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    .line 227
    return-void
.end method

.method public setPreferredDisplaySupported(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 194
    if-eqz p1, :cond_0

    .line 195
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    goto :goto_0
.end method

.method public setSessionAvailable(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 142
    if-eqz p1, :cond_0

    .line 143
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 144
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, -0x31

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    goto :goto_0
.end method

.method public setStandbyResumeCtrlSupported(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 206
    if-eqz p1, :cond_0

    .line 207
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    goto :goto_0
.end method

.method public setUibcSupported(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 170
    if-eqz p1, :cond_0

    .line 171
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    goto :goto_0
.end method

.method public setWfdEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 245
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "WFD enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 246
    const-string v1, "\n WFD DeviceInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 247
    const-string v1, "\n WFD CtrlPort: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 248
    const-string v1, "\n WFD MaxThroughput: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 249
    const-string v1, "\n WFD Extended Capability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 271
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    return-void

    .line 271
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
