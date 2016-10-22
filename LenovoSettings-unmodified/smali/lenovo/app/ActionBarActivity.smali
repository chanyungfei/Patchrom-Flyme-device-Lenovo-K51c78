.class public Llenovo/app/ActionBarActivity;
.super Landroid/app/Activity;
.source "ActionBarActivity.java"

# interfaces
.implements Llenovo/app/TaskStackBuilder$SupportParentable;
.implements Llenovo/app/ActionBarDrawerToggle$DelegateProvider;
.implements Llenovo/app/ActionBarDrawerToggle$TmpDelegateProvider;
.implements Llenovo/app/ActivityBarActivityImpl;


# instance fields
.field private mDelegate:Llenovo/app/ActionBarActivityDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 125
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Llenovo/app/ActionBarActivityDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 573
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->onUserInteraction()V

    .line 574
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getActionBar()Llenovo/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getActionBar()Llenovo/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Llenovo/app/ActionBar;->onMenuKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    const/4 v0, 0x1

    .line 577
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getActionBar()Landroid/app/ActionBar;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getActionBar()Llenovo/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getActionBar()Llenovo/app/ActionBar;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Llenovo/app/ActionBarActivityDelegate;->getSupportActionBar()Llenovo/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method getDelegate()Llenovo/app/ActionBarActivityDelegate;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Llenovo/app/ActionBarActivity;->mDelegate:Llenovo/app/ActionBarActivityDelegate;

    if-nez v0, :cond_0

    .line 566
    invoke-static {p0}, Llenovo/app/ActionBarActivityDelegate;->createDelegate(Landroid/app/Activity;)Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    iput-object v0, p0, Llenovo/app/ActionBarActivity;->mDelegate:Llenovo/app/ActionBarActivityDelegate;

    .line 568
    :cond_0
    iget-object v0, p0, Llenovo/app/ActionBarActivity;->mDelegate:Llenovo/app/ActionBarActivityDelegate;

    return-object v0
.end method

.method public final getDrawerToggleDelegate()Llenovo/app/ActionBarDrawerToggle$Delegate;
    .locals 1

    .prologue
    .line 512
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Llenovo/app/ActionBarActivityDelegate;->getDrawerToggleDelegate()Llenovo/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Llenovo/app/ActionBarActivityDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 474
    invoke-static {p0}, Llenovo/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getV7DrawerToggleDelegate()Llenovo/app/ActionBarDrawerToggle$Delegate;
    .locals 1
    .annotation build Llenovo/annotation/Nullable;
    .end annotation

    .prologue
    .line 521
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Llenovo/app/ActionBarActivityDelegate;->getV7DrawerToggleDelegate()Llenovo/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Llenovo/app/ActionBarActivityDelegate;->supportInvalidateOptionsMenu()V

    .line 218
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Llenovo/app/ActionBarActivityDelegate;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 315
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 140
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Llenovo/app/ActionBarActivityDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 141
    return-void
.end method

.method public final onContentChanged()V
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Llenovo/app/ActionBarActivityDelegate;->onContentChanged()V

    .line 543
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 130
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Llenovo/app/ActionBarActivity;->requestWindowFeature(I)Z

    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Llenovo/app/ActionBarActivityDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const-string v0, "liqftest"

    const-string v1, "ActionBarActivity::lenovo-appcompat Version:1.2.2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 244
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Llenovo/app/ActionBarActivityDelegate;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 158
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Llenovo/app/ActionBarActivityDelegate;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateSupportNavigateUpTaskStack(Llenovo/app/TaskStackBuilder;)V
    .locals 0
    .param p1, "builder"    # Llenovo/app/TaskStackBuilder;

    .prologue
    .line 400
    invoke-virtual {p1, p0}, Llenovo/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Llenovo/app/TaskStackBuilder;

    .line 401
    return-void
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Llenovo/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Llenovo/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 556
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 557
    .local v0, "result":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 561
    .end local v0    # "result":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "result":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Llenovo/app/ActionBarActivityDelegate;->createView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 180
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Llenovo/app/ActionBarActivityDelegate;->destroy()V

    .line 181
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 532
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    const/4 v0, 0x1

    .line 535
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Llenovo/app/ActionBarActivityDelegate;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 526
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Llenovo/app/ActionBarActivityDelegate;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 166
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    const/4 v1, 0x1

    .line 174
    :goto_0
    return v1

    .line 169
    :cond_0
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getActionBar()Llenovo/app/ActionBar;

    move-result-object v0

    .line 170
    .local v0, "ab":Llenovo/app/ActionBar;
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Llenovo/app/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 172
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->onSupportNavigateUp()Z

    move-result v1

    goto :goto_0

    .line 174
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 259
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Llenovo/app/ActionBarActivityDelegate;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 254
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Llenovo/app/ActionBarActivityDelegate;->onPanelClosed(ILandroid/view/Menu;)V

    .line 255
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 152
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Llenovo/app/ActionBarActivityDelegate;->onPostResume()V

    .line 153
    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 267
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Llenovo/app/ActionBarActivityDelegate;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 249
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Llenovo/app/ActionBarActivityDelegate;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPrepareSupportNavigateUpTaskStack(Llenovo/app/TaskStackBuilder;)V
    .locals 0
    .param p1, "builder"    # Llenovo/app/TaskStackBuilder;

    .prologue
    .line 419
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 146
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Llenovo/app/ActionBarActivityDelegate;->onStop()V

    .line 147
    return-void
.end method

.method public onSupportActionModeFinished(Llenovo/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Llenovo/view/ActionMode;

    .prologue
    .line 236
    return-void
.end method

.method public onSupportActionModeStarted(Llenovo/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Llenovo/view/ActionMode;

    .prologue
    .line 227
    return-void
.end method

.method public onSupportContentChanged()V
    .locals 0

    .prologue
    .line 550
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 551
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 3

    .prologue
    .line 445
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v1

    .line 447
    .local v1, "upIntent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 448
    invoke-virtual {p0, v1}, Llenovo/app/ActionBarActivity;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    invoke-static {p0}, Llenovo/app/TaskStackBuilder;->create(Landroid/content/Context;)Llenovo/app/TaskStackBuilder;

    move-result-object v0

    .line 450
    .local v0, "b":Llenovo/app/TaskStackBuilder;
    invoke-virtual {p0, v0}, Llenovo/app/ActionBarActivity;->onCreateSupportNavigateUpTaskStack(Llenovo/app/TaskStackBuilder;)V

    .line 451
    invoke-virtual {p0, v0}, Llenovo/app/ActionBarActivity;->onPrepareSupportNavigateUpTaskStack(Llenovo/app/TaskStackBuilder;)V

    .line 452
    invoke-virtual {v0}, Llenovo/app/TaskStackBuilder;->startActivities()V

    .line 453
    invoke-static {p0}, Llenovo/app/ActivityUtils;->finishAffinity(Landroid/app/Activity;)V

    .line 459
    .end local v0    # "b":Llenovo/app/TaskStackBuilder;
    :goto_0
    const/4 v2, 0x1

    .line 461
    :goto_1
    return v2

    .line 457
    :cond_0
    invoke-virtual {p0, v1}, Llenovo/app/ActionBarActivity;->supportNavigateUpTo(Landroid/content/Intent;)V

    goto :goto_0

    .line 461
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .prologue
    .line 185
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 186
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Llenovo/app/ActionBarActivityDelegate;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 187
    return-void
.end method

.method public requestLenovoWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 204
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Llenovo/app/ActionBarActivityDelegate;->supportRequestWindowFeature(I)Z

    move-result v0

    return v0
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .prologue
    .line 110
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Llenovo/app/ActionBarActivityDelegate;->setContentView(I)V

    .line 111
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 115
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Llenovo/app/ActionBarActivityDelegate;->setContentView(Landroid/view/View;)V

    .line 116
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 120
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Llenovo/app/ActionBarActivityDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    return-void
.end method

.method public setLenovoProgressBarIndeterminateVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 342
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Llenovo/app/ActionBarActivityDelegate;->setSupportProgressBarIndeterminateVisibility(Z)V

    .line 343
    return-void
.end method

.method public setSupportActionBar(Llenovo/widget/Toolbar;)V
    .locals 1
    .param p1, "toolbar"    # Llenovo/widget/Toolbar;
        .annotation build Llenovo/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 100
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Llenovo/app/ActionBarActivityDelegate;->setSupportActionBar(Llenovo/widget/Toolbar;)V

    .line 101
    return-void
.end method

.method public setSupportProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 373
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Llenovo/app/ActionBarActivityDelegate;->setSupportProgress(I)V

    .line 374
    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 357
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Llenovo/app/ActionBarActivityDelegate;->setSupportProgressBarIndeterminate(Z)V

    .line 358
    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 328
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Llenovo/app/ActionBarActivityDelegate;->setSupportProgressBarVisibility(Z)V

    .line 329
    return-void
.end method

.method public startSupportActionMode(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Llenovo/view/ActionMode$Callback;

    .prologue
    .line 239
    invoke-virtual {p0}, Llenovo/app/ActionBarActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Llenovo/app/ActionBarActivityDelegate;->startSupportActionMode(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method superAddContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 283
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    return-void
.end method

.method public superOnCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "frameworkMenu"    # Landroid/view/Menu;

    .prologue
    .line 288
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public superOnMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 307
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public superOnPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 303
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 304
    return-void
.end method

.method public superOnPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public superOnPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 293
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public superSetContentView(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 271
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 272
    return-void
.end method

.method public superSetContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 275
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 276
    return-void
.end method

.method superSetContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 279
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    return-void
.end method

.method public supportNavigateUpTo(Landroid/content/Intent;)V
    .locals 0
    .param p1, "upIntent"    # Landroid/content/Intent;

    .prologue
    .line 507
    invoke-static {p0, p1}, Llenovo/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 508
    return-void
.end method

.method public supportShouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    .line 491
    invoke-static {p0, p1}, Llenovo/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
