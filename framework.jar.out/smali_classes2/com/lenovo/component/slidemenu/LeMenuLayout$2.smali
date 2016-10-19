.class Lcom/lenovo/component/slidemenu/LeMenuLayout$2;
.super Ljava/lang/Object;
.source "LeMenuLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/component/slidemenu/LeMenuLayout;->setupTitlePopupMenu(Lcom/lenovo/component/slidemenu/LeTitleMenu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/component/slidemenu/LeMenuLayout;


# direct methods
.method constructor <init>(Lcom/lenovo/component/slidemenu/LeMenuLayout;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout$2;->this$0:Lcom/lenovo/component/slidemenu/LeMenuLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 472
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout$2;->this$0:Lcom/lenovo/component/slidemenu/LeMenuLayout;

    # getter for: Lcom/lenovo/component/slidemenu/LeMenuLayout;->mTitlePopupMenu:Landroid/widget/PopupMenu;
    invoke-static {v0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->access$100(Lcom/lenovo/component/slidemenu/LeMenuLayout;)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 473
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout$2;->this$0:Lcom/lenovo/component/slidemenu/LeMenuLayout;

    # getter for: Lcom/lenovo/component/slidemenu/LeMenuLayout;->mTitleView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/lenovo/component/slidemenu/LeMenuLayout;->access$000(Lcom/lenovo/component/slidemenu/LeMenuLayout;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v1, 0x90c0041

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x9020087

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 474
    return-void
.end method
