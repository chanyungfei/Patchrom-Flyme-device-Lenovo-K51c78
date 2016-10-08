.class Llenovo/widget/ActionMenuView$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/widget/ActionMenuView;


# direct methods
.method private constructor <init>(Llenovo/widget/ActionMenuView;)V
    .locals 0

    .prologue
    .line 984
    iput-object p1, p0, Llenovo/widget/ActionMenuView$ActionMenuPresenterCallback;->this$0:Llenovo/widget/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llenovo/widget/ActionMenuView;Llenovo/widget/ActionMenuView$1;)V
    .locals 0
    .param p1, "x0"    # Llenovo/widget/ActionMenuView;
    .param p2, "x1"    # Llenovo/widget/ActionMenuView$1;

    .prologue
    .line 984
    invoke-direct {p0, p1}, Llenovo/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>(Llenovo/widget/ActionMenuView;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 987
    return-void
.end method

.method public onOpenSubMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 991
    const/4 v0, 0x0

    return v0
.end method
