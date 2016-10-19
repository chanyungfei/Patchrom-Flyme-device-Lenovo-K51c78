.class public Lcom/mediatek/bluetooth/BluetoothPrxmDevice;
.super Ljava/lang/Object;
.source "BluetoothPrxmDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/bluetooth/BluetoothPrxmDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private capability:B

.field private currentRssi:B

.field private currentState:B

.field private device:Landroid/bluetooth/BluetoothDevice;

.field private id:I

.field private isPathLost:Z

.field private linkLossLevel:B

.field private pathLossLevel:B

.field private pathLossThreshold:B

.field private remoteTxPower:B

.field private updateState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice$1;

    invoke-direct {v0}, Lcom/mediatek/bluetooth/BluetoothPrxmDevice$1;-><init>()V

    sput-object v0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->id:I

    .line 60
    iput-boolean v1, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->isPathLost:Z

    .line 61
    iput v1, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->updateState:I

    .line 70
    iput-object p1, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->device:Landroid/bluetooth/BluetoothDevice;

    .line 71
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/bluetooth/BluetoothPrxmDevice;B)B
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/bluetooth/BluetoothPrxmDevice;
    .param p1, "x1"    # B

    .prologue
    .line 48
    iput-byte p1, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->capability:B

    return p1
.end method

.method static synthetic access$102(Lcom/mediatek/bluetooth/BluetoothPrxmDevice;B)B
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/bluetooth/BluetoothPrxmDevice;
    .param p1, "x1"    # B

    .prologue
    .line 48
    iput-byte p1, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->linkLossLevel:B

    return p1
.end method

.method static synthetic access$202(Lcom/mediatek/bluetooth/BluetoothPrxmDevice;B)B
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/bluetooth/BluetoothPrxmDevice;
    .param p1, "x1"    # B

    .prologue
    .line 48
    iput-byte p1, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->pathLossLevel:B

    return p1
.end method

.method static synthetic access$302(Lcom/mediatek/bluetooth/BluetoothPrxmDevice;B)B
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/bluetooth/BluetoothPrxmDevice;
    .param p1, "x1"    # B

    .prologue
    .line 48
    iput-byte p1, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->pathLossThreshold:B

    return p1
.end method

.method static synthetic access$402(Lcom/mediatek/bluetooth/BluetoothPrxmDevice;B)B
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/bluetooth/BluetoothPrxmDevice;
    .param p1, "x1"    # B

    .prologue
    .line 48
    iput-byte p1, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->remoteTxPower:B

    return p1
.end method

.method static synthetic access$502(Lcom/mediatek/bluetooth/BluetoothPrxmDevice;B)B
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/bluetooth/BluetoothPrxmDevice;
    .param p1, "x1"    # B

    .prologue
    .line 48
    iput-byte p1, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->currentRssi:B

    return p1
.end method

.method private commitUpdate(I)V
    .locals 1
    .param p1, "field"    # I

    .prologue
    .line 113
    iget v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->updateState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->updateState:I

    .line 114
    return-void
.end method


# virtual methods
.method public checkPathLoss(B)Z
    .locals 1
    .param p1, "pathLoss"    # B

    .prologue
    .line 122
    iget-byte v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->pathLossThreshold:B

    if-ge v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->isPathLost:Z

    .line 123
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->isPathLost:Z

    return v0

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 164
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->device:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 168
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCapability()B
    .locals 1

    .prologue
    .line 197
    iget-byte v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->capability:B

    return v0
.end method

.method public getCurrentRssi()B
    .locals 1

    .prologue
    .line 227
    iget-byte v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->currentRssi:B

    return v0
.end method

.method public getCurrentState()B
    .locals 1

    .prologue
    .line 191
    iget-byte v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->currentState:B

    return v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->id:I

    return v0
.end method

.method public getLinkLossLevel()B
    .locals 1

    .prologue
    .line 203
    iget-byte v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->linkLossLevel:B

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathLossLevel()B
    .locals 1

    .prologue
    .line 209
    iget-byte v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->pathLossLevel:B

    return v0
.end method

.method public getPathLossThreshold()B
    .locals 1

    .prologue
    .line 215
    iget-byte v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->pathLossThreshold:B

    return v0
.end method

.method public getRemoteTxPower()B
    .locals 1

    .prologue
    .line 221
    iget-byte v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->remoteTxPower:B

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method public isPathLost()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->isPathLost:Z

    return v0
.end method

.method public isUpdateDone()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 105
    iget v1, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->updateState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetUpdateState()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->updateState:I

    .line 98
    return-void
.end method

.method public setCapability(B)V
    .locals 0
    .param p1, "capability"    # B

    .prologue
    .line 200
    iput-byte p1, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->capability:B

    .line 201
    return-void
.end method

.method public setCurrentRssi(B)V
    .locals 1
    .param p1, "currentRssi"    # B

    .prologue
    .line 230
    iput-byte p1, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->currentRssi:B

    .line 231
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->commitUpdate(I)V

    .line 232
    return-void
.end method

.method public setCurrentState(B)V
    .locals 0
    .param p1, "currentState"    # B

    .prologue
    .line 194
    iput-byte p1, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->currentState:B

    .line 195
    return-void
.end method

.method public setDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->device:Landroid/bluetooth/BluetoothDevice;

    .line 189
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->id:I

    .line 183
    return-void
.end method

.method public setLinkLossLevel(B)V
    .locals 0
    .param p1, "linkLossLevel"    # B

    .prologue
    .line 206
    iput-byte p1, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->linkLossLevel:B

    .line 207
    return-void
.end method

.method public setPathLossLevel(B)V
    .locals 0
    .param p1, "pathLossLevel"    # B

    .prologue
    .line 212
    iput-byte p1, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->pathLossLevel:B

    .line 213
    return-void
.end method

.method public setPathLossThreshold(B)V
    .locals 0
    .param p1, "pathLossThreshold"    # B

    .prologue
    .line 218
    iput-byte p1, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->pathLossThreshold:B

    .line 219
    return-void
.end method

.method public setRemoteTxPower(B)V
    .locals 0
    .param p1, "remoteTxPower"    # B

    .prologue
    .line 224
    iput-byte p1, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->remoteTxPower:B

    .line 225
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 134
    iget-byte v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->capability:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 135
    iget-byte v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->linkLossLevel:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 136
    iget-byte v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->pathLossLevel:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 137
    iget-byte v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->pathLossThreshold:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 138
    iget-byte v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->remoteTxPower:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 139
    iget-byte v0, p0, Lcom/mediatek/bluetooth/BluetoothPrxmDevice;->currentRssi:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 140
    return-void
.end method
