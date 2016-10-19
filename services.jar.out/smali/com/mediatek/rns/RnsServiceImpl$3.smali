.class Lcom/mediatek/rns/RnsServiceImpl$3;
.super Landroid/telephony/PhoneStateListener;
.source "RnsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/rns/RnsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/rns/RnsServiceImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/rns/RnsServiceImpl;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/mediatek/rns/RnsServiceImpl$3;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 329
    const-string v0, "RnsServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in onCallStateChanged state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", prev state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl$3;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mPrevCallState:I
    invoke-static {v2}, Lcom/mediatek/rns/RnsServiceImpl;->access$1700(Lcom/mediatek/rns/RnsServiceImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    packed-switch p1, :pswitch_data_0

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 332
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl$3;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mPrevCallState:I
    invoke-static {v0}, Lcom/mediatek/rns/RnsServiceImpl;->access$1700(Lcom/mediatek/rns/RnsServiceImpl;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl$3;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mPrevCallState:I
    invoke-static {v0, p1}, Lcom/mediatek/rns/RnsServiceImpl;->access$1702(Lcom/mediatek/rns/RnsServiceImpl;I)I

    .line 334
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl$3;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsCallActive:Z
    invoke-static {v0, v1}, Lcom/mediatek/rns/RnsServiceImpl;->access$1802(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    .line 335
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl$3;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->decideHandover()V
    invoke-static {v0}, Lcom/mediatek/rns/RnsServiceImpl;->access$1900(Lcom/mediatek/rns/RnsServiceImpl;)V

    goto :goto_0

    .line 340
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl$3;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mPrevCallState:I
    invoke-static {v0, p1}, Lcom/mediatek/rns/RnsServiceImpl;->access$1702(Lcom/mediatek/rns/RnsServiceImpl;I)I

    .line 341
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl$3;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    const/4 v1, 0x1

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsCallActive:Z
    invoke-static {v0, v1}, Lcom/mediatek/rns/RnsServiceImpl;->access$1802(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    goto :goto_0

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
