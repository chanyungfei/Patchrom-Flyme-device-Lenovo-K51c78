.class Landroid/widget/NumberPicker$4;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 0

    .prologue
    .line 794
    iput-object p1, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 796
    if-eqz p2, :cond_1

    .line 797
    iget-object v0, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 799
    iget-object v0, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$500(Landroid/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 806
    iget-object v0, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$600(Landroid/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 808
    iget-object v0, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mTextColorHelper:Landroid/widget/NumberPicker$TextColorHelper;
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$400(Landroid/widget/NumberPicker;)Landroid/widget/NumberPicker$TextColorHelper;

    move-result-object v1

    iget v1, v1, Landroid/widget/NumberPicker$TextColorHelper;->mFocusColor:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 811
    :cond_2
    iget-object v0, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    # invokes: Landroid/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V
    invoke-static {v0, p1}, Landroid/widget/NumberPicker;->access$700(Landroid/widget/NumberPicker;Landroid/view/View;)V

    goto :goto_0
.end method
