.class Llenovo/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegate.java"

# interfaces
.implements Llenovo/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/app/ActionBarActivityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarDrawableToggleImpl"
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/app/ActionBarActivityDelegate;


# direct methods
.method private constructor <init>(Llenovo/app/ActionBarActivityDelegate;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Llenovo/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;->this$0:Llenovo/app/ActionBarActivityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llenovo/app/ActionBarActivityDelegate;Llenovo/app/ActionBarActivityDelegate$1;)V
    .locals 0
    .param p1, "x0"    # Llenovo/app/ActionBarActivityDelegate;
    .param p2, "x1"    # Llenovo/app/ActionBarActivityDelegate$1;

    .prologue
    .line 290
    invoke-direct {p0, p1}, Llenovo/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;-><init>(Llenovo/app/ActionBarActivityDelegate;)V

    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Llenovo/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;->this$0:Llenovo/app/ActionBarActivityDelegate;

    invoke-virtual {v0}, Llenovo/app/ActionBarActivityDelegate;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 293
    iget-object v2, p0, Llenovo/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;->this$0:Llenovo/app/ActionBarActivityDelegate;

    invoke-virtual {v2}, Llenovo/app/ActionBarActivityDelegate;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    iget-object v4, p0, Llenovo/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;->this$0:Llenovo/app/ActionBarActivityDelegate;

    invoke-virtual {v4}, Llenovo/app/ActionBarActivityDelegate;->getHomeAsUpIndicatorAttrId()I

    move-result v4

    aput v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 295
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 296
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 297
    return-object v1
.end method

.method public setActionBarDescription(I)V
    .locals 2
    .param p1, "contentDescRes"    # I

    .prologue
    .line 316
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;->this$0:Llenovo/app/ActionBarActivityDelegate;

    invoke-virtual {v1}, Llenovo/app/ActionBarActivityDelegate;->getSupportActionBar()Llenovo/app/ActionBar;

    move-result-object v0

    .line 317
    .local v0, "ab":Llenovo/app/ActionBar;
    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0, p1}, Llenovo/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 320
    :cond_0
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "upDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .prologue
    .line 307
    iget-object v1, p0, Llenovo/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;->this$0:Llenovo/app/ActionBarActivityDelegate;

    invoke-virtual {v1}, Llenovo/app/ActionBarActivityDelegate;->getSupportActionBar()Llenovo/app/ActionBar;

    move-result-object v0

    .line 308
    .local v0, "ab":Llenovo/app/ActionBar;
    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0, p1}, Llenovo/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 310
    invoke-virtual {v0, p2}, Llenovo/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 312
    :cond_0
    return-void
.end method
