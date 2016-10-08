.class Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$1;
.super Landroid/os/Handler;
.source "ImsRILAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 313
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 322
    :goto_0
    return-void

    .line 315
    :pswitch_0
    const-string v1, "IMS: IMS_RILA"

    const-string v2, "IMS: Adapter receive EVENT_AT_CMD_DONE"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 317
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->handleAtCmdResponseAndDial(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->access$000(Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
