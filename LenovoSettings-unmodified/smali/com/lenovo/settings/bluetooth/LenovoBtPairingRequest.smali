.class public Lcom/lenovo/settings/bluetooth/LenovoBtPairingRequest;
.super Ljava/lang/Object;
.source "LenovoBtPairingRequest.java"


# static fields
.field private static final WAKE_LOCK_TIMEOUT:I = 0x4e20

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static turnOnBacklight(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 16
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x1000000a

    const-string v2, "updateNewOPPRequestIndicator"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/lenovo/settings/bluetooth/LenovoBtPairingRequest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 18
    sget-object v1, Lcom/lenovo/settings/bluetooth/LenovoBtPairingRequest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 20
    sget-object v1, Lcom/lenovo/settings/bluetooth/LenovoBtPairingRequest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 21
    return-void
.end method
