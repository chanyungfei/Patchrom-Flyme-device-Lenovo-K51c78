.class Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "VpnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final SYSTEM_HOME_KEY:Ljava/lang/String; = "homekey"

.field static final SYSTEM_REASON:Ljava/lang/String; = "reason"

.field static final SYSTEM_RECENT_APPS:Ljava/lang/String; = "recentapps"


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "reason":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 123
    const-string v2, "homekey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    const-string v2, "VpnSettings"

    const-string v3, "oujf debug onKeyDown home key is pressed!!"

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings;

    const/4 v3, 0x0

    # setter for: Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings;->mUnlocking:Z
    invoke-static {v2, v3}, Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings;->access$002(Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings;Z)Z

    .line 131
    .end local v1    # "reason":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 126
    .restart local v1    # "reason":Ljava/lang/String;
    :cond_1
    const-string v2, "recentapps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method
