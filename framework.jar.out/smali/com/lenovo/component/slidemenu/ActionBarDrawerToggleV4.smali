.class public Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggleV4.java"

# interfaces
.implements Lcom/lenovo/component/slidemenu/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$1;,
        Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;,
        Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$ActionBarDrawerToggleImplJellybeanMR2;,
        Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$ActionBarDrawerToggleImplBase;,
        Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$ActionBarDrawerToggleImpl;,
        Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$Delegate;,
        Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$DelegateProvider;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ID_HOME:I = 0x102002c

.field private static final IMPL:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$ActionBarDrawerToggleImpl;

.field private static final TOGGLE_DRAWABLE_OFFSET:F = 0.33333334f


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mActivityImpl:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$Delegate;

.field private final mCloseDrawerContentDescRes:I

.field private mDrawerImage:Landroid/graphics/drawable/Drawable;

.field private final mDrawerImageResource:I

.field private mDrawerIndicatorEnabled:Z

.field private final mDrawerLayout:Lcom/lenovo/component/slidemenu/DrawerLayout;

.field private mHasCustomUpIndicator:Z

.field private mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

.field private final mOpenDrawerContentDescRes:I

.field private mSetIndicatorInfo:Ljava/lang/Object;

.field private mSlider:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 169
    .local v0, "version":I
    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 170
    new-instance v1, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$ActionBarDrawerToggleImplJellybeanMR2;

    invoke-direct {v1, v2}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$ActionBarDrawerToggleImplJellybeanMR2;-><init>(Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$1;)V

    sput-object v1, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->IMPL:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$ActionBarDrawerToggleImpl;

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    new-instance v1, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$ActionBarDrawerToggleImplBase;

    invoke-direct {v1, v2}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$ActionBarDrawerToggleImplBase;-><init>(Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$1;)V

    sput-object v1, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->IMPL:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$ActionBarDrawerToggleImpl;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/lenovo/component/slidemenu/DrawerLayout;III)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "drawerLayout"    # Lcom/lenovo/component/slidemenu/DrawerLayout;
    .param p3, "drawerImageRes"    # I
    .param p4, "openDrawerContentDescRes"    # I
    .param p5, "closeDrawerContentDescRes"    # I

    .prologue
    .line 221
    invoke-static {p1}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->assumeMaterial(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;-><init>(Landroid/app/Activity;Lcom/lenovo/component/slidemenu/DrawerLayout;ZIII)V

    .line 223
    return-void

    .line 221
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/lenovo/component/slidemenu/DrawerLayout;ZIII)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "drawerLayout"    # Lcom/lenovo/component/slidemenu/DrawerLayout;
    .param p3, "animate"    # Z
    .param p4, "drawerImageRes"    # I
    .param p5, "openDrawerContentDescRes"    # I
    .param p6, "closeDrawerContentDescRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mDrawerIndicatorEnabled:Z

    .line 254
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mActivity:Landroid/app/Activity;

    .line 257
    instance-of v0, p1, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$DelegateProvider;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 258
    check-cast v0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$DelegateProvider;

    invoke-interface {v0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$DelegateProvider;->getDrawerToggleDelegate()Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$Delegate;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mActivityImpl:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$Delegate;

    .line 263
    :goto_0
    iput-object p2, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mDrawerLayout:Lcom/lenovo/component/slidemenu/DrawerLayout;

    .line 264
    iput p4, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mDrawerImageResource:I

    .line 265
    iput p5, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mOpenDrawerContentDescRes:I

    .line 266
    iput p6, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mCloseDrawerContentDescRes:I

    .line 268
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 269
    invoke-virtual {p1, p4}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mDrawerImage:Landroid/graphics/drawable/Drawable;

    .line 270
    new-instance v0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mDrawerImage:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, p0, v1, v2}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;-><init>(Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;Landroid/graphics/drawable/Drawable;Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$1;)V

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mSlider:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;

    .line 271
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mSlider:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;

    if-eqz p3, :cond_1

    const v0, 0x3eaaaaab

    :goto_1
    invoke-virtual {v1, v0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;->setOffset(F)V

    .line 272
    return-void

    .line 260
    :cond_0
    iput-object v2, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mActivityImpl:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$Delegate;

    goto :goto_0

    .line 271
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic access$300(Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private static assumeMaterial(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x15

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mActivityImpl:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$Delegate;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mActivityImpl:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$Delegate;

    invoke-interface {v0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$Delegate;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 472
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->IMPL:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$ActionBarDrawerToggleImpl;

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$ActionBarDrawerToggleImpl;->getThemeUpIndicator(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public isDrawerIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mDrawerIndicatorEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mHasCustomUpIndicator:Z

    if-nez v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mDrawerImageResource:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mDrawerImage:Landroid/graphics/drawable/Drawable;

    .line 384
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->syncState()V

    .line 385
    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mSlider:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;->setPosition(F)V

    .line 452
    iget-boolean v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 453
    iget v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mOpenDrawerContentDescRes:I

    invoke-virtual {p0, v0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->setActionBarDescription(I)V

    .line 455
    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mSlider:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;->setPosition(F)V

    .line 437
    iget-boolean v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 438
    iget v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mCloseDrawerContentDescRes:I

    invoke-virtual {p0, v0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->setActionBarDescription(I)V

    .line 440
    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 418
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mSlider:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;

    invoke-virtual {v1}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;->getPosition()F

    move-result v0

    .line 419
    .local v0, "glyphOffset":F
    cmpl-float v1, p2, v2

    if-lez v1, :cond_0

    .line 420
    const/4 v1, 0x0

    sub-float v2, p2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 424
    :goto_0
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mSlider:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;

    invoke-virtual {v1, v0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;->setPosition(F)V

    .line 425
    return-void

    .line 422
    :cond_0
    mul-float v1, p2, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method public onDrawerStateChanged(I)V
    .locals 0
    .param p1, "newState"    # I

    .prologue
    .line 466
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v2, 0x800003

    .line 397
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mDrawerLayout:Lcom/lenovo/component/slidemenu/DrawerLayout;

    invoke-virtual {v0, v2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->isDrawerVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mDrawerLayout:Lcom/lenovo/component/slidemenu/DrawerLayout;

    invoke-virtual {v0, v2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->closeDrawer(I)V

    .line 403
    :goto_0
    const/4 v0, 0x1

    .line 405
    :goto_1
    return v0

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mDrawerLayout:Lcom/lenovo/component/slidemenu/DrawerLayout;

    invoke-virtual {v0, v2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->openDrawer(I)V

    goto :goto_0

    .line 405
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method setActionBarDescription(I)V
    .locals 3
    .param p1, "contentDescRes"    # I

    .prologue
    .line 485
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mActivityImpl:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$Delegate;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mActivityImpl:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$Delegate;

    invoke-interface {v0, p1}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$Delegate;->setActionBarDescription(I)V

    .line 491
    :goto_0
    return-void

    .line 489
    :cond_0
    sget-object v0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->IMPL:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$ActionBarDrawerToggleImpl;

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mSetIndicatorInfo:Ljava/lang/Object;

    iget-object v2, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1, v2, p1}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$ActionBarDrawerToggleImpl;->setActionBarDescription(Ljava/lang/Object;Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mSetIndicatorInfo:Ljava/lang/Object;

    goto :goto_0
.end method

.method setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .param p1, "upDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .prologue
    .line 476
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mActivityImpl:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$Delegate;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mActivityImpl:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$Delegate;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$Delegate;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 482
    :goto_0
    return-void

    .line 480
    :cond_0
    sget-object v0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->IMPL:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$ActionBarDrawerToggleImpl;

    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mSetIndicatorInfo:Ljava/lang/Object;

    iget-object v2, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$ActionBarDrawerToggleImpl;->setActionBarUpIndicator(Ljava/lang/Object;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mSetIndicatorInfo:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDrawerIndicatorEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mDrawerIndicatorEnabled:Z

    if-eq p1, v0, :cond_0

    .line 353
    if-eqz p1, :cond_2

    .line 354
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mSlider:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;

    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mDrawerLayout:Lcom/lenovo/component/slidemenu/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v0, v2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mCloseDrawerContentDescRes:I

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 359
    :goto_1
    iput-boolean p1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mDrawerIndicatorEnabled:Z

    .line 361
    :cond_0
    return-void

    .line 354
    :cond_1
    iget v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mOpenDrawerContentDescRes:I

    goto :goto_0

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 338
    :cond_0
    invoke-virtual {p0, v0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 339
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 308
    if-nez p1, :cond_1

    .line 309
    invoke-virtual {p0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 310
    iput-boolean v1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mHasCustomUpIndicator:Z

    .line 316
    :goto_0
    iget-boolean v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mDrawerIndicatorEnabled:Z

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 319
    :cond_0
    return-void

    .line 312
    :cond_1
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mHasCustomUpIndicator:Z

    goto :goto_0
.end method

.method public syncState()V
    .locals 3

    .prologue
    const v2, 0x800003

    .line 284
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mDrawerLayout:Lcom/lenovo/component/slidemenu/DrawerLayout;

    invoke-virtual {v0, v2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mSlider:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;->setPosition(F)V

    .line 290
    :goto_0
    iget-boolean v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 291
    iget-object v1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mSlider:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;

    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mDrawerLayout:Lcom/lenovo/component/slidemenu/DrawerLayout;

    invoke-virtual {v0, v2}, Lcom/lenovo/component/slidemenu/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mCloseDrawerContentDescRes:I

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 294
    :cond_0
    return-void

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mSlider:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$SlideDrawable;->setPosition(F)V

    goto :goto_0

    .line 291
    :cond_2
    iget v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;->mOpenDrawerContentDescRes:I

    goto :goto_1
.end method
