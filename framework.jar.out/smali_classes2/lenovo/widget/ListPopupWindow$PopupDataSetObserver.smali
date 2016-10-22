.class Llenovo/widget/ListPopupWindow$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Llenovo/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1734
    iput-object p1, p0, Llenovo/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Llenovo/widget/ListPopupWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llenovo/widget/ListPopupWindow;Llenovo/widget/ListPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Llenovo/widget/ListPopupWindow;
    .param p2, "x1"    # Llenovo/widget/ListPopupWindow$1;

    .prologue
    .line 1734
    invoke-direct {p0, p1}, Llenovo/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Llenovo/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 1737
    iget-object v0, p0, Llenovo/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Llenovo/widget/ListPopupWindow;

    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1739
    iget-object v0, p0, Llenovo/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Llenovo/widget/ListPopupWindow;

    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow;->show()V

    .line 1741
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 1745
    iget-object v0, p0, Llenovo/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Llenovo/widget/ListPopupWindow;

    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow;->dismiss()V

    .line 1746
    return-void
.end method
