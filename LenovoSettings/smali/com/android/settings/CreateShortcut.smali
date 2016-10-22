.class public Lcom/flyme/deviceoriginalsettings/CreateShortcut;
.super Landroid/app/LauncherActivity;
.source "CreateShortcut.java"


# instance fields
.field private final DetachedApplication:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/LauncherActivity;-><init>()V

    .line 35
    const/4 v0, 0x6

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/CreateShortcut;->DetachedApplication:I

    return-void
.end method


# virtual methods
.method protected getTargetIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 40
    .local v0, "targetIntent":Landroid/content/Intent;
    const-string v1, "com.android.settings.SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 42
    return-object v0
.end method

.method protected onEvaluateShowIcons()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 47
    const/4 v2, 0x0

    .line 50
    .local v2, "shortcutIntent":Landroid/content/Intent;
    instance-of v4, p2, Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 51
    check-cast p2, Landroid/widget/TextView;

    .end local p2    # "v":Landroid/view/View;
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "shortcutStr":Ljava/lang/String;
    const v4, 0x7f0c0808

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/CreateShortcut;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "appSettingStr":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "shortcutIntent":Landroid/content/Intent;
    const-string v4, "android.settings.DETACHED_APPLICATIONS_SETTINGS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .end local v0    # "appSettingStr":Ljava/lang/String;
    .end local v3    # "shortcutStr":Ljava/lang/String;
    .restart local v2    # "shortcutIntent":Landroid/content/Intent;
    :goto_0
    const/high16 v4, 0x200000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 67
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 68
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const/high16 v5, 0x7f030000

    invoke-static {p0, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 70
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 71
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p0, p3}, Lcom/flyme/deviceoriginalsettings/CreateShortcut;->itemForPosition(I)Landroid/app/LauncherActivity$ListItem;

    move-result-object v5

    iget-object v5, v5, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 72
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v1}, Lcom/flyme/deviceoriginalsettings/CreateShortcut;->setResult(ILandroid/content/Intent;)V

    .line 73
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/CreateShortcut;->finish()V

    .line 74
    return-void

    .line 55
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v0    # "appSettingStr":Ljava/lang/String;
    .restart local v3    # "shortcutStr":Ljava/lang/String;
    :cond_0
    const v4, 0x7f0c0231

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/CreateShortcut;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "shortcutIntent":Landroid/content/Intent;
    const-string v4, "android.settings.APP_OPS_SETTINGS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2    # "shortcutIntent":Landroid/content/Intent;
    goto :goto_0

    .line 57
    :cond_1
    const v4, 0x7f0c0be6

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/CreateShortcut;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 58
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "shortcutIntent":Landroid/content/Intent;
    const-string v4, "android.intent.action.MUTE_MODE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2    # "shortcutIntent":Landroid/content/Intent;
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p0, p3}, Lcom/flyme/deviceoriginalsettings/CreateShortcut;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    .line 63
    .end local v0    # "appSettingStr":Ljava/lang/String;
    .end local v3    # "shortcutStr":Ljava/lang/String;
    .restart local p2    # "v":Landroid/view/View;
    :cond_3
    invoke-virtual {p0, p3}, Lcom/flyme/deviceoriginalsettings/CreateShortcut;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0
.end method

.method protected onQueryPackageManager(Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .param p1, "queryIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/app/LauncherActivity;->onQueryPackageManager(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 87
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 98
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    return-object v0
.end method
