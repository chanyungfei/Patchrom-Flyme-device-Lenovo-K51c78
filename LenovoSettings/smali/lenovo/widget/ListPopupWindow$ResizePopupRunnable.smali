.class Llenovo/widget/ListPopupWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizePopupRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Llenovo/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1755
    iput-object p1, p0, Llenovo/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Llenovo/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llenovo/widget/ListPopupWindow;Llenovo/widget/ListPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Llenovo/widget/ListPopupWindow;
    .param p2, "x1"    # Llenovo/widget/ListPopupWindow$1;

    .prologue
    .line 1755
    invoke-direct {p0, p1}, Llenovo/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Llenovo/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1757
    iget-object v0, p0, Llenovo/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Llenovo/widget/ListPopupWindow;

    # getter for: Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;
    invoke-static {v0}, Llenovo/widget/ListPopupWindow;->access$600(Llenovo/widget/ListPopupWindow;)Llenovo/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Llenovo/widget/ListPopupWindow;

    # getter for: Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;
    invoke-static {v0}, Llenovo/widget/ListPopupWindow;->access$600(Llenovo/widget/ListPopupWindow;)Llenovo/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow$DropDownListView;->getCount()I

    move-result v0

    iget-object v1, p0, Llenovo/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Llenovo/widget/ListPopupWindow;

    # getter for: Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;
    invoke-static {v1}, Llenovo/widget/ListPopupWindow;->access$600(Llenovo/widget/ListPopupWindow;)Llenovo/widget/ListPopupWindow$DropDownListView;

    move-result-object v1

    invoke-virtual {v1}, Llenovo/widget/ListPopupWindow$DropDownListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Llenovo/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Llenovo/widget/ListPopupWindow;

    # getter for: Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;
    invoke-static {v0}, Llenovo/widget/ListPopupWindow;->access$600(Llenovo/widget/ListPopupWindow;)Llenovo/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow$DropDownListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Llenovo/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Llenovo/widget/ListPopupWindow;

    iget v1, v1, Llenovo/widget/ListPopupWindow;->mListItemExpandMaximum:I

    if-gt v0, v1, :cond_0

    .line 1759
    iget-object v0, p0, Llenovo/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Llenovo/widget/ListPopupWindow;

    # getter for: Llenovo/widget/ListPopupWindow;->mPopup:Llenovo/widget/PopupWindow;
    invoke-static {v0}, Llenovo/widget/ListPopupWindow;->access$1100(Llenovo/widget/ListPopupWindow;)Llenovo/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Llenovo/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1760
    iget-object v0, p0, Llenovo/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Llenovo/widget/ListPopupWindow;

    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow;->show()V

    .line 1762
    :cond_0
    return-void
.end method
