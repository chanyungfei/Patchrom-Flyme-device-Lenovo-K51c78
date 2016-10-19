.class Lcom/mediatek/matrixeffect/MatrixEffect$EventHandler;
.super Landroid/os/Handler;
.source "MatrixEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/matrixeffect/MatrixEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/matrixeffect/MatrixEffect;


# direct methods
.method public constructor <init>(Lcom/mediatek/matrixeffect/MatrixEffect;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/mediatek/matrixeffect/MatrixEffect$EventHandler;->this$0:Lcom/mediatek/matrixeffect/MatrixEffect;

    .line 158
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 159
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 163
    const-string v0, "MatrixEffect_Framework"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 166
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/matrixeffect/MatrixEffect$EventHandler;->this$0:Lcom/mediatek/matrixeffect/MatrixEffect;

    # getter for: Lcom/mediatek/matrixeffect/MatrixEffect;->mEffectsListener:Lcom/mediatek/matrixeffect/MatrixEffect$EffectsCallback;
    invoke-static {v0}, Lcom/mediatek/matrixeffect/MatrixEffect;->access$000(Lcom/mediatek/matrixeffect/MatrixEffect;)Lcom/mediatek/matrixeffect/MatrixEffect$EffectsCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/mediatek/matrixeffect/MatrixEffect$EventHandler;->this$0:Lcom/mediatek/matrixeffect/MatrixEffect;

    # getter for: Lcom/mediatek/matrixeffect/MatrixEffect;->mEffectsListener:Lcom/mediatek/matrixeffect/MatrixEffect$EffectsCallback;
    invoke-static {v0}, Lcom/mediatek/matrixeffect/MatrixEffect;->access$000(Lcom/mediatek/matrixeffect/MatrixEffect;)Lcom/mediatek/matrixeffect/MatrixEffect$EffectsCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/matrixeffect/MatrixEffect$EffectsCallback;->onEffectsDone()V

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
