.class public Lcom/android/settings/dashboard/DashboardSummary;
.super Landroid/app/Fragment;
.source "DashboardSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/DashboardSummary$MyDSController;,
        Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;
    }
.end annotation


# static fields
.field private static final ACTION_SIMINFO_UPDATED_L:Ljava/lang/String; = "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

.field private static final LOG_TAG:Ljava/lang/String; = "DashboardSummary"

.field private static final MSG_CLICK_AS_NORMAL_HEADER:I = 0x3

.field private static final MSG_MOVE_TO_HEADER:I = 0x2

.field private static final MSG_REBUILD_UI:I = 0x1


# instance fields
.field private mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

.field private mAirplaneReceiver:Landroid/content/BroadcastReceiver;

.field private mController:Lcom/lenovo/settings/dslv/DragSortController;

.field private mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mPrivateModeReceiver:Landroid/content/BroadcastReceiver;

.field private mSimInfoReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 88
    new-instance v0, Lcom/android/settings/dashboard/DashboardSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/DashboardSummary$1;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    .line 1103
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dashboard/DashboardSummary;Landroid/content/Context;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardSummary;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/dashboard/DashboardSummary;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardSummary;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary;->moveToHeaderIfNeeded(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/dashboard/DashboardSummary;Landroid/preference/PreferenceActivity$Header;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardSummary;
    .param p1, "x1"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary;->handleNormalClick(Landroid/preference/PreferenceActivity$Header;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardSummary;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardSummary;->sendRebuildUI()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardSummary;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    return-object v0
.end method

.method private addCharacterPluginsToWhiteList(Lcom/lenovo/settings/search/Index;)V
    .locals 5
    .param p1, "index"    # Lcom/lenovo/settings/search/Index;

    .prologue
    .line 222
    const-string v4, "touch_settings"

    invoke-static {v4}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->getItemsByParentKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 224
    .local v0, "charPlugins":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    if-eqz v0, :cond_1

    .line 225
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 226
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 227
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    .line 228
    .local v2, "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    if-eqz v2, :cond_0

    .line 229
    invoke-virtual {v2}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/lenovo/settings/search/Index;->addToNotKillWhiteList(Ljava/lang/String;)V

    .line 226
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v1    # "i":I
    .end local v2    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    .end local v3    # "size":I
    :cond_1
    return-void
.end method

.method private addOtherPluginsToWhiteList(Landroid/preference/PreferenceActivity$Header;Lcom/lenovo/settings/search/Index;)V
    .locals 3
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "index"    # Lcom/lenovo/settings/search/Index;

    .prologue
    .line 236
    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 237
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/lenovo/settings/search/Index;->addToNotKillWhiteList(Ljava/lang/String;)V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "pluginKey":Ljava/lang/String;
    const-string v2, "power_setting"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    const-string v2, "com.mediatek.schpwronoff"

    invoke-virtual {p2, v2}, Lcom/lenovo/settings/search/Index;->addToNotKillWhiteList(Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_2
    const-string v2, "lepower_settings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    const-string v2, "com.lenovo.powersetting"

    invoke-virtual {p2, v2}, Lcom/lenovo/settings/search/Index;->addToNotKillWhiteList(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleNormalClick(Landroid/preference/PreferenceActivity$Header;)V
    .locals 8
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 330
    if-nez p1, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    sget-boolean v0, Lcom/lenovo/settings/provider/DBUtils;->sIsInitialized:Z

    if-eqz v0, :cond_4

    .line 336
    :try_start_0
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 337
    iget v5, p1, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 338
    .local v5, "titleRes":I
    if-nez v5, :cond_2

    .line 339
    iget v5, p1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 341
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto :goto_0

    .line 346
    .end local v5    # "titleRes":I
    :catch_0
    move-exception v0

    goto :goto_0

    .line 343
    :cond_3
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardSummary;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 349
    :cond_4
    const-string v0, "DashboardSummary"

    const-string v1, "Waiting 100ms for plugin initialized"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 351
    .local v7, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private handlePluginClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 4
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .prologue
    .line 356
    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    invoke-virtual {v2, v1}, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;->isPluginItemEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 366
    :goto_0
    return-void

    .line 362
    :cond_0
    :try_start_0
    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/DashboardSummary;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DashboardSummary"

    const-string v3, "handlePluginClick failed!"

    invoke-static {v2, v3, v0}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private moveToHeaderIfNeeded(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->isAdded()Z

    move-result v5

    if-nez v5, :cond_1

    .line 426
    const-string v5, "DashboardSummary"

    const-string v6, "Cannot move the DashboardSummary first head yet as the Fragment is not added"

    invoke-static {v5, v6}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, p1

    .line 431
    check-cast v3, Lcom/android/settings/SettingsActivity;

    .line 432
    .local v3, "sa":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v3}, Lcom/android/settings/SettingsActivity;->needToMoveDashboardHeader()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 433
    invoke-virtual {v3}, Lcom/android/settings/SettingsActivity;->getDashboardHeaderKey()Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "headerKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    invoke-virtual {v5}, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;->getCount()I

    move-result v4

    .line 435
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 436
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    invoke-virtual {v5, v2}, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 437
    .local v0, "header":Landroid/preference/PreferenceActivity$Header;
    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0b0248

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    const-string v5, "toggle_airplane"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "data_connect_settings"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "mobile_4g_settings"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 441
    :cond_2
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v5, v2}, Lcom/lenovo/settings/dslv/DragSortListView;->setSelection(I)V

    .line 442
    const-string v5, "LOG_TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "moveToHeader: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .end local v0    # "header":Landroid/preference/PreferenceActivity$Header;
    :cond_3
    :goto_2
    invoke-virtual {v3}, Lcom/android/settings/SettingsActivity;->revertDashboardToInitial()V

    goto :goto_0

    .line 444
    .restart local v0    # "header":Landroid/preference/PreferenceActivity$Header;
    :cond_4
    const/4 v5, 0x4

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v6

    if-ne v5, v6, :cond_5

    iget-object v5, v0, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 446
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v5, v2}, Lcom/lenovo/settings/dslv/DragSortListView;->setSelection(I)V

    .line 447
    const-string v5, "LOG_TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "moveToHeader: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 435
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private rebuildUI(Landroid/content/Context;Z)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forceRefresh"    # Z

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->isAdded()Z

    move-result v5

    if-nez v5, :cond_0

    .line 370
    const-string v5, "DashboardSummary"

    const-string v8, "Cannot build the DashboardSummary UI yet as the Fragment is not added"

    invoke-static {v5, v8}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 375
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 377
    .local v6, "start":J
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v5}, Lcom/lenovo/settings/dslv/DragSortListView;->getInputAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 379
    .local v1, "adapter":Landroid/widget/ListAdapter;
    if-eqz v1, :cond_1

    if-eqz p2, :cond_4

    .line 380
    :cond_1
    check-cast v0, Lcom/android/settings/SettingsActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/android/settings/SettingsActivity;->getDashboardCategories(Z)Ljava/util/List;

    move-result-object v4

    .line 381
    .local v4, "header":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    if-nez v5, :cond_2

    .line 382
    new-instance v5, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v5, v8, v4, v9}, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;)V

    iput-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    .line 384
    :cond_2
    if-nez v1, :cond_3

    .line 387
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    invoke-virtual {v5, v8}, Lcom/lenovo/settings/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 388
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v5, p0}, Lcom/lenovo/settings/dslv/DragSortListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 393
    :goto_1
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    invoke-virtual {v5}, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;->resume()V

    .line 399
    .end local v4    # "header":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->updateAirPlaneState()V

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->updateSimState()V

    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v6

    .line 403
    .local v2, "delta":J
    const-string v5, "DashboardSummary"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rebuildUI took: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 390
    .end local v2    # "delta":J
    .restart local v4    # "header":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    :cond_3
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    invoke-virtual {v5}, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 395
    .end local v4    # "header":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    invoke-virtual {v5}, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;->notifyDataSetChanged()V

    goto :goto_2
.end method

.method private registerBroadcastReceiver()V
    .locals 6

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 254
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_0

    .line 255
    new-instance v3, Lcom/android/settings/dashboard/DashboardSummary$2;

    invoke-direct {v3, p0}, Lcom/android/settings/dashboard/DashboardSummary$2;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneReceiver:Landroid/content/BroadcastReceiver;

    .line 268
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 272
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getConstantStringACTION_SIM_INFO_UPDATE()Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "simStateAction":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 275
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSimInfoReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_1

    .line 276
    new-instance v3, Lcom/android/settings/dashboard/DashboardSummary$3;

    invoke-direct {v3, p0, v2}, Lcom/android/settings/dashboard/DashboardSummary$3;-><init>(Lcom/android/settings/dashboard/DashboardSummary;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSimInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 290
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 291
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSimInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 296
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mPrivateModeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_3

    .line 297
    new-instance v3, Lcom/android/settings/dashboard/DashboardSummary$4;

    invoke-direct {v3, p0}, Lcom/android/settings/dashboard/DashboardSummary$4;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mPrivateModeReceiver:Landroid/content/BroadcastReceiver;

    .line 308
    :cond_3
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mPrivateModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.lenovo.security.CHANGE_PRIVATE_MODE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 310
    return-void

    .line 293
    :catch_0
    move-exception v3

    goto :goto_1

    .line 270
    .end local v2    # "simStateAction":Ljava/lang/String;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private sendRebuildUI()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 419
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 422
    :cond_0
    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .locals 3

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 314
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_0

    .line 315
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 318
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getConstantStringACTION_SIM_INFO_UPDATE()Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "simStateAction":Ljava/lang/String;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSimInfoReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_1

    .line 321
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSimInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 324
    :cond_1
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mPrivateModeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_2

    .line 325
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mPrivateModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 327
    :cond_2
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 121
    const v0, 0x7f040023

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/dslv/DragSortListView;

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    .line 124
    new-instance v0, Lcom/android/settings/dashboard/DashboardSummary$MyDSController;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/DashboardSummary$MyDSController;-><init>(Lcom/android/settings/dashboard/DashboardSummary;Lcom/lenovo/settings/dslv/DragSortListView;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mController:Lcom/lenovo/settings/dslv/DragSortController;

    .line 125
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mController:Lcom/lenovo/settings/dslv/DragSortController;

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->setFloatViewManager(Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mController:Lcom/lenovo/settings/dslv/DragSortController;

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    if-eqz v5, :cond_1

    .line 167
    move v4, p3

    .line 168
    .local v4, "newPosition":I
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDslv:Lcom/lenovo/settings/dslv/DragSortListView;

    invoke-virtual {v5}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x1

    if-lt p3, v5, :cond_0

    .line 169
    add-int/lit8 v4, p3, -0x1

    .line 171
    :cond_0
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    invoke-virtual {v5, v4}, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 173
    .local v0, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v5

    if-nez v5, :cond_2

    .line 219
    .end local v0    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v4    # "newPosition":I
    .end local p2    # "v":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 178
    .restart local v0    # "header":Landroid/preference/PreferenceActivity$Header;
    .restart local v4    # "newPosition":I
    .restart local p2    # "v":Landroid/view/View;
    :cond_2
    iget-object v5, v0, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 179
    iget-object v5, v0, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/settings/LPSReaper;->trackHeaderLaunch(Ljava/lang/String;)V

    .line 182
    :cond_3
    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0b0022

    cmp-long v5, v6, v8

    if-eqz v5, :cond_4

    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0b0249

    cmp-long v5, v6, v8

    if-eqz v5, :cond_4

    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0b024f

    cmp-long v5, v6, v8

    if-nez v5, :cond_5

    .line 185
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/search/Index;

    move-result-object v2

    .line 187
    .local v2, "index":Lcom/lenovo/settings/search/Index;
    invoke-virtual {v2}, Lcom/lenovo/settings/search/Index;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_5

    .line 188
    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0b024f

    cmp-long v5, v6, v8

    if-nez v5, :cond_7

    .line 189
    invoke-direct {p0, v2}, Lcom/android/settings/dashboard/DashboardSummary;->addCharacterPluginsToWhiteList(Lcom/lenovo/settings/search/Index;)V

    .line 196
    .end local v2    # "index":Lcom/lenovo/settings/search/Index;
    :cond_5
    :goto_1
    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0b0022

    cmp-long v5, v6, v8

    if-nez v5, :cond_8

    .line 197
    invoke-direct {p0, v0, v4}, Lcom/android/settings/dashboard/DashboardSummary;->handlePluginClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 203
    :goto_2
    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0b0248

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 204
    const/4 v1, 0x0

    .line 205
    .local v1, "holder":Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;
    instance-of v5, p2, Lcom/lenovo/settings/dslv/DragSortItemView;

    if-eqz v5, :cond_9

    .line 206
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "v":Landroid/view/View;
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 207
    .local v3, "itemView":Landroid/view/View;
    if-eqz v3, :cond_6

    .line 208
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;
    check-cast v1, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;

    .line 213
    .end local v3    # "itemView":Landroid/view/View;
    .restart local v1    # "holder":Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;
    :cond_6
    :goto_3
    if-eqz v1, :cond_1

    iget-object v5, v1, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    if-eqz v5, :cond_1

    .line 214
    iget-object v5, v1, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v5}, Landroid/widget/Switch;->toggle()V

    goto :goto_0

    .line 190
    .end local v1    # "holder":Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;
    .restart local v2    # "index":Lcom/lenovo/settings/search/Index;
    .restart local p2    # "v":Landroid/view/View;
    :cond_7
    iget-object v5, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_5

    .line 191
    invoke-direct {p0, v0, v2}, Lcom/android/settings/dashboard/DashboardSummary;->addOtherPluginsToWhiteList(Landroid/preference/PreferenceActivity$Header;Lcom/lenovo/settings/search/Index;)V

    goto :goto_1

    .line 199
    .end local v2    # "index":Lcom/lenovo/settings/search/Index;
    :cond_8
    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/DashboardSummary;->handleNormalClick(Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_2

    .line 211
    .restart local v1    # "holder":Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;
    :cond_9
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;
    check-cast v1, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;

    .restart local v1    # "holder":Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;
    goto :goto_3
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "DashboardSummary"

    const-string v1, "onPause()..."

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardSummary;->unregisterBroadcastReceiver()V

    .line 154
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;->pause()V

    .line 157
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;->isHeaderIndexChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/DashboardSortUtil;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/DashboardSortUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/DashboardSortUtil;->saveDragListIndex(Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;)V

    .line 161
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 162
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 133
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 134
    const-string v0, "DashboardSummary"

    const-string v1, "onResume()..."

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardSummary;->registerBroadcastReceiver()V

    .line 138
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardSummary;->sendRebuildUI()V

    .line 140
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;->resume()V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 147
    :cond_1
    return-void
.end method

.method protected updateAirPlaneState()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;->updateAirPlaneMode()V

    .line 410
    :cond_0
    return-void
.end method

.method protected updateSimState()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;->updateSimStatus()V

    .line 416
    :cond_0
    return-void
.end method
