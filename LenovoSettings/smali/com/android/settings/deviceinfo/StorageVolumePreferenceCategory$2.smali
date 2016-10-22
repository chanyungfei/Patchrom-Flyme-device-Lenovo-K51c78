.class Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory$2;
.super Ljava/lang/Object;
.source "StorageVolumePreferenceCategory.java"

# interfaces
.implements Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory$2;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateApproximate(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;JJJ)V
    .locals 4
    .param p1, "meas"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;
    .param p2, "totalSize"    # J
    .param p4, "availSize"    # J
    .param p6, "osSize"    # J

    .prologue
    const/4 v3, 0x1

    .line 660
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory$2;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->access$000(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p2, v1, v2

    aput-wide p4, v1, v3

    const/4 v2, 0x2

    aput-wide p6, v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 662
    return-void
.end method

.method public updateDetails(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 2
    .param p1, "meas"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;
    .param p2, "details"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 666
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory$2;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->access$000(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 667
    return-void
.end method
