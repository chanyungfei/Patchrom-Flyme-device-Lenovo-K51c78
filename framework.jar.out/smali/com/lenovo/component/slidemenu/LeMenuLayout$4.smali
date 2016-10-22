.class Lcom/lenovo/component/slidemenu/LeMenuLayout$4;
.super Ljava/lang/Object;
.source "LeMenuLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/component/slidemenu/LeMenuLayout;->setupLoginPopupMenu(Lcom/lenovo/component/slidemenu/LeLoginMenu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/component/slidemenu/LeMenuLayout;

.field final synthetic val$button:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/lenovo/component/slidemenu/LeMenuLayout;Landroid/widget/ImageButton;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout$4;->this$0:Lcom/lenovo/component/slidemenu/LeMenuLayout;

    iput-object p2, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout$4;->val$button:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 626
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout$4;->this$0:Lcom/lenovo/component/slidemenu/LeMenuLayout;

    # getter for: Lcom/lenovo/component/slidemenu/LeMenuLayout;->mLoginPopupMenu:Landroid/widget/PopupMenu;
    invoke-static {v0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->access$200(Lcom/lenovo/component/slidemenu/LeMenuLayout;)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 627
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout$4;->val$button:Landroid/widget/ImageButton;

    const v1, 0x9020087

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 628
    return-void
.end method
