.class Lcom/android/server/NetworkTimeUpdateService$6;
.super Ljava/lang/Object;
.source "NetworkTimeUpdateService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkTimeUpdateService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkTimeUpdateService;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$6;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$6;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    # getter for: Lcom/android/server/NetworkTimeUpdateService;->mGpsTimerThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/android/server/NetworkTimeUpdateService;->access$1000(Lcom/android/server/NetworkTimeUpdateService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 523
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 526
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 529
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 532
    return-void
.end method
