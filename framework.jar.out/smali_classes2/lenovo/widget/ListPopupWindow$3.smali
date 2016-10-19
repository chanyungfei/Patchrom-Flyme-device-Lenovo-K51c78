.class Llenovo/widget/ListPopupWindow$3;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/widget/ListPopupWindow;->buildDropDown()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Llenovo/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1068
    iput-object p1, p0, Llenovo/widget/ListPopupWindow$3;->this$0:Llenovo/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1072
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    .line 1073
    iget-object v1, p0, Llenovo/widget/ListPopupWindow$3;->this$0:Llenovo/widget/ListPopupWindow;

    # getter for: Llenovo/widget/ListPopupWindow;->mDropDownList:Llenovo/widget/ListPopupWindow$DropDownListView;
    invoke-static {v1}, Llenovo/widget/ListPopupWindow;->access$600(Llenovo/widget/ListPopupWindow;)Llenovo/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    .line 1075
    .local v0, "dropDownList":Llenovo/widget/ListPopupWindow$DropDownListView;
    if-eqz v0, :cond_0

    .line 1076
    const/4 v1, 0x0

    # setter for: Llenovo/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Llenovo/widget/ListPopupWindow$DropDownListView;->access$502(Llenovo/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 1079
    .end local v0    # "dropDownList":Llenovo/widget/ListPopupWindow$DropDownListView;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1082
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
