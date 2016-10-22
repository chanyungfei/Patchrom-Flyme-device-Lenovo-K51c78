.class Llenovo/widget/ListPopupWindow$1;
.super Llenovo/widget/ListPopupWindow$ForwardingListener;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/widget/ListPopupWindow;->createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Llenovo/widget/ListPopupWindow;Landroid/view/View;)V
    .locals 0
    .param p2, "x0"    # Landroid/view/View;

    .prologue
    .line 1023
    iput-object p1, p0, Llenovo/widget/ListPopupWindow$1;->this$0:Llenovo/widget/ListPopupWindow;

    invoke-direct {p0, p2}, Llenovo/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Llenovo/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Llenovo/widget/ListPopupWindow$1;->this$0:Llenovo/widget/ListPopupWindow;

    return-object v0
.end method
