.class public Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Lcom/lenovo/component/slidemenu/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DummyDelegate;,
        Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$ToolbarCompatDelegate;,
        Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$JellybeanMr2Delegate;,
        Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DrawerToggle;,
        Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DrawerArrowDrawableToggle;,
        Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$Delegate;,
        Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$TmpDelegateProvider;,
        Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DelegateProvider;
    }
.end annotation


# instance fields
.field private final mActivityImpl:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$Delegate;

.field private final mCloseDrawerContentDescRes:I

.field private mDrawerIndicatorEnabled:Z

.field private final mDrawerLayout:Lcom/lenovo/component/slidemenu/DrawerLayout;

.field private mHasCustomUpIndicator:Z

.field private mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

.field private final mOpenDrawerContentDescRes:I

.field private mSlider:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DrawerToggle;

.field private mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/Toolbar;Lcom/lenovo/component/slidemenu/DrawerLayout;Landroid/graphics/drawable/Drawable;II)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "toolbar"    # Landroid/widget/Toolbar;
    .param p3, "drawerLayout"    # Lcom/lenovo/component/slidemenu/DrawerLayout;
    .param p5, "openDrawerContentDescRes"    # I
    .param p6, "closeDrawerContentDescRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ":",
            "Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DrawerToggle;",
            ">(",
            "Landroid/app/Activity;",
            "Landroid/widget/Toolbar;",
            "Lcom/lenovo/component/slidemenu/DrawerLayout;",
            "TT;II)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p4, "slider":Landroid/graphics/drawable/Drawable;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 187
    if-eqz p2, :cond_0

    .line 188
    new-instance v0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$ToolbarCompatDelegate;

    invoke-direct {v0, p2}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$ToolbarCompatDelegate;-><init>(Landroid/widget/Toolbar;)V

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mActivityImpl:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$Delegate;

    .line 189
    new-instance v0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$1;

    invoke-direct {v0, p0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$1;-><init>(Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;)V

    invoke-virtual {p2, v0}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    :goto_0
    iput-object p3, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mDrawerLayout:Lcom/lenovo/component/slidemenu/DrawerLayout;

    .line 212
    iput p5, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    .line 213
    iput p6, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    .line 214
    if-nez p4, :cond_4

    .line 215
    new-instance v0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DrawerArrowDrawableToggle;

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mActivityImpl:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$Delegate;

    invoke-interface {v1}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$Delegate;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DrawerArrowDrawableToggle;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mSlider:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DrawerToggle;

    .line 221
    .end local p4    # "slider":Landroid/graphics/drawable/Drawable;, "TT;"
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 222
    return-void

    .line 199
    .restart local p4    # "slider":Landroid/graphics/drawable/Drawable;, "TT;"
    :cond_0
    instance-of v0, p1, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DelegateProvider;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 200
    check-cast v0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DelegateProvider;

    invoke-interface {v0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DelegateProvider;->getDrawerToggleDelegate()Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mActivityImpl:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 201
    :cond_1
    instance-of v0, p1, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$TmpDelegateProvider;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 202
    check-cast v0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$TmpDelegateProvider;

    invoke-interface {v0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$TmpDelegateProvider;->getV7DrawerToggleDelegate()Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mActivityImpl:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 203
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_3

    .line 204
    new-instance v0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$JellybeanMr2Delegate;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$JellybeanMr2Delegate;-><init>(Landroid/app/Activity;Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$1;)V

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mActivityImpl:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 208
    :cond_3
    new-instance v0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DummyDelegate;

    invoke-direct {v0, p1}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DummyDelegate;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mActivityImpl:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 218
    :cond_4
    check-cast p4, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DrawerToggle;

    .end local p4    # "slider":Landroid/graphics/drawable/Drawable;, "TT;"
    iput-object p4, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mSlider:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DrawerToggle;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/lenovo/component/slidemenu/DrawerLayout;II)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "drawerLayout"    # Lcom/lenovo/component/slidemenu/DrawerLayout;
    .param p3, "openDrawerContentDescRes"    # I
    .param p4, "closeDrawerContentDescRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 143
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/widget/Toolbar;Lcom/lenovo/component/slidemenu/DrawerLayout;Landroid/graphics/drawable/Drawable;II)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/lenovo/component/slidemenu/DrawerLayout;Landroid/widget/Toolbar;II)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "drawerLayout"    # Lcom/lenovo/component/slidemenu/DrawerLayout;
    .param p3, "toolbar"    # Landroid/widget/Toolbar;
    .param p4, "openDrawerContentDescRes"    # I
    .param p5, "closeDrawerContentDescRes"    # I

    .prologue
    .line 174
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/widget/Toolbar;Lcom/lenovo/component/slidemenu/DrawerLayout;Landroid/graphics/drawable/Drawable;II)V

    .line 176
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->toggle()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private toggle()V
    .locals 2

    .prologue
    const v1, 0x800003

    .line 280
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mDrawerLayout:Lcom/lenovo/component/slidemenu/DrawerLayout;

    invoke-virtual {v0, v1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->isDrawerVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mDrawerLayout:Lcom/lenovo/component/slidemenu/DrawerLayout;

    invoke-virtual {v0, v1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->closeDrawer(I)V

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mDrawerLayout:Lcom/lenovo/component/slidemenu/DrawerLayout;

    invoke-virtual {v0, v1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->openDrawer(I)V

    goto :goto_0
.end method


# virtual methods
.method getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mActivityImpl:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$Delegate;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getToolbarNavigationClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public isDrawerIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    if-nez v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->syncState()V

    .line 260
    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mSlider:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DrawerToggle;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DrawerToggle;->setPosition(F)V

    .line 401
    iget-boolean v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 402
    iget v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    invoke-virtual {p0, v0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->setActionBarDescription(I)V

    .line 404
    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mSlider:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DrawerToggle;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DrawerToggle;->setPosition(F)V

    .line 386
    iget-boolean v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 387
    iget v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    invoke-virtual {p0, v0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->setActionBarDescription(I)V

    .line 389
    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 3
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 373
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mSlider:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DrawerToggle;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DrawerToggle;->setPosition(F)V

    .line 374
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0
    .param p1, "newState"    # I

    .prologue
    .line 415
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 272
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->toggle()V

    .line 274
    const/4 v0, 0x1

    .line 276
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetToggleIcon(Landroid/app/Activity;Landroid/app/ActionBar;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "actionBar"    # Landroid/app/ActionBar;

    .prologue
    .line 667
    new-instance v0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DrawerArrowDrawableToggle;

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mActivityImpl:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$Delegate;

    invoke-interface {v1}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$Delegate;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DrawerArrowDrawableToggle;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mSlider:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DrawerToggle;

    .line 668
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 669
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 670
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->syncState()V

    .line 671
    return-void
.end method

.method public resetToggleIcon(Landroid/app/Activity;Landroid/widget/Toolbar;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "toolbar"    # Landroid/widget/Toolbar;

    .prologue
    .line 682
    if-eqz p2, :cond_0

    .line 683
    new-instance v0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$2;

    invoke-direct {v0, p0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$2;-><init>(Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;)V

    invoke-virtual {p2, v0}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 695
    :cond_0
    new-instance v0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DrawerArrowDrawableToggle;

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mActivityImpl:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$Delegate;

    invoke-interface {v1}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$Delegate;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DrawerArrowDrawableToggle;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mSlider:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DrawerToggle;

    .line 696
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 697
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->syncState()V

    .line 698
    return-void
.end method

.method setActionBarDescription(I)V
    .locals 1
    .param p1, "contentDescRes"    # I

    .prologue
    .line 449
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mActivityImpl:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0, p1}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$Delegate;->setActionBarDescription(I)V

    .line 450
    return-void
.end method

.method setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "upDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .prologue
    .line 445
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mActivityImpl:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$Delegate;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 446
    return-void
.end method

.method public setDrawerIndicatorEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eq p1, v0, :cond_0

    .line 351
    if-eqz p1, :cond_2

    .line 352
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mSlider:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DrawerToggle;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mDrawerLayout:Lcom/lenovo/component/slidemenu/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 358
    :goto_1
    iput-boolean p1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 360
    :cond_0
    return-void

    .line 352
    :cond_1
    iget v1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    goto :goto_0

    .line 356
    :cond_2
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mDrawerLayout:Lcom/lenovo/component/slidemenu/DrawerLayout;

    invoke-virtual {v1}, Lcom/lenovo/component/slidemenu/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 328
    :cond_0
    invoke-virtual {p0, v0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 329
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 299
    if-nez p1, :cond_1

    .line 300
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 301
    iput-boolean v1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    .line 307
    :goto_0
    iget-boolean v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 310
    :cond_0
    return-void

    .line 303
    :cond_1
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    goto :goto_0
.end method

.method public setToolbarNavigationClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onToolbarNavigationClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    .line 442
    return-void
.end method

.method public syncState()V
    .locals 3

    .prologue
    const v2, 0x800003

    .line 234
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mDrawerLayout:Lcom/lenovo/component/slidemenu/DrawerLayout;

    invoke-virtual {v0, v2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mSlider:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DrawerToggle;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DrawerToggle;->setPosition(F)V

    .line 239
    :goto_0
    iget-boolean v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mSlider:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DrawerToggle;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mDrawerLayout:Lcom/lenovo/component/slidemenu/DrawerLayout;

    invoke-virtual {v1, v2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 244
    :cond_0
    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mSlider:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DrawerToggle;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$DrawerToggle;->setPosition(F)V

    goto :goto_0

    .line 240
    :cond_2
    iget v1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    goto :goto_1
.end method
