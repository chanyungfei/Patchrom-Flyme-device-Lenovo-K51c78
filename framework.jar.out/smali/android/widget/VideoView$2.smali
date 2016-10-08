.class Landroid/widget/VideoView$2;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 9
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 517
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iput v8, v3, Landroid/widget/VideoView;->mCurrentState:I

    .line 520
    invoke-virtual {p1, v4, v4}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v0

    .line 523
    .local v0, "data":Landroid/media/Metadata;
    if-eqz v0, :cond_a

    .line 524
    iget-object v6, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0, v5}, Landroid/media/Metadata;->has(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v5}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_0
    move v3, v5

    :goto_0
    iput-boolean v3, v6, Landroid/widget/VideoView;->mCanPause:Z

    .line 526
    iget-object v6, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0, v8}, Landroid/media/Metadata;->has(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v8}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_1
    move v3, v5

    :goto_1
    iput-boolean v3, v6, Landroid/widget/VideoView;->mCanSeekBack:Z

    .line 528
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0, v7}, Landroid/media/Metadata;->has(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0, v7}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    move v4, v5

    :cond_3
    iput-boolean v4, v3, Landroid/widget/VideoView;->mCanSeekForward:Z

    .line 534
    :goto_2
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v3, v3, Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v3, :cond_4

    .line 535
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v3, v3, Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v4, v4, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v3, v4}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 537
    :cond_4
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v3, v3, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v3, :cond_5

    .line 538
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v3, v3, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v3, v5}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 543
    :cond_5
    :try_start_0
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v4

    iput v4, v3, Landroid/widget/VideoView;->mVideoWidth:I

    .line 544
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v4

    iput v4, v3, Landroid/widget/VideoView;->mVideoHeight:I

    .line 546
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget v2, v3, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    .line 547
    .local v2, "seekToPosition":I
    if-eqz v2, :cond_6

    .line 548
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v3, v2}, Landroid/widget/VideoView;->seekTo(I)V

    .line 550
    :cond_6
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget v3, v3, Landroid/widget/VideoView;->mVideoWidth:I

    if-eqz v3, :cond_d

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget v3, v3, Landroid/widget/VideoView;->mVideoHeight:I

    if-eqz v3, :cond_d

    .line 552
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget v4, v4, Landroid/widget/VideoView;->mVideoWidth:I

    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget v5, v5, Landroid/widget/VideoView;->mVideoHeight:I

    invoke-interface {v3, v4, v5}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 553
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget v3, v3, Landroid/widget/VideoView;->mSurfaceWidth:I

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget v4, v4, Landroid/widget/VideoView;->mVideoWidth:I

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget v3, v3, Landroid/widget/VideoView;->mSurfaceHeight:I

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget v4, v4, Landroid/widget/VideoView;->mVideoHeight:I

    if-ne v3, v4, :cond_7

    .line 557
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget v3, v3, Landroid/widget/VideoView;->mTargetState:I

    if-ne v3, v7, :cond_b

    .line 558
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->start()V

    .line 559
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v3, v3, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v3, :cond_7

    .line 560
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v3, v3, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v3}, Landroid/widget/MediaController;->show()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    .end local v2    # "seekToPosition":I
    :cond_7
    :goto_3
    return-void

    :cond_8
    move v3, v4

    .line 524
    goto/16 :goto_0

    :cond_9
    move v3, v4

    .line 526
    goto/16 :goto_1

    .line 531
    :cond_a
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v6, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iput-boolean v5, v6, Landroid/widget/VideoView;->mCanSeekForward:Z

    iput-boolean v5, v4, Landroid/widget/VideoView;->mCanSeekBack:Z

    iput-boolean v5, v3, Landroid/widget/VideoView;->mCanPause:Z

    goto/16 :goto_2

    .line 562
    .restart local v2    # "seekToPosition":I
    :cond_b
    :try_start_1
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_7

    if-nez v2, :cond_c

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v3

    if-lez v3, :cond_7

    .line 564
    :cond_c
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v3, v3, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v3, :cond_7

    .line 566
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v3, v3, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/MediaController;->show(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 577
    .end local v2    # "seekToPosition":I
    :catch_0
    move-exception v1

    .line 578
    .local v1, "e":Ljava/lang/IllegalStateException;
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    # getter for: Landroid/widget/VideoView;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/widget/VideoView;->access$000(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onPrepared IllegalStateException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_3

    .line 573
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local v2    # "seekToPosition":I
    :cond_d
    :try_start_2
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget v3, v3, Landroid/widget/VideoView;->mTargetState:I

    if-ne v3, v7, :cond_7

    .line 574
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->start()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method
