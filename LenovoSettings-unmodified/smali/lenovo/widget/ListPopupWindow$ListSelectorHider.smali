.class Llenovo/widget/ListPopupWindow$ListSelectorHider;
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
    name = "ListSelectorHider"
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Llenovo/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1749
    iput-object p1, p0, Llenovo/widget/ListPopupWindow$ListSelectorHider;->this$0:Llenovo/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llenovo/widget/ListPopupWindow;Llenovo/widget/ListPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Llenovo/widget/ListPopupWindow;
    .param p2, "x1"    # Llenovo/widget/ListPopupWindow$1;

    .prologue
    .line 1749
    invoke-direct {p0, p1}, Llenovo/widget/ListPopupWindow$ListSelectorHider;-><init>(Llenovo/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1751
    iget-object v0, p0, Llenovo/widget/ListPopupWindow$ListSelectorHider;->this$0:Llenovo/widget/ListPopupWindow;

    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow;->clearListSelection()V

    .line 1752
    return-void
.end method
