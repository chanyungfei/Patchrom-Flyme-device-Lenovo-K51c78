.class Lcom/flyme/deviceoriginalsettings/SettingsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/SettingsActivity;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity$1;->this$0:Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 412
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.settings.ACTION_DASHBOARD_INDEx_CLEARED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity$1;->this$0:Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    const/4 v2, 0x1

    # invokes: Lcom/flyme/deviceoriginalsettings/SettingsActivity;->invalidateCategories(Z)V
    invoke-static {v1, v2}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->access$000(Lcom/flyme/deviceoriginalsettings/SettingsActivity;Z)V

    .line 416
    :cond_0
    return-void
.end method
