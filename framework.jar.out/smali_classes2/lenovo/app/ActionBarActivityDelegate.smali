.class abstract Llenovo/app/ActionBarActivityDelegate;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;
    }
.end annotation


# static fields
.field static final LENOVO_FEATURE_HAS_EMBEDDED_TABS:I = 0x10

.field static final METADATA_UI_OPTIONS:Ljava/lang/String; = "android.support.UI_OPTIONS"

.field private static final TAG:Ljava/lang/String; = "ActionBarActivityDelegate"

.field static final UIOPTION_SPLIT_ACTION_BAR_WHEN_NARROW:Ljava/lang/String; = "splitActionBarWhenNarrow"


# instance fields
.field mActionBar:Llenovo/app/ActionBar;

.field final mActivity:Landroid/app/Activity;

.field final mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

.field final mDefaultWindowCallback:Lcom/lenovo/internal/app/WindowCallback;

.field mHasActionBar:Z

.field mHasEmbeddedTabsSup:Z

.field private mIsDestroyed:Z

.field mIsFloating:Z

.field private mMenuInflater:Landroid/view/MenuInflater;

.field mOnlySplitBar:Lcom/lenovo/internal/widget/SplitActionBarView;

.field mOverlayActionBar:Z

.field mOverlayActionMode:Z

.field mSplitNoAcionBar:Z

.field private mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Llenovo/app/ActionBarActivityDelegate$1;

    invoke-direct {v0, p0}, Llenovo/app/ActionBarActivityDelegate$1;-><init>(Llenovo/app/ActionBarActivityDelegate;)V

    iput-object v0, p0, Llenovo/app/ActionBarActivityDelegate;->mDefaultWindowCallback:Lcom/lenovo/internal/app/WindowCallback;

    .line 121
    iput-object p1, p0, Llenovo/app/ActionBarActivityDelegate;->mActivity:Landroid/app/Activity;

    .line 122
    check-cast p1, Llenovo/app/ActivityBarActivityImpl;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Llenovo/app/ActionBarActivityDelegate;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    .line 123
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegate;->mDefaultWindowCallback:Lcom/lenovo/internal/app/WindowCallback;

    iput-object v0, p0, Llenovo/app/ActionBarActivityDelegate;->mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;

    .line 124
    return-void
.end method

.method static createDelegate(Landroid/app/Activity;)Llenovo/app/ActionBarActivityDelegate;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 55
    new-instance v0, Llenovo/app/ActionBarActivityDelegateHC;

    invoke-direct {v0, p0}, Llenovo/app/ActionBarActivityDelegateHC;-><init>(Landroid/app/Activity;)V

    .line 57
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Llenovo/app/ActionBarActivityDelegateBase;

    invoke-direct {v0, p0}, Llenovo/app/ActionBarActivityDelegateBase;-><init>(Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method abstract addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method abstract createSupportActionBar()Llenovo/app/ActionBar;
.end method

.method abstract createView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Llenovo/annotation/NonNull;
        .end annotation
    .end param
.end method

.method final destroy()V
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Llenovo/app/ActionBarActivityDelegate;->mIsDestroyed:Z

    .line 338
    return-void
.end method

.method protected final getActionBarThemedContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 273
    const/4 v1, 0x0

    .line 276
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegate;->getSupportActionBar()Llenovo/app/ActionBar;

    move-result-object v0

    .line 277
    .local v0, "ab":Llenovo/app/ActionBar;
    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Llenovo/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    .line 281
    :cond_0
    if-nez v1, :cond_1

    .line 282
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegate;->mActivity:Landroid/app/Activity;

    .line 284
    :cond_1
    return-object v1
.end method

.method final getDrawerToggleDelegate()Llenovo/app/ActionBarDrawerToggle$Delegate;
    .locals 2

    .prologue
    .line 232
    new-instance v0, Llenovo/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Llenovo/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;-><init>(Llenovo/app/ActionBarActivityDelegate;Llenovo/app/ActionBarActivityDelegate$1;)V

    return-object v0
.end method

.method abstract getHomeAsUpIndicatorAttrId()I
.end method

.method getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegate;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcom/lenovo/internal/view/SupportMenuInflater;

    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegate;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/internal/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Llenovo/app/ActionBarActivityDelegate;->mMenuInflater:Landroid/view/MenuInflater;

    .line 149
    :cond_0
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegate;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method

.method final getSupportActionBar()Llenovo/app/ActionBar;
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Llenovo/app/ActionBarActivityDelegate;->mHasActionBar:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegate;->mActionBar:Llenovo/app/ActionBar;

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p0}, Llenovo/app/ActionBarActivityDelegate;->createSupportActionBar()Llenovo/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Llenovo/app/ActionBarActivityDelegate;->mActionBar:Llenovo/app/ActionBar;

    .line 136
    :cond_0
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegate;->mActionBar:Llenovo/app/ActionBar;

    return-object v0
.end method

.method final getUiOptions()I
    .locals 7

    .prologue
    .line 244
    :try_start_0
    iget-object v4, p0, Llenovo/app/ActionBarActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 245
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Llenovo/app/ActionBarActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 247
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    iget v3, v1, Landroid/content/pm/ActivityInfo;->uiOptions:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ActionBarActivityDelegate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUiOptionsFromMetadata: Activity \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' not in manifest"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v3, 0x0

    goto :goto_0
.end method

.method final getUiOptionsFromMetadata()Ljava/lang/String;
    .locals 7

    .prologue
    .line 257
    :try_start_0
    iget-object v4, p0, Llenovo/app/ActionBarActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 258
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Llenovo/app/ActionBarActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 260
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    const/4 v3, 0x0

    .line 261
    .local v3, "uiOptions":Ljava/lang/String;
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 262
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.support.UI_OPTIONS"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 268
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "uiOptions":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ActionBarActivityDelegate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUiOptionsFromMetadata: Activity \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Llenovo/app/ActionBarActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' not in manifest"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v3, 0x0

    goto :goto_0
.end method

.method final getV7DrawerToggleDelegate()Llenovo/app/ActionBarDrawerToggle$Delegate;
    .locals 2

    .prologue
    .line 236
    new-instance v0, Llenovo/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Llenovo/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;-><init>(Llenovo/app/ActionBarActivityDelegate;Llenovo/app/ActionBarActivityDelegate$1;)V

    return-object v0
.end method

.method final getWindowCallback()Lcom/lenovo/internal/app/WindowCallback;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegate;->mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;

    return-object v0
.end method

.method final isDestroyed()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Llenovo/app/ActionBarActivityDelegate;->mIsDestroyed:Z

    return v0
.end method

.method abstract onBackPressed()Z
.end method

.method abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method abstract onContentChanged()V
.end method

.method onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 154
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegate;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/lenovo/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 162
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Llenovo/app/ActionBarActivityDelegate;->mHasActionBar:Z

    .line 165
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Llenovo/app/ActionBarActivityDelegate;->mOverlayActionBar:Z

    .line 167
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Llenovo/app/ActionBarActivityDelegate;->mOverlayActionMode:Z

    .line 168
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Llenovo/app/ActionBarActivityDelegate;->mIsFloating:Z

    .line 169
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 170
    return-void
.end method

.method abstract onCreatePanelMenu(ILandroid/view/Menu;)Z
.end method

.method abstract onCreatePanelView(I)Landroid/view/View;
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method abstract onKeyShortcut(ILandroid/view/KeyEvent;)Z
.end method

.method abstract onMenuOpened(ILandroid/view/Menu;)Z
.end method

.method abstract onPanelClosed(ILandroid/view/Menu;)V
.end method

.method abstract onPostResume()V
.end method

.method onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 202
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 206
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 208
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegate;->mActivityBarActivityImpl:Llenovo/app/ActivityBarActivityImpl;

    invoke-interface {v0, p1, p2}, Llenovo/app/ActivityBarActivityImpl;->superOnPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method abstract onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
.end method

.method public onSplitMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method abstract onStop()V
.end method

.method abstract onTitleChanged(Ljava/lang/CharSequence;)V
.end method

.method abstract setContentView(I)V
.end method

.method abstract setContentView(Landroid/view/View;)V
.end method

.method abstract setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public setSplitNoActionBar(Z)V
    .locals 0
    .param p1, "isSplitNoActionBar"    # Z

    .prologue
    .line 349
    iput-boolean p1, p0, Llenovo/app/ActionBarActivityDelegate;->mSplitNoAcionBar:Z

    .line 350
    return-void
.end method

.method protected final setSupportActionBar(Llenovo/app/ActionBar;)V
    .locals 0
    .param p1, "actionBar"    # Llenovo/app/ActionBar;

    .prologue
    .line 140
    iput-object p1, p0, Llenovo/app/ActionBarActivityDelegate;->mActionBar:Llenovo/app/ActionBar;

    .line 141
    return-void
.end method

.method abstract setSupportActionBar(Llenovo/widget/Toolbar;)V
.end method

.method abstract setSupportProgress(I)V
.end method

.method abstract setSupportProgressBarIndeterminate(Z)V
.end method

.method abstract setSupportProgressBarIndeterminateVisibility(Z)V
.end method

.method abstract setSupportProgressBarVisibility(Z)V
.end method

.method final setWindowCallback(Lcom/lenovo/internal/app/WindowCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/lenovo/internal/app/WindowCallback;

    .prologue
    .line 326
    if-nez p1, :cond_0

    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_0
    iput-object p1, p0, Llenovo/app/ActionBarActivityDelegate;->mWindowCallback:Lcom/lenovo/internal/app/WindowCallback;

    .line 330
    return-void
.end method

.method abstract startSupportActionMode(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;
.end method

.method abstract startSupportActionModeFromWindow(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;
.end method

.method abstract supportInvalidateOptionsMenu()V
.end method

.method abstract supportRequestWindowFeature(I)Z
.end method
