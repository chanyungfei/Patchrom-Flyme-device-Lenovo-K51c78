.class public Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;
.super Ljava/lang/Object;
.source "BleProximityProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BleProximityProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DevicePxpParams"
.end annotation


# instance fields
.field private final mAlertEnabler:I

.field private final mDisconnEnabler:I

.field private final mRangeAlertEnabler:I

.field private final mRangeType:I

.field private final mRangeValue:I

.field final synthetic this$0:Lcom/mediatek/bluetooth/BleProximityProfileService;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/BleProximityProfileService;IIIII)V
    .locals 0
    .param p2, "alertEnabler"    # I
    .param p3, "rangeAlertEnabler"    # I
    .param p4, "rangeType"    # I
    .param p5, "rangeValue"    # I
    .param p6, "disconnEnabler"    # I

    .prologue
    .line 195
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;->this$0:Lcom/mediatek/bluetooth/BleProximityProfileService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput p2, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;->mAlertEnabler:I

    .line 197
    iput p3, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;->mRangeAlertEnabler:I

    .line 198
    iput p4, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;->mRangeType:I

    .line 199
    iput p5, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;->mRangeValue:I

    .line 200
    iput p6, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;->mDisconnEnabler:I

    .line 201
    return-void
.end method


# virtual methods
.method public getAlertEnabler()I
    .locals 3

    .prologue
    .line 209
    const-string v0, "BleProximityProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAlertEnabler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;->mAlertEnabler:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget v0, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;->mAlertEnabler:I

    return v0
.end method

.method public getDisconnEnabler()I
    .locals 3

    .prologue
    .line 249
    const-string v0, "BleProximityProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDisconnEnabler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;->mDisconnEnabler:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget v0, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;->mDisconnEnabler:I

    return v0
.end method

.method public getRangeAlertEnabler()I
    .locals 3

    .prologue
    .line 219
    const-string v0, "BleProximityProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRangeAlertEnabler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;->mRangeAlertEnabler:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget v0, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;->mRangeAlertEnabler:I

    return v0
.end method

.method public getRangeType()I
    .locals 3

    .prologue
    .line 229
    const-string v0, "BleProximityProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRangeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;->mRangeType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget v0, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;->mRangeType:I

    return v0
.end method

.method public getRangeValue()I
    .locals 3

    .prologue
    .line 239
    const-string v0, "BleProximityProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRangeValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;->mRangeValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget v0, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;->mRangeValue:I

    return v0
.end method
