.class final Lcom/android/internal/policy/impl/PhoneWindowManager$SystemGestureEventListener;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SystemGestureEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 8875
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/PhoneWindowManager$1;

    .prologue
    .line 8875
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$SystemGestureEventListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 8879
    const-string v3, "WindowManager"

    const-string v4, "in onPointerEvent "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8881
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 8882
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 8883
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 8885
    .local v2, "y":I
    packed-switch v0, :pswitch_data_0

    .line 8928
    :cond_0
    :goto_0
    return-void

    .line 8888
    :pswitch_0
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in onPointerEvent down x : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " y : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8889
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->gshValidDownPos(II)Z
    invoke-static {v4, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4100(Lcom/android/internal/policy/impl/PhoneWindowManager;II)Z

    move-result v4

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mGshDown:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4002(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 8890
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mGshDown:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4000(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8891
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mGshDownTime:J
    invoke-static {v3, v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4202(Lcom/android/internal/policy/impl/PhoneWindowManager;J)J

    .line 8892
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGshCheckTimeout:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8893
    const-string v3, "WindowManager"

    const-string v4, "in onPointerEvent huangzh3 postDelayed : GSH_GESTRUE_TIMEOUT:1500"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8894
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGshCheckTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x5dc

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8895
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mGshDownX:I
    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4302(Lcom/android/internal/policy/impl/PhoneWindowManager;I)I

    .line 8896
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mGshDownY:I
    invoke-static {v3, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4402(Lcom/android/internal/policy/impl/PhoneWindowManager;I)I

    goto :goto_0

    .line 8902
    :pswitch_1
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in onPointerEvent move x : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " y : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mGshDown:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4000(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8904
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mGshDown:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4000(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8905
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->gshGestureCheck(II)V
    invoke-static {v3, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4500(Lcom/android/internal/policy/impl/PhoneWindowManager;II)V

    goto/16 :goto_0

    .line 8911
    :pswitch_2
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in onPointerEvent cancel x : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " y : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8916
    :pswitch_3
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in onPointerEvent up x : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " y : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mGshDown:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4000(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8917
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mGshDown:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4000(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8918
    const-string v3, "WindowManager"

    const-string v4, "in onPointerEvent huangzh3 removeCallbacks postDelayed :"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8919
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGshCheckTimeout:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8920
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->gshGestureCheck(II)V
    invoke-static {v3, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4500(Lcom/android/internal/policy/impl/PhoneWindowManager;II)V

    .line 8922
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mGshDown:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4000(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8923
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->gshGestureCalculate(II)V
    invoke-static {v3, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4600(Lcom/android/internal/policy/impl/PhoneWindowManager;II)V

    .line 8924
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SystemGestureEventListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v4, 0x0

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mGshDown:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4002(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    goto/16 :goto_0

    .line 8885
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
