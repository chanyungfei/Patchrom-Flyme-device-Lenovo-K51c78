.class public Llenovo/app/ActionBarPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "ActionBarPreferenceActivity.java"

# interfaces
.implements Llenovo/app/TaskStackBuilder$SupportParentable;
.implements Llenovo/app/ActionBarDrawerToggle$DelegateProvider;
.implements Llenovo/app/ActionBarDrawerToggle$TmpDelegateProvider;
.implements Llenovo/app/ActivityBarActivityImpl;
.implements Llenovo/app/ActivityHelp;


# instance fields
.field private mDelegate:Llenovo/app/ActionBarActivityDelegate;

.field mHasFinished:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 592
    const/4 v0, 0x0

    iput-boolean v0, p0, Llenovo/app/ActionBarPreferenceActivity;->mHasFinished:Z

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 127
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Llenovo/app/ActionBarActivityDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 580
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->onUserInteraction()V

    .line 581
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getActionBar()Llenovo/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getActionBar()Llenovo/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Llenovo/app/ActionBar;->onMenuKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    const/4 v0, 0x1

    .line 584
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x1

    iput-boolean v0, p0, Llenovo/app/ActionBarPreferenceActivity;->mHasFinished:Z

    .line 589
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->finish()V

    .line 590
    return-void
.end method

.method public bridge synthetic getActionBar()Landroid/app/ActionBar;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getActionBar()Llenovo/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getActionBar()Llenovo/app/ActionBar;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Llenovo/app/ActionBarActivityDelegate;->getSupportActionBar()Llenovo/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method getDelegate()Llenovo/app/ActionBarActivityDelegate;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Llenovo/app/ActionBarPreferenceActivity;->mDelegate:Llenovo/app/ActionBarActivityDelegate;

    if-nez v0, :cond_0

    .line 573
    invoke-static {p0}, Llenovo/app/ActionBarActivityDelegate;->createDelegate(Landroid/app/Activity;)Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    iput-object v0, p0, Llenovo/app/ActionBarPreferenceActivity;->mDelegate:Llenovo/app/ActionBarActivityDelegate;

    .line 575
    :cond_0
    iget-object v0, p0, Llenovo/app/ActionBarPreferenceActivity;->mDelegate:Llenovo/app/ActionBarActivityDelegate;

    return-object v0
.end method

.method public final getDrawerToggleDelegate()Llenovo/app/ActionBarDrawerToggle$Delegate;
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Llenovo/app/ActionBarActivityDelegate;->getDrawerToggleDelegate()Llenovo/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Llenovo/app/ActionBarActivityDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 481
    invoke-static {p0}, Llenovo/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getV7DrawerToggleDelegate()Llenovo/app/ActionBarDrawerToggle$Delegate;
    .locals 1
    .annotation build Llenovo/annotation/Nullable;
    .end annotation

    .prologue
    .line 528
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Llenovo/app/ActionBarActivityDelegate;->getV7DrawerToggleDelegate()Llenovo/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    return-object v0
.end method

.method public hasFinished()Z
    .locals 1

    .prologue
    .line 595
    iget-boolean v0, p0, Llenovo/app/ActionBarPreferenceActivity;->mHasFinished:Z

    return v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Llenovo/app/ActionBarActivityDelegate;->supportInvalidateOptionsMenu()V

    .line 225
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 319
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Llenovo/app/ActionBarActivityDelegate;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 322
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 147
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Llenovo/app/ActionBarActivityDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 148
    return-void
.end method

.method public final onContentChanged()V
    .locals 1

    .prologue
    .line 549
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Llenovo/app/ActionBarActivityDelegate;->onContentChanged()V

    .line 550
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Llenovo/app/ActionBarPreferenceActivity;->requestWindowFeature(I)Z

    .line 134
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Llenovo/app/ActionBarActivityDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    const-string v0, "liqftest"

    const-string v1, "ActionBarActivity::lenovo-appcompat Version:dev_1.4.3_10"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 251
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Llenovo/app/ActionBarActivityDelegate;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 164
    if-nez p1, :cond_0

    .line 165
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Llenovo/app/ActionBarActivityDelegate;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    .line 167
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateSupportNavigateUpTaskStack(Llenovo/app/TaskStackBuilder;)V
    .locals 0
    .param p1, "builder"    # Llenovo/app/TaskStackBuilder;

    .prologue
    .line 407
    invoke-virtual {p1, p0}, Llenovo/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Llenovo/app/TaskStackBuilder;

    .line 408
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
    .line 563
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 564
    .local v0, "result":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 568
    .end local v0    # "result":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "result":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Llenovo/app/ActionBarActivityDelegate;->createView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 187
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Llenovo/app/ActionBarActivityDelegate;->destroy()V

    .line 188
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 539
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    const/4 v0, 0x1

    .line 542
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

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
    .line 533
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

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
    .line 173
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const/4 v1, 0x1

    .line 181
    :goto_0
    return v1

    .line 176
    :cond_0
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getActionBar()Llenovo/app/ActionBar;

    move-result-object v0

    .line 177
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

    .line 179
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->onSupportNavigateUp()Z

    move-result v1

    goto :goto_0

    .line 181
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 266
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

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
    .line 261
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Llenovo/app/ActionBarActivityDelegate;->onPanelClosed(ILandroid/view/Menu;)V

    .line 262
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPostResume()V

    .line 159
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Llenovo/app/ActionBarActivityDelegate;->onPostResume()V

    .line 160
    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 274
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

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
    .line 256
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Llenovo/app/ActionBarActivityDelegate;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPrepareSupportNavigateUpTaskStack(Llenovo/app/TaskStackBuilder;)V
    .locals 0
    .param p1, "builder"    # Llenovo/app/TaskStackBuilder;

    .prologue
    .line 426
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 153
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Llenovo/app/ActionBarActivityDelegate;->onStop()V

    .line 154
    return-void
.end method

.method public onSupportActionModeFinished(Llenovo/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Llenovo/view/ActionMode;

    .prologue
    .line 243
    return-void
.end method

.method public onSupportActionModeStarted(Llenovo/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Llenovo/view/ActionMode;

    .prologue
    .line 234
    return-void
.end method

.method public onSupportContentChanged()V
    .locals 0

    .prologue
    .line 557
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onContentChanged()V

    .line 558
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 3

    .prologue
    .line 452
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v1

    .line 454
    .local v1, "upIntent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 455
    invoke-virtual {p0, v1}, Llenovo/app/ActionBarPreferenceActivity;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    invoke-static {p0}, Llenovo/app/TaskStackBuilder;->create(Landroid/content/Context;)Llenovo/app/TaskStackBuilder;

    move-result-object v0

    .line 457
    .local v0, "b":Llenovo/app/TaskStackBuilder;
    invoke-virtual {p0, v0}, Llenovo/app/ActionBarPreferenceActivity;->onCreateSupportNavigateUpTaskStack(Llenovo/app/TaskStackBuilder;)V

    .line 458
    invoke-virtual {p0, v0}, Llenovo/app/ActionBarPreferenceActivity;->onPrepareSupportNavigateUpTaskStack(Llenovo/app/TaskStackBuilder;)V

    .line 459
    invoke-virtual {v0}, Llenovo/app/TaskStackBuilder;->startActivities()V

    .line 460
    invoke-static {p0}, Llenovo/app/ActivityUtils;->finishAffinity(Landroid/app/Activity;)V

    .line 466
    .end local v0    # "b":Llenovo/app/TaskStackBuilder;
    :goto_0
    const/4 v2, 0x1

    .line 468
    :goto_1
    return v2

    .line 464
    :cond_0
    invoke-virtual {p0, v1}, Llenovo/app/ActionBarPreferenceActivity;->supportNavigateUpTo(Landroid/content/Intent;)V

    goto :goto_0

    .line 468
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .prologue
    .line 192
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 193
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Llenovo/app/ActionBarActivityDelegate;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 194
    return-void
.end method

.method public requestLenovoWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 211
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Llenovo/app/ActionBarActivityDelegate;->supportRequestWindowFeature(I)Z

    move-result v0

    return v0
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .prologue
    .line 112
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Llenovo/app/ActionBarActivityDelegate;->setContentView(I)V

    .line 113
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 117
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Llenovo/app/ActionBarActivityDelegate;->setContentView(Landroid/view/View;)V

    .line 118
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 122
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Llenovo/app/ActionBarActivityDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    return-void
.end method

.method public setLenovoProgressBarIndeterminateVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 349
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Llenovo/app/ActionBarActivityDelegate;->setSupportProgressBarIndeterminateVisibility(Z)V

    .line 350
    return-void
.end method

.method public setSupportActionBar(Llenovo/widget/Toolbar;)V
    .locals 1
    .param p1, "toolbar"    # Llenovo/widget/Toolbar;
        .annotation build Llenovo/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 102
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Llenovo/app/ActionBarActivityDelegate;->setSupportActionBar(Llenovo/widget/Toolbar;)V

    .line 103
    return-void
.end method

.method public setSupportProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 380
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Llenovo/app/ActionBarActivityDelegate;->setSupportProgress(I)V

    .line 381
    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 364
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Llenovo/app/ActionBarActivityDelegate;->setSupportProgressBarIndeterminate(Z)V

    .line 365
    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 335
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Llenovo/app/ActionBarActivityDelegate;->setSupportProgressBarVisibility(Z)V

    .line 336
    return-void
.end method

.method public startSupportActionMode(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Llenovo/view/ActionMode$Callback;

    .prologue
    .line 246
    invoke-virtual {p0}, Llenovo/app/ActionBarPreferenceActivity;->getDelegate()Llenovo/app/ActionBarActivityDelegate;

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
    .line 290
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    return-void
.end method

.method public superOnCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "frameworkMenu"    # Landroid/view/Menu;

    .prologue
    .line 295
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public superOnMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 314
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public superOnPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 310
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 311
    return-void
.end method

.method public superOnPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public superOnPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 300
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public superSetContentView(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 278
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->setContentView(I)V

    .line 279
    return-void
.end method

.method public superSetContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 282
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->setContentView(Landroid/view/View;)V

    .line 283
    return-void
.end method

.method superSetContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 286
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    return-void
.end method

.method public supportNavigateUpTo(Landroid/content/Intent;)V
    .locals 0
    .param p1, "upIntent"    # Landroid/content/Intent;

    .prologue
    .line 514
    invoke-static {p0, p1}, Llenovo/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 515
    return-void
.end method

.method public supportShouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    .line 498
    invoke-static {p0, p1}, Llenovo/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
