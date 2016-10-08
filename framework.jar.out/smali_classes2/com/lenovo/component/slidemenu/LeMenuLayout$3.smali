.class Lcom/lenovo/component/slidemenu/LeMenuLayout$3;
.super Ljava/lang/Object;
.source "LeMenuLayout.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


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
    .line 616
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout$3;->this$0:Lcom/lenovo/component/slidemenu/LeMenuLayout;

    iput-object p2, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout$3;->val$button:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1, "popupMenu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 619
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuLayout$3;->val$button:Landroid/widget/ImageButton;

    const v1, 0x902008a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 620
    return-void
.end method
