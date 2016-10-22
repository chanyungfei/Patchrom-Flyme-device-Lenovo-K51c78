.class public Lcom/flyme/deviceoriginalsettings/DreamSettings;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "DreamSettings.java"

# interfaces
.implements Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/lenovo/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/DreamSettings$PackageReceiver;,
        Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field private static final DIALOG_WHEN_TO_DREAM:I = 0x1

.field private static final PACKAGE_SCHEME:Ljava/lang/String; = "package"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter;

.field private mBackend:Lcom/flyme/deviceoriginalsettings/DreamBackend;

.field private mContext:Landroid/content/Context;

.field private mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

.field private final mPackageReceiver:Lcom/flyme/deviceoriginalsettings/DreamSettings$PackageReceiver;

.field private mRefreshing:Z

.field private mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/flyme/deviceoriginalsettings/DreamSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    .line 65
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DreamSettings$PackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/DreamSettings$PackageReceiver;-><init>(Lcom/flyme/deviceoriginalsettings/DreamSettings;Lcom/flyme/deviceoriginalsettings/DreamSettings$1;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mPackageReceiver:Lcom/flyme/deviceoriginalsettings/DreamSettings$PackageReceiver;

    .line 440
    return-void
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/DreamSettings;)Lcom/flyme/deviceoriginalsettings/DreamBackend;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DreamSettings;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mBackend:Lcom/flyme/deviceoriginalsettings/DreamBackend;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 58
    invoke-static {p0, p1}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/flyme/deviceoriginalsettings/DreamSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DreamSettings;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->refreshFromBackend()V

    return-void
.end method

.method private createMenuItem(Landroid/view/Menu;IIIZLjava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "icon"    # I
    .param p3, "titleRes"    # I
    .param p4, "actionEnum"    # I
    .param p5, "isEnabled"    # Z
    .param p6, "onClick"    # Ljava/lang/Runnable;

    .prologue
    .line 194
    invoke-interface {p1, p3}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 195
    .local v0, "item":Landroid/view/MenuItem;
    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 196
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 197
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 198
    invoke-interface {v0, p5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 199
    new-instance v1, Lcom/flyme/deviceoriginalsettings/DreamSettings$3;

    invoke-direct {v1, p0, p6}, Lcom/flyme/deviceoriginalsettings/DreamSettings$3;-><init>(Lcom/flyme/deviceoriginalsettings/DreamSettings;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 206
    return-object v0
.end method

.method private createWhenToDreamDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 231
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mContext:Landroid/content/Context;

    const v4, 0x7f0c06df

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 234
    .local v1, "items":[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mBackend:Lcom/flyme/deviceoriginalsettings/DreamBackend;

    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/DreamBackend;->isActivatedOnDock()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mBackend:Lcom/flyme/deviceoriginalsettings/DreamBackend;

    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/DreamBackend;->isActivatedOnSleep()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 239
    .local v0, "initialSelection":I
    :cond_0
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c06e2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/flyme/deviceoriginalsettings/DreamSettings$4;

    invoke-direct {v3, p0}, Lcom/flyme/deviceoriginalsettings/DreamSettings$4;-><init>(Lcom/flyme/deviceoriginalsettings/DreamSettings;)V

    invoke-virtual {v2, v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 234
    .end local v0    # "initialSelection":I
    :cond_1
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mBackend:Lcom/flyme/deviceoriginalsettings/DreamBackend;

    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/DreamBackend;->isActivatedOnDock()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mBackend:Lcom/flyme/deviceoriginalsettings/DreamBackend;

    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/DreamBackend;->isActivatedOnSleep()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v2

    goto :goto_0
.end method

.method public static getSummaryResource(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 283
    new-instance v3, Lcom/flyme/deviceoriginalsettings/DreamBackend;

    invoke-direct {v3, p0}, Lcom/flyme/deviceoriginalsettings/DreamBackend;-><init>(Landroid/content/Context;)V

    .line 284
    .local v3, "backend":Lcom/flyme/deviceoriginalsettings/DreamBackend;
    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/DreamBackend;->isEnabled()Z

    move-result v4

    .line 285
    .local v4, "isEnabled":Z
    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/DreamBackend;->isActivatedOnSleep()Z

    move-result v2

    .line 286
    .local v2, "activatedOnSleep":Z
    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/DreamBackend;->isActivatedOnDock()Z

    move-result v0

    .line 287
    .local v0, "activatedOnDock":Z
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 288
    .local v1, "activatedOnEither":Z
    :goto_0
    if-nez v4, :cond_2

    const v5, 0x7f0c06e1

    :cond_0
    :goto_1
    return v5

    .end local v1    # "activatedOnEither":Z
    :cond_1
    move v1, v5

    .line 287
    goto :goto_0

    .line 288
    .restart local v1    # "activatedOnEither":Z
    :cond_2
    if-eqz v1, :cond_3

    const v5, 0x7f0c06dd

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    const v5, 0x7f0c06df

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_0

    const v5, 0x7f0c06e0

    goto :goto_1
.end method

.method public static getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 296
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DreamBackend;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/DreamBackend;-><init>(Landroid/content/Context;)V

    .line 297
    .local v0, "backend":Lcom/flyme/deviceoriginalsettings/DreamBackend;
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/DreamBackend;->isEnabled()Z

    move-result v1

    .line 298
    .local v1, "isEnabled":Z
    if-nez v1, :cond_0

    .line 299
    const v2, 0x7f0c06e1

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 301
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/DreamBackend;->getActiveDreamName()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 328
    sget-object v0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->TAG:Ljava/lang/String;

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .end local p0    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v0, p0}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return-void

    .line 328
    .restart local p0    # "msg":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private refreshFromBackend()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 306
    const-string v6, "refreshFromBackend()"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mRefreshing:Z

    .line 308
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mBackend:Lcom/flyme/deviceoriginalsettings/DreamBackend;

    invoke-virtual {v6}, Lcom/flyme/deviceoriginalsettings/DreamBackend;->isEnabled()Z

    move-result v2

    .line 309
    .local v2, "dreamsEnabled":Z
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v6}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->isChecked()Z

    move-result v6

    if-eq v6, v2, :cond_0

    .line 310
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v6, v2}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->setChecked(Z)V

    .line 312
    :cond_0
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mAdapter:Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v6}, Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter;->clear()V

    .line 313
    if-eqz v2, :cond_1

    .line 314
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mBackend:Lcom/flyme/deviceoriginalsettings/DreamBackend;

    invoke-virtual {v6}, Lcom/flyme/deviceoriginalsettings/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v1

    .line 315
    .local v1, "dreamInfos":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/deviceoriginalsettings/DreamBackend$DreamInfo;>;"
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mAdapter:Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v6, v1}, Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter;->addAll(Ljava/util/Collection;)V

    .line 317
    .end local v1    # "dreamInfos":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/deviceoriginalsettings/DreamBackend$DreamInfo;>;"
    :cond_1
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    if-eqz v6, :cond_2

    .line 318
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    .local v0, "arr$":[Landroid/view/MenuItem;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 319
    .local v5, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 318
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 320
    .end local v0    # "arr$":[Landroid/view/MenuItem;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "menuItem":Landroid/view/MenuItem;
    :cond_2
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 321
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 323
    :cond_3
    iput-boolean v8, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mRefreshing:Z

    .line 324
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 123
    const-string v3, "onActivityCreated(%s)"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 128
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 130
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 131
    .local v0, "emptyView":Landroid/widget/TextView;
    const v3, 0x7f0c01dc

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 132
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 134
    new-instance v3, Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter;-><init>(Lcom/flyme/deviceoriginalsettings/DreamSettings;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mAdapter:Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter;

    .line 135
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mAdapter:Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    .line 138
    .local v2, "sa":Lcom/flyme/deviceoriginalsettings/SettingsActivity;
    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getSwitchBar()Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    .line 139
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 140
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->show()V

    .line 141
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 82
    const-string v0, "onAttach(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 84
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mContext:Landroid/content/Context;

    .line 85
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 188
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 189
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 89
    const-string v1, "onCreate(%s)"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 93
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/flyme/deviceoriginalsettings/DreamBackend;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flyme/deviceoriginalsettings/DreamBackend;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mBackend:Lcom/flyme/deviceoriginalsettings/DreamBackend;

    .line 95
    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->setHasOptionsMenu(Z)V

    .line 96
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "dialogId"    # I

    .prologue
    const/4 v4, 0x1

    .line 211
    const-string v0, "onCreateDialog(%s)"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    if-ne p1, v4, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->createWhenToDreamDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v4, 0x5

    const/4 v9, 0x0

    .line 145
    const-string v0, "onCreateOptionsMenu()"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mBackend:Lcom/flyme/deviceoriginalsettings/DreamBackend;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/DreamBackend;->isEnabled()Z

    move-result v5

    .line 150
    .local v5, "isEnabled":Z
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mBackend:Lcom/flyme/deviceoriginalsettings/DreamBackend;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/DreamBackend;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v2, 0x7f02005a

    :goto_0
    const v3, 0x7f0c06e3

    new-instance v6, Lcom/flyme/deviceoriginalsettings/DreamSettings$1;

    invoke-direct {v6, p0}, Lcom/flyme/deviceoriginalsettings/DreamSettings$1;-><init>(Lcom/flyme/deviceoriginalsettings/DreamSettings;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->createMenuItem(Landroid/view/Menu;IIIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v7

    .line 163
    .local v7, "start":Landroid/view/MenuItem;
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mBackend:Lcom/flyme/deviceoriginalsettings/DreamBackend;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/DreamBackend;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const v2, 0x7f020047

    :goto_1
    const v3, 0x7f0c06e2

    new-instance v6, Lcom/flyme/deviceoriginalsettings/DreamSettings$2;

    invoke-direct {v6, p0}, Lcom/flyme/deviceoriginalsettings/DreamSettings$2;-><init>(Lcom/flyme/deviceoriginalsettings/DreamSettings;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->createMenuItem(Landroid/view/Menu;IIIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v8

    .line 178
    .local v8, "whenToDream":Landroid/view/MenuItem;
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 180
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/MenuItem;

    aput-object v7, v0, v9

    const/4 v1, 0x1

    aput-object v8, v0, v1

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    .line 181
    return-void

    .line 150
    .end local v7    # "start":Landroid/view/MenuItem;
    .end local v8    # "whenToDream":Landroid/view/MenuItem;
    :cond_0
    const v2, 0x7f02005b

    goto :goto_0

    .line 163
    .restart local v7    # "start":Landroid/view/MenuItem;
    :cond_1
    const v2, 0x7f020048

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 114
    const-string v0, "onDestroyView()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 117
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 118
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->hide()V

    .line 119
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 261
    const-string v0, "onPause()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPause()V

    .line 263
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mPackageReceiver:Lcom/flyme/deviceoriginalsettings/DreamSettings$PackageReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 264
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 268
    const-string v1, "onResume()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 270
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->refreshFromBackend()V

    .line 273
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 274
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mPackageReceiver:Lcom/flyme/deviceoriginalsettings/DreamSettings$PackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 280
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "onStart()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onStart()V

    .line 110
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mRefreshing:Z

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mBackend:Lcom/flyme/deviceoriginalsettings/DreamBackend;

    invoke-virtual {v0, p2}, Lcom/flyme/deviceoriginalsettings/DreamBackend;->setEnabled(Z)V

    .line 102
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->refreshFromBackend()V

    .line 104
    :cond_0
    return-void
.end method
