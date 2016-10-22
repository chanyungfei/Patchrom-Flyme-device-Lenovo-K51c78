.class Landroid/widget/MediaController$5;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MediaController;


# direct methods
.method constructor <init>(Landroid/widget/MediaController;)V
    .locals 0

    .prologue
    .line 682
    iput-object p1, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .param p1, "bar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromuser"    # Z

    .prologue
    .line 697
    if-nez p3, :cond_1

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    iget-object v4, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    iget-object v4, v4, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v4}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v4

    int-to-long v0, v4

    .line 704
    .local v0, "duration":J
    int-to-long v4, p2

    mul-long/2addr v4, v0

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 705
    .local v2, "newposition":J
    iget-object v4, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    iget-object v4, v4, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    long-to-int v5, v2

    invoke-interface {v4, v5}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    .line 706
    iget-object v4, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    iget-object v4, v4, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 707
    iget-object v4, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    iget-object v4, v4, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    long-to-int v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "bar"    # Landroid/widget/SeekBar;

    .prologue
    .line 684
    iget-object v0, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    const v1, 0x36ee80

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    .line 686
    iget-object v0, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/MediaController;->mDragging:Z

    .line 693
    iget-object v0, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    iget-object v0, v0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 694
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "bar"    # Landroid/widget/SeekBar;

    .prologue
    .line 711
    iget-object v0, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/MediaController;->mDragging:Z

    .line 712
    iget-object v0, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->setProgress()I

    .line 713
    iget-object v0, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->updatePausePlay()V

    .line 714
    iget-object v0, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    .line 719
    iget-object v0, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    iget-object v0, v0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 720
    return-void
.end method
