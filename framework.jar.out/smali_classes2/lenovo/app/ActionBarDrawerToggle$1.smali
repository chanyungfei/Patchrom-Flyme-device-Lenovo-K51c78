.class Llenovo/app/ActionBarDrawerToggle$1;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Llenovo/widget/Toolbar;Llenovo/widget/DrawerLayout;Landroid/graphics/drawable/Drawable;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/app/ActionBarDrawerToggle;


# direct methods
.method constructor <init>(Llenovo/app/ActionBarDrawerToggle;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Llenovo/app/ActionBarDrawerToggle$1;->this$0:Llenovo/app/ActionBarDrawerToggle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 199
    iget-object v0, p0, Llenovo/app/ActionBarDrawerToggle$1;->this$0:Llenovo/app/ActionBarDrawerToggle;

    # getter for: Llenovo/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z
    invoke-static {v0}, Llenovo/app/ActionBarDrawerToggle;->access$000(Llenovo/app/ActionBarDrawerToggle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Llenovo/app/ActionBarDrawerToggle$1;->this$0:Llenovo/app/ActionBarDrawerToggle;

    # invokes: Llenovo/app/ActionBarDrawerToggle;->toggle()V
    invoke-static {v0}, Llenovo/app/ActionBarDrawerToggle;->access$100(Llenovo/app/ActionBarDrawerToggle;)V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Llenovo/app/ActionBarDrawerToggle$1;->this$0:Llenovo/app/ActionBarDrawerToggle;

    # getter for: Llenovo/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Llenovo/app/ActionBarDrawerToggle;->access$200(Llenovo/app/ActionBarDrawerToggle;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Llenovo/app/ActionBarDrawerToggle$1;->this$0:Llenovo/app/ActionBarDrawerToggle;

    # getter for: Llenovo/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Llenovo/app/ActionBarDrawerToggle;->access$200(Llenovo/app/ActionBarDrawerToggle;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
