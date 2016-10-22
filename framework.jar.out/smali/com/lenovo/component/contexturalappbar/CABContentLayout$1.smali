.class Lcom/lenovo/component/contexturalappbar/CABContentLayout$1;
.super Landroid/os/Handler;
.source "CABContentLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/component/contexturalappbar/CABContentLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;


# direct methods
.method constructor <init>(Lcom/lenovo/component/contexturalappbar/CABContentLayout;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$1;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 78
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 80
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/component/contexturalappbar/CABContentLayout$1;->this$0:Lcom/lenovo/component/contexturalappbar/CABContentLayout;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/lenovo/component/contexturalappbar/CABContentLayout;->setStateWithAnimation(I)V
    invoke-static {v0, v1}, Lcom/lenovo/component/contexturalappbar/CABContentLayout;->access$000(Lcom/lenovo/component/contexturalappbar/CABContentLayout;I)V

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
