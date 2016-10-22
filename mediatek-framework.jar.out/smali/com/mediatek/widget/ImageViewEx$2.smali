.class Lcom/mediatek/widget/ImageViewEx$2;
.super Landroid/os/Handler;
.source "ImageViewEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/widget/ImageViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/widget/ImageViewEx;


# direct methods
.method constructor <init>(Lcom/mediatek/widget/ImageViewEx;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/mediatek/widget/ImageViewEx$2;->this$0:Lcom/mediatek/widget/ImageViewEx;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 231
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 236
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 238
    :goto_0
    return-void

    .line 233
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x401
        :pswitch_0
    .end packed-switch
.end method
