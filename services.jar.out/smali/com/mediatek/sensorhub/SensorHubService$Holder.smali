.class Lcom/mediatek/sensorhub/SensorHubService$Holder;
.super Ljava/lang/Object;
.source "SensorHubService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/sensorhub/SensorHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# instance fields
.field public final pid:I

.field public final uid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/mediatek/sensorhub/SensorHubService$Holder;->pid:I

    .line 62
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/mediatek/sensorhub/SensorHubService$Holder;->uid:I

    .line 63
    return-void
.end method
