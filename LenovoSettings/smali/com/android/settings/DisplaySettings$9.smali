.class Lcom/flyme/deviceoriginalsettings/DisplaySettings$9;
.super Landroid/content/BroadcastReceiver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/DisplaySettings;)V
    .locals 0

    .prologue
    .line 1158
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$9;->this$0:Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context1"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1161
    const-string v0, "DisplaySettings"

    const-string v1, "mUpdateClearMotionStatusReceiver"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$9;->this$0:Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/DisplaySettings;->updateClearMotionStatus()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->access$800(Lcom/flyme/deviceoriginalsettings/DisplaySettings;)V

    .line 1163
    return-void
.end method
