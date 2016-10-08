.class Landroid/widget/Editor$1;
.super Landroid/os/Handler;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor;-><init>(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method constructor <init>(Landroid/widget/Editor;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 270
    iput-object p1, p0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 273
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 276
    :pswitch_0
    iget-object v0, p0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectPopupWindow:Landroid/widget/Editor$SelectPopupWindow;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectPopupWindow:Landroid/widget/Editor$SelectPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectPopupWindow;->show()V

    goto :goto_0

    .line 282
    :pswitch_1
    iget-object v0, p0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->showOrHideActionPopupWindow()V
    invoke-static {v0}, Landroid/widget/Editor;->access$100(Landroid/widget/Editor;)V

    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
