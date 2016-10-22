.class Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$SettingSyncStateClickListener;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingSyncStateClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;


# direct methods
.method private constructor <init>(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$SettingSyncStateClickListener;->this$0:Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;
    .param p2, "x1"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$1;

    .prologue
    .line 556
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$SettingSyncStateClickListener;-><init>(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    .line 560
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    const-string v0, "AccountSettings"

    const-string v1, "ignoring monkey\'s attempt to flip sync state"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 563
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 565
    .local v2, "fragmentArguments":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$SettingSyncStateClickListener;->this$0:Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$SettingSyncStateClickListener;->this$0:Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;

    invoke-virtual {v5}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0532

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/flyme/deviceoriginalsettings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto :goto_0
.end method
