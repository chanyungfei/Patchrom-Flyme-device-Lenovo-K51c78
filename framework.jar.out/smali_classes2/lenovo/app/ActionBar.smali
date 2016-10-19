.class public abstract Llenovo/app/ActionBar;
.super Landroid/app/ActionBar;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/app/ActionBar$DisplayOptions;,
        Llenovo/app/ActionBar$NavigationMode;
    }
.end annotation


# static fields
.field public static final DISPLAY_HOME_AS_UP:I = 0x4

.field public static final DISPLAY_SHOW_CUSTOM:I = 0x10

.field public static final DISPLAY_SHOW_HOME:I = 0x2

.field public static final DISPLAY_SHOW_TABS:I = 0x80

.field public static final DISPLAY_SHOW_TITLE:I = 0x8

.field public static final DISPLAY_USE_LOGO:I = 0x1

.field public static final NAVIGATION_MODE_LIST:I = 0x1

.field public static final NAVIGATION_MODE_STANDARD:I = 0x0

.field public static final NAVIGATION_MODE_TABS:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    .line 135
    return-void
.end method


# virtual methods
.method public addFragmentTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "hasOptionMenu"    # Z

    .prologue
    .line 1078
    return-void
.end method

.method public addFragmentTab(Landroid/app/ActionBar$Tab;IZZ)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z
    .param p4, "hasOptionMenu"    # Z

    .prologue
    .line 1079
    return-void
.end method

.method public addFragmentTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "hasOptionMenu"    # Z

    .prologue
    .line 1076
    return-void
.end method

.method public addFragmentTab(Landroid/app/ActionBar$Tab;ZZ)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z
    .param p3, "hasOptionMenu"    # Z

    .prologue
    .line 1077
    return-void
.end method

.method public abstract addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
.end method

.method public abstract addTab(Landroid/app/ActionBar$Tab;)V
.end method

.method public abstract addTab(Landroid/app/ActionBar$Tab;I)V
.end method

.method public abstract addTab(Landroid/app/ActionBar$Tab;IZ)V
.end method

.method public abstract addTab(Landroid/app/ActionBar$Tab;Z)V
.end method

.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 1058
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1034
    return-void
.end method

.method public finishActionMode()V
    .locals 0

    .prologue
    .line 1080
    return-void
.end method

.method public abstract getCustomView()Landroid/view/View;
.end method

.method public abstract getDisplayOptions()I
.end method

.method public getElevation()F
    .locals 1

    .prologue
    .line 1017
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getHeight()I
.end method

.method public getHideOffset()I
    .locals 1

    .prologue
    .line 974
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getNavigationItemCount()I
.end method

.method public abstract getNavigationMode()I
.end method

.method public abstract getSelectedNavigationIndex()I
.end method

.method public abstract getSelectedTab()Landroid/app/ActionBar$Tab;
    .annotation build Llenovo/annotation/Nullable;
    .end annotation
.end method

.method public abstract getSubtitle()Ljava/lang/CharSequence;
    .annotation build Llenovo/annotation/Nullable;
    .end annotation
.end method

.method public abstract getTabAt(I)Landroid/app/ActionBar$Tab;
.end method

.method public abstract getTabCount()I
.end method

.method public abstract getTabFragmentAt(I)Landroid/app/Fragment;
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 841
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
    .annotation build Llenovo/annotation/Nullable;
    .end annotation
.end method

.method public abstract hide()V
.end method

.method public invalidateOptionsMenu()Z
    .locals 1

    .prologue
    .line 1048
    const/4 v0, 0x0

    return v0
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 1

    .prologue
    .line 961
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isShowing()Z
.end method

.method public isTitleTruncated()Z
    .locals 1

    .prologue
    .line 851
    const/4 v0, 0x0

    return v0
.end method

.method public abstract lockFragment(Z)V
.end method

.method public abstract newTab()Landroid/app/ActionBar$Tab;
.end method

.method public abstract newTab(Landroid/os/Bundle;)Landroid/app/ActionBar$Tab;
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 1030
    return-void
.end method

.method public onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1053
    const/4 v0, 0x0

    return v0
.end method

.method public openOptionsMenu()Z
    .locals 1

    .prologue
    .line 1043
    const/4 v0, 0x0

    return v0
.end method

.method public abstract removeAllTabs()V
.end method

.method public abstract removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
.end method

.method public abstract removeTab(Landroid/app/ActionBar$Tab;)V
.end method

.method public abstract removeTabAt(I)V
.end method

.method public abstract selectTab(Landroid/app/ActionBar$Tab;)V
.end method

.method public setActionModeSeletedAllTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1074
    return-void
.end method

.method public setActionModeTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1072
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 1083
    return-void
.end method

.method public abstract setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Llenovo/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public setCanTabScroller(Z)V
    .locals 0
    .param p1, "canScroller"    # Z

    .prologue
    .line 1082
    return-void
.end method

.method public setContainerBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
        .annotation build Llenovo/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1088
    return-void
.end method

.method public abstract setCustomView(I)V
.end method

.method public abstract setCustomView(Landroid/view/View;)V
.end method

.method public abstract setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1022
    return-void
.end method

.method public abstract setDisplayHomeAsUpEnabled(Z)V
.end method

.method public abstract setDisplayOptions(I)V
.end method

.method public abstract setDisplayOptions(II)V
.end method

.method public abstract setDisplayShowCustomEnabled(Z)V
.end method

.method public abstract setDisplayShowHomeEnabled(Z)V
.end method

.method public abstract setDisplayShowTitleEnabled(Z)V
.end method

.method public abstract setDisplayUseLogoEnabled(Z)V
.end method

.method public setElevation(F)V
    .locals 2
    .param p1, "elevation"    # F

    .prologue
    .line 1002
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1003
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Setting a non-zero elevation is not supported in this action bar configuration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1006
    :cond_0
    return-void
.end method

.method public setHideOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 987
    if-eqz p1, :cond_0

    .line 988
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Setting an explicit action bar hide offset is not supported in this action bar configuration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 991
    :cond_0
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 2
    .param p1, "hideOnContentScroll"    # Z

    .prologue
    .line 947
    if-eqz p1, :cond_0

    .line 948
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Hide on content scroll is not supported in this action bar configuration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 951
    :cond_0
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 931
    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;
        .annotation build Llenovo/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 911
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 892
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;
        .annotation build Llenovo/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 871
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 829
    return-void
.end method

.method public abstract setIcon(I)V
.end method

.method public abstract setIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
.end method

.method public abstract setLogo(I)V
.end method

.method public abstract setLogo(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setNavigationMode(I)V
.end method

.method public setOffscreenPageLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 1085
    return-void
.end method

.method public setOnPageChangeListener(Llenovo/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "onPageChangeListener"    # Llenovo/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 1086
    return-void
.end method

.method public setOptionMenuVisibility(IZ)V
    .locals 0
    .param p1, "tabIndex"    # I
    .param p2, "hasOptionMenu"    # Z

    .prologue
    .line 1084
    return-void
.end method

.method public abstract setSelectedNavigationItem(I)V
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1026
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 530
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 520
    return-void
.end method

.method public abstract setSubtitle(I)V
.end method

.method public abstract setSubtitle(Ljava/lang/CharSequence;)V
.end method

.method public setTabImageColor(II)V
    .locals 0
    .param p1, "tabIndex"    # I
    .param p2, "color"    # I

    .prologue
    .line 1081
    return-void
.end method

.method public abstract setTitle(I)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1063
    return-void
.end method

.method public abstract show()V
.end method

.method public startActionMode(Llenovo/view/ActionMode$Callback;)Llenovo/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Llenovo/view/ActionMode$Callback;

    .prologue
    .line 1038
    const/4 v0, 0x0

    return-object v0
.end method
