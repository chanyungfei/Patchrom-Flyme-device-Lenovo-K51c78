.class Lcom/mediatek/gesture/Gesture$EmulatorHandler;
.super Landroid/os/Handler;
.source "Gesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gesture/Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmulatorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gesture/Gesture;


# direct methods
.method public constructor <init>(Lcom/mediatek/gesture/Gesture;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/mediatek/gesture/Gesture$EmulatorHandler;->this$0:Lcom/mediatek/gesture/Gesture;

    .line 342
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 343
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 347
    iget v2, p1, Landroid/os/Message;->what:I

    .line 348
    .local v2, "what":I
    packed-switch v2, :pswitch_data_0

    .line 374
    :goto_0
    return-void

    .line 350
    :pswitch_0
    const-string v3, "com.mediatek.gesture.pose"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "pose":Ljava/lang/String;
    const-string v3, "Gesture_Framework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "detected pose from DDMS:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    if-eqz v1, :cond_0

    .line 353
    new-instance v0, Lcom/mediatek/gesture/Gesture$HandDetectionEvent;

    iget-object v3, p0, Lcom/mediatek/gesture/Gesture$EmulatorHandler;->this$0:Lcom/mediatek/gesture/Gesture;

    invoke-direct {v0, v3}, Lcom/mediatek/gesture/Gesture$HandDetectionEvent;-><init>(Lcom/mediatek/gesture/Gesture;)V

    .line 354
    .local v0, "event":Lcom/mediatek/gesture/Gesture$HandDetectionEvent;
    const/high16 v3, 0x42c80000    # 100.0f

    # setter for: Lcom/mediatek/gesture/Gesture$HandDetectionEvent;->confidence:F
    invoke-static {v0, v3}, Lcom/mediatek/gesture/Gesture$HandDetectionEvent;->access$002(Lcom/mediatek/gesture/Gesture$HandDetectionEvent;F)F

    .line 355
    const-string v3, "openpalm"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/gesture/Gesture$EmulatorHandler;->this$0:Lcom/mediatek/gesture/Gesture;

    # getter for: Lcom/mediatek/gesture/Gesture;->mDetectedPose:Lcom/mediatek/gesture/Gesture$HandPose;
    invoke-static {v3}, Lcom/mediatek/gesture/Gesture;->access$100(Lcom/mediatek/gesture/Gesture;)Lcom/mediatek/gesture/Gesture$HandPose;

    move-result-object v3

    sget-object v4, Lcom/mediatek/gesture/Gesture$HandPose;->POSE_OPENPLAM:Lcom/mediatek/gesture/Gesture$HandPose;

    if-ne v3, v4, :cond_1

    .line 357
    sget-object v3, Lcom/mediatek/gesture/Gesture$HandPose;->POSE_OPENPLAM:Lcom/mediatek/gesture/Gesture$HandPose;

    # setter for: Lcom/mediatek/gesture/Gesture$HandDetectionEvent;->pose:Lcom/mediatek/gesture/Gesture$HandPose;
    invoke-static {v0, v3}, Lcom/mediatek/gesture/Gesture$HandDetectionEvent;->access$202(Lcom/mediatek/gesture/Gesture$HandDetectionEvent;Lcom/mediatek/gesture/Gesture$HandPose;)Lcom/mediatek/gesture/Gesture$HandPose;

    .line 358
    iget-object v3, p0, Lcom/mediatek/gesture/Gesture$EmulatorHandler;->this$0:Lcom/mediatek/gesture/Gesture;

    # getter for: Lcom/mediatek/gesture/Gesture;->mHandDetectionListener:Lcom/mediatek/gesture/Gesture$HandDetectionListener;
    invoke-static {v3}, Lcom/mediatek/gesture/Gesture;->access$300(Lcom/mediatek/gesture/Gesture;)Lcom/mediatek/gesture/Gesture$HandDetectionListener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/mediatek/gesture/Gesture$HandDetectionListener;->onHandDetected(Lcom/mediatek/gesture/Gesture$HandDetectionEvent;)V

    .line 368
    .end local v0    # "event":Lcom/mediatek/gesture/Gesture$HandDetectionEvent;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/mediatek/gesture/Gesture$EmulatorHandler;->this$0:Lcom/mediatek/gesture/Gesture;

    # getter for: Lcom/mediatek/gesture/Gesture;->mEmulatorHandler:Lcom/mediatek/gesture/Gesture$EmulatorHandler;
    invoke-static {v3}, Lcom/mediatek/gesture/Gesture;->access$400(Lcom/mediatek/gesture/Gesture;)Lcom/mediatek/gesture/Gesture$EmulatorHandler;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Lcom/mediatek/gesture/Gesture$EmulatorHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 359
    .restart local v0    # "event":Lcom/mediatek/gesture/Gesture$HandDetectionEvent;
    :cond_1
    const-string v3, "victory"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/gesture/Gesture$EmulatorHandler;->this$0:Lcom/mediatek/gesture/Gesture;

    # getter for: Lcom/mediatek/gesture/Gesture;->mDetectedPose:Lcom/mediatek/gesture/Gesture$HandPose;
    invoke-static {v3}, Lcom/mediatek/gesture/Gesture;->access$100(Lcom/mediatek/gesture/Gesture;)Lcom/mediatek/gesture/Gesture$HandPose;

    move-result-object v3

    sget-object v4, Lcom/mediatek/gesture/Gesture$HandPose;->POSE_VICTORY:Lcom/mediatek/gesture/Gesture$HandPose;

    if-ne v3, v4, :cond_2

    .line 361
    sget-object v3, Lcom/mediatek/gesture/Gesture$HandPose;->POSE_VICTORY:Lcom/mediatek/gesture/Gesture$HandPose;

    # setter for: Lcom/mediatek/gesture/Gesture$HandDetectionEvent;->pose:Lcom/mediatek/gesture/Gesture$HandPose;
    invoke-static {v0, v3}, Lcom/mediatek/gesture/Gesture$HandDetectionEvent;->access$202(Lcom/mediatek/gesture/Gesture$HandDetectionEvent;Lcom/mediatek/gesture/Gesture$HandPose;)Lcom/mediatek/gesture/Gesture$HandPose;

    .line 362
    iget-object v3, p0, Lcom/mediatek/gesture/Gesture$EmulatorHandler;->this$0:Lcom/mediatek/gesture/Gesture;

    # getter for: Lcom/mediatek/gesture/Gesture;->mHandDetectionListener:Lcom/mediatek/gesture/Gesture$HandDetectionListener;
    invoke-static {v3}, Lcom/mediatek/gesture/Gesture;->access$300(Lcom/mediatek/gesture/Gesture;)Lcom/mediatek/gesture/Gesture$HandDetectionListener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/mediatek/gesture/Gesture$HandDetectionListener;->onHandDetected(Lcom/mediatek/gesture/Gesture$HandDetectionEvent;)V

    goto :goto_1

    .line 364
    :cond_2
    iget-object v3, p0, Lcom/mediatek/gesture/Gesture$EmulatorHandler;->this$0:Lcom/mediatek/gesture/Gesture;

    # getter for: Lcom/mediatek/gesture/Gesture;->mHandDetectionListener:Lcom/mediatek/gesture/Gesture$HandDetectionListener;
    invoke-static {v3}, Lcom/mediatek/gesture/Gesture;->access$300(Lcom/mediatek/gesture/Gesture;)Lcom/mediatek/gesture/Gesture$HandDetectionListener;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/mediatek/gesture/Gesture$HandDetectionListener;->onHandDetected(Lcom/mediatek/gesture/Gesture$HandDetectionEvent;)V

    goto :goto_1

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
