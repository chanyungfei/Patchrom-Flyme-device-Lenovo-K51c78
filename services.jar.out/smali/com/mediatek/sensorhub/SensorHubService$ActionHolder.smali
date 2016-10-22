.class Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;
.super Lcom/mediatek/sensorhub/SensorHubService$Holder;
.source "SensorHubService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/sensorhub/SensorHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActionHolder"
.end annotation


# instance fields
.field public final intent:Landroid/app/PendingIntent;

.field public final repeat:Z

.field public final rid:I


# direct methods
.method public constructor <init>(ILandroid/app/PendingIntent;Z)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "repeat"    # Z

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/mediatek/sensorhub/SensorHubService$Holder;-><init>()V

    .line 73
    iput p1, p0, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;->rid:I

    .line 74
    iput-object p2, p0, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;->intent:Landroid/app/PendingIntent;

    .line 75
    iput-boolean p3, p0, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;->repeat:Z

    .line 76
    return-void
.end method
