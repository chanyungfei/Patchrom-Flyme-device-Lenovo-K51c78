.class public final Landroid/os/PowerManager$BackLightProperties;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BackLightProperties"
.end annotation


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Landroid/os/PowerManager;Ljava/lang/String;)V
    .locals 1
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1337
    iput-object p1, p0, Landroid/os/PowerManager$BackLightProperties;->this$0:Landroid/os/PowerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1338
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/PowerManager$BackLightProperties;->mToken:Landroid/os/IBinder;

    .line 1339
    iput-object p2, p0, Landroid/os/PowerManager$BackLightProperties;->mPackageName:Ljava/lang/String;

    .line 1340
    return-void
.end method


# virtual methods
.method public setBackLightProperties(FIIJ)V
    .locals 8
    .param p1, "gamma"    # F
    .param p2, "minimum"    # I
    .param p3, "maximum"    # I
    .param p4, "timeout"    # J

    .prologue
    .line 1345
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager$BackLightProperties;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v1, p0, Landroid/os/PowerManager$BackLightProperties;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/os/PowerManager$BackLightProperties;->mPackageName:Ljava/lang/String;

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-interface/range {v0 .. v7}, Landroid/os/IPowerManager;->setBackLightProperties(Landroid/os/IBinder;Ljava/lang/String;FIIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1349
    :goto_0
    return-void

    .line 1347
    :catch_0
    move-exception v0

    goto :goto_0
.end method
