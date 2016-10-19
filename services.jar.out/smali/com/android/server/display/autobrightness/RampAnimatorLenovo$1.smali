.class Lcom/android/server/display/autobrightness/RampAnimatorLenovo$1;
.super Ljava/lang/Object;
.source "RampAnimatorLenovo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/autobrightness/RampAnimatorLenovo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;


# direct methods
.method constructor <init>(Lcom/android/server/display/autobrightness/RampAnimatorLenovo;)V
    .locals 0

    .prologue
    .line 353
    .local p0, "this":Lcom/android/server/display/autobrightness/RampAnimatorLenovo$1;, "Lcom/android/server/display/autobrightness/RampAnimatorLenovo.1;"
    iput-object p1, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo$1;->this$0:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 357
    .local p0, "this":Lcom/android/server/display/autobrightness/RampAnimatorLenovo$1;, "Lcom/android/server/display/autobrightness/RampAnimatorLenovo.1;"
    iget-object v5, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo$1;->this$0:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    # getter for: Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mChoreographer:Landroid/view/Choreographer;
    invoke-static {v5}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->access$000(Lcom/android/server/display/autobrightness/RampAnimatorLenovo;)Landroid/view/Choreographer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    .line 358
    .local v0, "frameTimeNanos":J
    iget-object v5, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo$1;->this$0:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    # getter for: Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mCurrentValue:I
    invoke-static {v5}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->access$100(Lcom/android/server/display/autobrightness/RampAnimatorLenovo;)I

    move-result v3

    .line 359
    .local v3, "oldCurrentValue":I
    iget-object v5, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo$1;->this$0:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    # getter for: Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mGenerateValues:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->access$200(Lcom/android/server/display/autobrightness/RampAnimatorLenovo;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 361
    .local v4, "size":I
    iget-object v5, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo$1;->this$0:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    # getter for: Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mFirstFrameTimeNanos:J
    invoke-static {v5}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->access$300(Lcom/android/server/display/autobrightness/RampAnimatorLenovo;)J

    move-result-wide v6

    sub-long v6, v0, v6

    int-to-long v8, v4

    mul-long/2addr v6, v8

    iget-object v5, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo$1;->this$0:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    # getter for: Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mAnimateTimeNanos:J
    invoke-static {v5}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->access$400(Lcom/android/server/display/autobrightness/RampAnimatorLenovo;)J

    move-result-wide v8

    div-long/2addr v6, v8

    long-to-int v2, v6

    .line 364
    .local v2, "index":I
    if-lt v2, v4, :cond_3

    .line 365
    add-int/lit8 v2, v4, -0x1

    .line 370
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo$1;->this$0:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    iget-object v5, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo$1;->this$0:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    # getter for: Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mGenerateValues:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->access$200(Lcom/android/server/display/autobrightness/RampAnimatorLenovo;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    # setter for: Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mCurrentValue:I
    invoke-static {v6, v5}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->access$102(Lcom/android/server/display/autobrightness/RampAnimatorLenovo;I)I

    .line 377
    iget-object v5, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo$1;->this$0:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    # getter for: Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mCurrentValue:I
    invoke-static {v5}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->access$100(Lcom/android/server/display/autobrightness/RampAnimatorLenovo;)I

    move-result v5

    if-eq v3, v5, :cond_1

    .line 378
    iget-object v5, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo$1;->this$0:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    # getter for: Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mProperty:Landroid/util/IntProperty;
    invoke-static {v5}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->access$600(Lcom/android/server/display/autobrightness/RampAnimatorLenovo;)Landroid/util/IntProperty;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo$1;->this$0:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    # getter for: Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mObject:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->access$500(Lcom/android/server/display/autobrightness/RampAnimatorLenovo;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo$1;->this$0:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    # getter for: Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mCurrentValue:I
    invoke-static {v7}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->access$100(Lcom/android/server/display/autobrightness/RampAnimatorLenovo;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 381
    :cond_1
    add-int/lit8 v5, v4, -0x1

    if-eq v2, v5, :cond_4

    .line 382
    iget-object v5, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo$1;->this$0:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    # invokes: Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->postAnimationCallback()V
    invoke-static {v5}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->access$700(Lcom/android/server/display/autobrightness/RampAnimatorLenovo;)V

    .line 389
    :cond_2
    :goto_1
    return-void

    .line 366
    :cond_3
    if-gez v2, :cond_0

    .line 367
    const/4 v2, 0x0

    goto :goto_0

    .line 384
    :cond_4
    iget-object v5, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo$1;->this$0:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mAnimating:Z
    invoke-static {v5, v6}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->access$802(Lcom/android/server/display/autobrightness/RampAnimatorLenovo;Z)Z

    .line 385
    iget-object v5, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo$1;->this$0:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    # getter for: Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mListener:Lcom/android/server/display/autobrightness/RampAnimatorLenovo$Listener;
    invoke-static {v5}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->access$900(Lcom/android/server/display/autobrightness/RampAnimatorLenovo;)Lcom/android/server/display/autobrightness/RampAnimatorLenovo$Listener;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 386
    iget-object v5, p0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo$1;->this$0:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    # getter for: Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->mListener:Lcom/android/server/display/autobrightness/RampAnimatorLenovo$Listener;
    invoke-static {v5}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->access$900(Lcom/android/server/display/autobrightness/RampAnimatorLenovo;)Lcom/android/server/display/autobrightness/RampAnimatorLenovo$Listener;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo$Listener;->onAnimationEnd()V

    goto :goto_1
.end method
