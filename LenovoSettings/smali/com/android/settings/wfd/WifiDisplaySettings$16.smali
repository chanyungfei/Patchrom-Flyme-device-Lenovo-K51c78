.class Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$16;
.super Landroid/database/ContentObserver;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 806
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$16;->this$0:Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 809
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$16;->this$0:Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    const/4 v1, 0x1

    # invokes: Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->access$1400(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;I)V

    .line 810
    return-void
.end method
