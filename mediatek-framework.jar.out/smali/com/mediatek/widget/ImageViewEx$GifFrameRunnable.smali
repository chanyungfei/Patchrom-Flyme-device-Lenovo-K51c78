.class Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;
.super Ljava/lang/Object;
.source "ImageViewEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/widget/ImageViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GifFrameRunnable"
.end annotation


# instance fields
.field mFrame:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/mediatek/widget/ImageViewEx;


# direct methods
.method constructor <init>(Lcom/mediatek/widget/ImageViewEx;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p2, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 718
    iput-object p1, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->this$0:Lcom/mediatek/widget/ImageViewEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    iput-object p2, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->mFrame:Landroid/graphics/Bitmap;

    .line 720
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 723
    iget-object v0, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->this$0:Lcom/mediatek/widget/ImageViewEx;

    iget-boolean v0, v0, Lcom/mediatek/widget/ImageViewEx;->mAbort:Z

    if-eqz v0, :cond_1

    .line 724
    const-string v0, "ImageViewEx"

    const-string v1, "<GifFrameRunnable> run:gif aborted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v0, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->mFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 726
    const-string v0, "ImageViewEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<GifFrameRunnable> run:recycle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->mFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v0, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->mFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 728
    iput-object v3, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->mFrame:Landroid/graphics/Bitmap;

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    iget-object v0, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->this$0:Lcom/mediatek/widget/ImageViewEx;

    const/4 v1, 0x1

    # setter for: Lcom/mediatek/widget/ImageViewEx;->mSetFromGif:Z
    invoke-static {v0, v1}, Lcom/mediatek/widget/ImageViewEx;->access$502(Lcom/mediatek/widget/ImageViewEx;Z)Z

    .line 733
    const-string v0, "ImageViewEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<GifFrameRunnable> run:call setImageBitmap(mFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->mFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v0, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->this$0:Lcom/mediatek/widget/ImageViewEx;

    iget-object v1, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->mFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/mediatek/widget/ImageViewEx;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 737
    iget-object v0, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->this$0:Lcom/mediatek/widget/ImageViewEx;

    # getter for: Lcom/mediatek/widget/ImageViewEx;->mLastFrame:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/mediatek/widget/ImageViewEx;->access$600(Lcom/mediatek/widget/ImageViewEx;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 738
    const-string v0, "ImageViewEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<GifFrameRunnable> run:recycle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->this$0:Lcom/mediatek/widget/ImageViewEx;

    # getter for: Lcom/mediatek/widget/ImageViewEx;->mLastFrame:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/mediatek/widget/ImageViewEx;->access$600(Lcom/mediatek/widget/ImageViewEx;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v0, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->this$0:Lcom/mediatek/widget/ImageViewEx;

    # getter for: Lcom/mediatek/widget/ImageViewEx;->mLastFrame:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/mediatek/widget/ImageViewEx;->access$600(Lcom/mediatek/widget/ImageViewEx;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 740
    iget-object v0, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->this$0:Lcom/mediatek/widget/ImageViewEx;

    # setter for: Lcom/mediatek/widget/ImageViewEx;->mLastFrame:Landroid/graphics/Bitmap;
    invoke-static {v0, v3}, Lcom/mediatek/widget/ImageViewEx;->access$602(Lcom/mediatek/widget/ImageViewEx;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 742
    :cond_2
    iget-object v0, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->this$0:Lcom/mediatek/widget/ImageViewEx;

    iget-object v1, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->mFrame:Landroid/graphics/Bitmap;

    # setter for: Lcom/mediatek/widget/ImageViewEx;->mLastFrame:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/mediatek/widget/ImageViewEx;->access$602(Lcom/mediatek/widget/ImageViewEx;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 745
    iget-object v0, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->this$0:Lcom/mediatek/widget/ImageViewEx;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/widget/ImageViewEx;->mSetFromGif:Z
    invoke-static {v0, v1}, Lcom/mediatek/widget/ImageViewEx;->access$502(Lcom/mediatek/widget/ImageViewEx;Z)Z

    goto :goto_0
.end method
