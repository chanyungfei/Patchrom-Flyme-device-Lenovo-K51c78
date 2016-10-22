.class Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$ActionBarDrawerToggleImplBase;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggleV4.java"

# interfaces
.implements Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$ActionBarDrawerToggleImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActionBarDrawerToggleImplBase"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$1;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggleV4$ActionBarDrawerToggleImplBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getThemeUpIndicator(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public setActionBarDescription(Ljava/lang/Object;Landroid/app/Activity;I)Ljava/lang/Object;
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "contentDescRes"    # I

    .prologue
    .line 120
    return-object p1
.end method

.method public setActionBarUpIndicator(Ljava/lang/Object;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Ljava/lang/Object;
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "themeImage"    # Landroid/graphics/drawable/Drawable;
    .param p4, "contentDescRes"    # I

    .prologue
    .line 114
    return-object p1
.end method
