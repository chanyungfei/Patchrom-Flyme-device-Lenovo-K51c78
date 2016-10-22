.class Lcom/flyme/deviceoriginalsettings/DreamSettings$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/DreamSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/DreamSettings;


# direct methods
.method private constructor <init>(Lcom/flyme/deviceoriginalsettings/DreamSettings;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings$PackageReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/DreamSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/deviceoriginalsettings/DreamSettings;Lcom/flyme/deviceoriginalsettings/DreamSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/deviceoriginalsettings/DreamSettings;
    .param p2, "x1"    # Lcom/flyme/deviceoriginalsettings/DreamSettings$1;

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/DreamSettings$PackageReceiver;-><init>(Lcom/flyme/deviceoriginalsettings/DreamSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 443
    const-string v0, "PackageReceiver.onReceive"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    # invokes: Lcom/flyme/deviceoriginalsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->access$200(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 444
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings$PackageReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/DreamSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/DreamSettings;->refreshFromBackend()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->access$400(Lcom/flyme/deviceoriginalsettings/DreamSettings;)V

    .line 445
    return-void
.end method
