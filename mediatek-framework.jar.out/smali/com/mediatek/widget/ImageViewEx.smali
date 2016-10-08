.class public Lcom/mediatek/widget/ImageViewEx;
.super Landroid/widget/ImageView;
.source "ImageViewEx.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;,
        Lcom/mediatek/widget/ImageViewEx$GifThread;,
        Lcom/mediatek/widget/ImageViewEx$Bound;
    }
.end annotation


# static fields
.field private static final GIF_THREAD_NAME:Ljava/lang/String; = "gif-animation"

.field private static final MAX_HEIGHT:I = 0x1e0

.field private static final MAX_WIDTH:I = 0x280

.field private static final MSG_RUN_OBJECT:I = 0x401

.field private static final STORE_PIC_TAG:Ljava/lang/String; = "storePic"

.field private static final TAG:Ljava/lang/String; = "ImageViewEx"

.field private static final WIDGET_HEIGHT:Ljava/lang/String; = "widgetHeight"

.field private static final WIDGET_WIDTH:Ljava/lang/String; = "widgetWidth"

.field private static final WIDGET_X:Ljava/lang/String; = "widgetX"

.field private static final WIDGET_Y:Ljava/lang/String; = "widgetY"


# instance fields
.field volatile mAbort:Z

.field private mAnimationThread:Ljava/lang/Thread;

.field private mContext:Landroid/content/Context;

.field private mCurrGifFrame:I

.field protected mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

.field protected mGifStream:Ljava/io/InputStream;

.field protected mHandler:Landroid/os/Handler;

.field private mLastFrame:Landroid/graphics/Bitmap;

.field private mResGif:Z

.field protected mResourceId:I

.field private mSetFromGif:Z

.field protected mUri:Landroid/net/Uri;

.field private mUriGif:Z

.field private self:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 79
    iput-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mLastFrame:Landroid/graphics/Bitmap;

    .line 215
    iput-boolean v0, p0, Lcom/mediatek/widget/ImageViewEx;->mSetFromGif:Z

    .line 217
    iput-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mUri:Landroid/net/Uri;

    .line 218
    iput-boolean v0, p0, Lcom/mediatek/widget/ImageViewEx;->mResGif:Z

    .line 219
    iput-boolean v0, p0, Lcom/mediatek/widget/ImageViewEx;->mUriGif:Z

    .line 220
    iput-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mGifStream:Ljava/io/InputStream;

    .line 222
    iput v0, p0, Lcom/mediatek/widget/ImageViewEx;->mCurrGifFrame:I

    .line 224
    iput-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    .line 226
    iput-boolean v0, p0, Lcom/mediatek/widget/ImageViewEx;->mAbort:Z

    .line 227
    new-instance v0, Lcom/mediatek/widget/ImageViewEx$2;

    invoke-direct {v0, p0}, Lcom/mediatek/widget/ImageViewEx$2;-><init>(Lcom/mediatek/widget/ImageViewEx;)V

    iput-object v0, p0, Lcom/mediatek/widget/ImageViewEx;->mHandler:Landroid/os/Handler;

    .line 87
    iput-object p1, p0, Lcom/mediatek/widget/ImageViewEx;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {p0}, Lcom/mediatek/widget/ImageViewEx;->initForGif()V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    iput-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mLastFrame:Landroid/graphics/Bitmap;

    .line 215
    iput-boolean v0, p0, Lcom/mediatek/widget/ImageViewEx;->mSetFromGif:Z

    .line 217
    iput-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mUri:Landroid/net/Uri;

    .line 218
    iput-boolean v0, p0, Lcom/mediatek/widget/ImageViewEx;->mResGif:Z

    .line 219
    iput-boolean v0, p0, Lcom/mediatek/widget/ImageViewEx;->mUriGif:Z

    .line 220
    iput-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mGifStream:Ljava/io/InputStream;

    .line 222
    iput v0, p0, Lcom/mediatek/widget/ImageViewEx;->mCurrGifFrame:I

    .line 224
    iput-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    .line 226
    iput-boolean v0, p0, Lcom/mediatek/widget/ImageViewEx;->mAbort:Z

    .line 227
    new-instance v0, Lcom/mediatek/widget/ImageViewEx$2;

    invoke-direct {v0, p0}, Lcom/mediatek/widget/ImageViewEx$2;-><init>(Lcom/mediatek/widget/ImageViewEx;)V

    iput-object v0, p0, Lcom/mediatek/widget/ImageViewEx;->mHandler:Landroid/os/Handler;

    .line 99
    iput-object p1, p0, Lcom/mediatek/widget/ImageViewEx;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {p0}, Lcom/mediatek/widget/ImageViewEx;->initForGif()V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    iput-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mLastFrame:Landroid/graphics/Bitmap;

    .line 215
    iput-boolean v0, p0, Lcom/mediatek/widget/ImageViewEx;->mSetFromGif:Z

    .line 217
    iput-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mUri:Landroid/net/Uri;

    .line 218
    iput-boolean v0, p0, Lcom/mediatek/widget/ImageViewEx;->mResGif:Z

    .line 219
    iput-boolean v0, p0, Lcom/mediatek/widget/ImageViewEx;->mUriGif:Z

    .line 220
    iput-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mGifStream:Ljava/io/InputStream;

    .line 222
    iput v0, p0, Lcom/mediatek/widget/ImageViewEx;->mCurrGifFrame:I

    .line 224
    iput-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    .line 226
    iput-boolean v0, p0, Lcom/mediatek/widget/ImageViewEx;->mAbort:Z

    .line 227
    new-instance v0, Lcom/mediatek/widget/ImageViewEx$2;

    invoke-direct {v0, p0}, Lcom/mediatek/widget/ImageViewEx$2;-><init>(Lcom/mediatek/widget/ImageViewEx;)V

    iput-object v0, p0, Lcom/mediatek/widget/ImageViewEx;->mHandler:Landroid/os/Handler;

    .line 113
    iput-object p1, p0, Lcom/mediatek/widget/ImageViewEx;->mContext:Landroid/content/Context;

    .line 114
    invoke-virtual {p0}, Lcom/mediatek/widget/ImageViewEx;->initForGif()V

    .line 115
    return-void
.end method

.method private abortAnimationThread()V
    .locals 3

    .prologue
    .line 606
    const-string v1, "ImageViewEx"

    const-string v2, "<abortAnimationThread>"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mAnimationThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 608
    const-string v1, "ImageViewEx"

    const-string v2, "<abortAnimationThread> thread null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :goto_0
    return-void

    .line 612
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/widget/ImageViewEx;->mAbort:Z

    .line 615
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mAnimationThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 618
    iget-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mAnimationThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mAnimationThread:Ljava/lang/Thread;

    .line 625
    const-string v1, "ImageViewEx"

    const-string v2, "<abortAnimationThread> remove messages"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x401

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string v1, "ImageViewEx"

    const-string v2, "<abortAnimationThread> join interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/mediatek/widget/ImageViewEx;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/widget/ImageViewEx;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/widget/ImageViewEx;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/widget/ImageViewEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/widget/ImageViewEx;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->gifAnimation()V

    return-void
.end method

.method static synthetic access$502(Lcom/mediatek/widget/ImageViewEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/widget/ImageViewEx;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/mediatek/widget/ImageViewEx;->mSetFromGif:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/widget/ImageViewEx;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/widget/ImageViewEx;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/widget/ImageViewEx;->mLastFrame:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mediatek/widget/ImageViewEx;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/widget/ImageViewEx;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mediatek/widget/ImageViewEx;->mLastFrame:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private closeGifStream()V
    .locals 4

    .prologue
    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mGifStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mGifStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 250
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mGifStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ImageViewEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<closeGifStream> Close GIF InputStream failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private decodeBoundsInfo(Landroid/net/Uri;)Lcom/mediatek/widget/ImageViewEx$Bound;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 379
    const/4 v2, 0x0

    .line 380
    .local v2, "input":Ljava/io/InputStream;
    new-instance v0, Lcom/mediatek/widget/ImageViewEx$Bound;

    invoke-direct {v0, p0, v4}, Lcom/mediatek/widget/ImageViewEx$Bound;-><init>(Lcom/mediatek/widget/ImageViewEx;Lcom/mediatek/widget/ImageViewEx$1;)V

    .line 382
    .local v0, "bound":Lcom/mediatek/widget/ImageViewEx$Bound;
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/widget/ImageViewEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 383
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 384
    .local v3, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 385
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 387
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    # setter for: Lcom/mediatek/widget/ImageViewEx$Bound;->width:I
    invoke-static {v0, v4}, Lcom/mediatek/widget/ImageViewEx$Bound;->access$202(Lcom/mediatek/widget/ImageViewEx$Bound;I)I

    .line 388
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    # setter for: Lcom/mediatek/widget/ImageViewEx$Bound;->height:I
    invoke-static {v0, v4}, Lcom/mediatek/widget/ImageViewEx$Bound;->access$302(Lcom/mediatek/widget/ImageViewEx$Bound;I)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    if-eqz v2, :cond_0

    .line 394
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 400
    .end local v3    # "opt":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v0

    .line 395
    .restart local v3    # "opt":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 396
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "ImageViewEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<decodeBoundsInfo> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 389
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "opt":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v1

    .line 390
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v4, "ImageViewEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<decodeBoundsInfo> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 392
    if-eqz v2, :cond_0

    .line 394
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 395
    :catch_2
    move-exception v1

    .line 396
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "ImageViewEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<decodeBoundsInfo> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 392
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_1

    .line 394
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 397
    :cond_1
    :goto_1
    throw v4

    .line 395
    :catch_3
    move-exception v1

    .line 396
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v5, "ImageViewEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<decodeBoundsInfo> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private decodeDegreeInfo(Landroid/net/Uri;)I
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 404
    const/4 v3, 0x0

    .line 405
    .local v3, "inputForRotate":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 406
    .local v4, "orientation":I
    const/4 v0, 0x0

    .line 408
    .local v0, "degree":I
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 409
    if-eqz v3, :cond_0

    .line 410
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, v3}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 411
    .local v2, "exif":Landroid/media/ExifInterface;
    if-eqz v2, :cond_0

    .line 412
    const-string v5, "Orientation"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 414
    invoke-direct {p0, v4}, Lcom/mediatek/widget/ImageViewEx;->getExifRotation(I)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 422
    .end local v2    # "exif":Landroid/media/ExifInterface;
    :cond_0
    if-eqz v3, :cond_1

    .line 424
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 430
    :cond_1
    :goto_0
    return v0

    .line 425
    :catch_0
    move-exception v1

    .line 426
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "ImageViewEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<decodeDegreeInfo> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 417
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 418
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v5, "ImageViewEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<decodeDegreeInfo> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 422
    if-eqz v3, :cond_1

    .line 424
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 425
    :catch_2
    move-exception v1

    .line 426
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "ImageViewEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<decodeDegreeInfo> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 419
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 420
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_4
    const-string v5, "ImageViewEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<decodeDegreeInfo> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 422
    if-eqz v3, :cond_1

    .line 424
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 425
    :catch_4
    move-exception v1

    .line 426
    const-string v5, "ImageViewEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<decodeDegreeInfo> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 422
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_2

    .line 424
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 427
    :cond_2
    :goto_1
    throw v5

    .line 425
    :catch_5
    move-exception v1

    .line 426
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "ImageViewEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<decodeDegreeInfo> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getExifRotation(I)I
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, "degrees":I
    packed-switch p1, :pswitch_data_0

    .line 354
    :goto_0
    :pswitch_0
    return v0

    .line 342
    :pswitch_1
    const/4 v0, 0x0

    .line 343
    goto :goto_0

    .line 345
    :pswitch_2
    const/16 v0, 0x5a

    .line 346
    goto :goto_0

    .line 348
    :pswitch_3
    const/16 v0, 0xb4

    .line 349
    goto :goto_0

    .line 351
    :pswitch_4
    const/16 v0, 0x10e

    goto :goto_0

    .line 340
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private gifAnimation()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 637
    :try_start_0
    const-string v5, "ImageViewEx"

    const-string v6, "<gifAnimation> call openGifStream()"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->openGifStream()V

    .line 639
    iget-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mGifStream:Ljava/io/InputStream;

    if-nez v5, :cond_1

    .line 640
    const-string v5, "ImageViewEx"

    const-string v6, "<gifAnimation> got null mGifStream"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    iget-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    if-eqz v5, :cond_0

    .line 709
    iput-object v9, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    .line 711
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->closeGifStream()V

    .line 713
    :goto_0
    return-void

    .line 643
    :cond_1
    :try_start_1
    iget-boolean v5, p0, Lcom/mediatek/widget/ImageViewEx;->mAbort:Z

    if-eqz v5, :cond_3

    .line 644
    const-string v5, "ImageViewEx"

    const-string v6, "<gifAnimation> after open stream:thread aborted"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 707
    iget-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    if-eqz v5, :cond_2

    .line 709
    iput-object v9, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    .line 711
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->closeGifStream()V

    goto :goto_0

    .line 648
    :cond_3
    :try_start_2
    new-instance v5, Lcom/mediatek/gifdecoder/GifDecoder;

    iget-object v6, p0, Lcom/mediatek/widget/ImageViewEx;->mGifStream:Ljava/io/InputStream;

    invoke-direct {v5, v6}, Lcom/mediatek/gifdecoder/GifDecoder;-><init>(Ljava/io/InputStream;)V

    iput-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    .line 650
    iget-boolean v5, p0, Lcom/mediatek/widget/ImageViewEx;->mAbort:Z

    if-eqz v5, :cond_5

    .line 651
    const-string v5, "ImageViewEx"

    const-string v6, "<gifAnimation> after new GifDecoder:thread aborted"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 707
    iget-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    if-eqz v5, :cond_4

    .line 709
    iput-object v9, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    .line 711
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->closeGifStream()V

    goto :goto_0

    .line 655
    :cond_5
    :try_start_3
    iget-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    if-nez v5, :cond_7

    .line 656
    const-string v5, "ImageViewEx"

    const-string v6, "<gifAnimation> Decode GIF resource failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->showFirstGifFrame()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 707
    iget-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    if-eqz v5, :cond_6

    .line 709
    iput-object v9, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    .line 711
    :cond_6
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->closeGifStream()V

    goto :goto_0

    .line 662
    :cond_7
    :try_start_4
    iget-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    invoke-virtual {v5}, Lcom/mediatek/gifdecoder/GifDecoder;->getTotalFrameCount()I

    move-result v5

    if-nez v5, :cond_9

    .line 663
    const-string v5, "ImageViewEx"

    const-string v6, "<gifAnimation> decode gif stream fails"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    .line 668
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->showFirstGifFrame()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 707
    iget-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    if-eqz v5, :cond_8

    .line 709
    iput-object v9, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    .line 711
    :cond_8
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->closeGifStream()V

    goto :goto_0

    .line 672
    :cond_9
    const-wide/16 v2, 0x0

    .line 673
    .local v2, "frameDuration":J
    :try_start_5
    iget-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    invoke-virtual {v5}, Lcom/mediatek/gifdecoder/GifDecoder;->getTotalFrameCount()I

    move-result v4

    .line 674
    .local v4, "totalFrameCount":I
    const/4 v5, 0x0

    iput v5, p0, Lcom/mediatek/widget/ImageViewEx;->mCurrGifFrame:I

    .line 677
    :goto_1
    iget-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    iget v6, p0, Lcom/mediatek/widget/ImageViewEx;->mCurrGifFrame:I

    invoke-virtual {v5, v6}, Lcom/mediatek/gifdecoder/GifDecoder;->getFrameBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 678
    .local v1, "gifFrame":Landroid/graphics/Bitmap;
    iget-boolean v5, p0, Lcom/mediatek/widget/ImageViewEx;->mAbort:Z

    if-eqz v5, :cond_b

    .line 679
    const-string v5, "ImageViewEx"

    const-string v6, "<gifAnimation> after decode:thread aborted"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 707
    :goto_2
    iget-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    if-eqz v5, :cond_a

    .line 709
    iput-object v9, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    .line 711
    :cond_a
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->closeGifStream()V

    goto/16 :goto_0

    .line 682
    :cond_b
    :try_start_6
    iget-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/mediatek/widget/ImageViewEx;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x401

    new-instance v8, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;

    invoke-direct {v8, p0, v1}, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;-><init>(Lcom/mediatek/widget/ImageViewEx;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 684
    iget-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    iget v6, p0, Lcom/mediatek/widget/ImageViewEx;->mCurrGifFrame:I

    invoke-virtual {v5, v6}, Lcom/mediatek/gifdecoder/GifDecoder;->getFrameDuration(I)I

    move-result v5

    int-to-long v2, v5

    .line 686
    const-string v5, "ImageViewEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<gifAnimation> sleep for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms for frame "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/widget/ImageViewEx;->mCurrGifFrame:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " //this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/widget/ImageViewEx;->self:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-boolean v5, p0, Lcom/mediatek/widget/ImageViewEx;->mAbort:Z

    if-eqz v5, :cond_d

    .line 689
    const-string v5, "ImageViewEx"

    const-string v6, "<gifAnimation> animating:thread aborted"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 707
    .end local v1    # "gifFrame":Landroid/graphics/Bitmap;
    .end local v2    # "frameDuration":J
    .end local v4    # "totalFrameCount":I
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    if-eqz v6, :cond_c

    .line 709
    iput-object v9, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    .line 711
    :cond_c
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->closeGifStream()V

    throw v5

    .line 693
    .restart local v1    # "gifFrame":Landroid/graphics/Bitmap;
    .restart local v2    # "frameDuration":J
    .restart local v4    # "totalFrameCount":I
    :cond_d
    :try_start_7
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 699
    :goto_3
    const/4 v5, 0x1

    if-ne v5, v4, :cond_e

    .line 700
    :try_start_8
    const-string v5, "ImageViewEx"

    const-string v6, "<gifAnimation> single frame, cancel"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 694
    :catch_0
    move-exception v0

    .line 695
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string v5, "ImageViewEx"

    const-string v6, "<gifAnimation> sleeping interrupted"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 703
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_e
    iget v5, p0, Lcom/mediatek/widget/ImageViewEx;->mCurrGifFrame:I

    add-int/lit8 v5, v5, 0x1

    rem-int/2addr v5, v4

    iput v5, p0, Lcom/mediatek/widget/ImageViewEx;->mCurrGifFrame:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1
.end method

.method private openGifStream()V
    .locals 4

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->closeGifStream()V

    .line 260
    iget-boolean v1, p0, Lcom/mediatek/widget/ImageViewEx;->mUriGif:Z

    iget-boolean v2, p0, Lcom/mediatek/widget/ImageViewEx;->mResGif:Z

    if-ne v1, v2, :cond_0

    .line 261
    const-string v1, "ImageViewEx"

    const-string v2, "<openGifStream> not correct status!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/widget/ImageViewEx;->mResGif:Z

    if-eqz v1, :cond_1

    .line 267
    :try_start_0
    const-string v1, "ImageViewEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<openGifStream> open new gif strem from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/widget/ImageViewEx;->mResourceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/widget/ImageViewEx;->mResourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mGifStream:Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v1, "ImageViewEx"

    const-string v2, "<openGifStream> Open GIF resource as InputStream failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 276
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    :try_start_1
    const-string v1, "ImageViewEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<openGifStream> open new gif strem from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/widget/ImageViewEx;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/widget/ImageViewEx;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mGifStream:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 279
    :catch_1
    move-exception v0

    .line 280
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ImageViewEx"

    const-string v2, "<openGifStream> Open GIF URI as InputStream failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resizeAndRotateImage(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 436
    const/4 v4, 0x0

    .line 438
    .local v4, "finalImage":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Lcom/mediatek/widget/ImageViewEx;->decodeBoundsInfo(Landroid/net/Uri;)Lcom/mediatek/widget/ImageViewEx$Bound;

    move-result-object v0

    .line 439
    .local v0, "bound":Lcom/mediatek/widget/ImageViewEx$Bound;
    # getter for: Lcom/mediatek/widget/ImageViewEx$Bound;->width:I
    invoke-static {v0}, Lcom/mediatek/widget/ImageViewEx$Bound;->access$200(Lcom/mediatek/widget/ImageViewEx$Bound;)I

    move-result v6

    .line 440
    .local v6, "imageWidth":I
    # getter for: Lcom/mediatek/widget/ImageViewEx$Bound;->height:I
    invoke-static {v0}, Lcom/mediatek/widget/ImageViewEx$Bound;->access$300(Lcom/mediatek/widget/ImageViewEx$Bound;)I

    move-result v5

    .line 442
    .local v5, "imageHeight":I
    const/4 v9, 0x1

    .line 443
    .local v9, "scaleFactor":I
    invoke-direct {p0, p1}, Lcom/mediatek/widget/ImageViewEx;->decodeDegreeInfo(Landroid/net/Uri;)I

    move-result v1

    .line 445
    .local v1, "degree":I
    const/16 v10, 0x5a

    if-eq v1, v10, :cond_0

    const/16 v10, 0x10e

    if-ne v1, v10, :cond_1

    .line 446
    :cond_0
    # getter for: Lcom/mediatek/widget/ImageViewEx$Bound;->height:I
    invoke-static {v0}, Lcom/mediatek/widget/ImageViewEx$Bound;->access$300(Lcom/mediatek/widget/ImageViewEx$Bound;)I

    move-result v6

    .line 447
    # getter for: Lcom/mediatek/widget/ImageViewEx$Bound;->width:I
    invoke-static {v0}, Lcom/mediatek/widget/ImageViewEx$Bound;->access$200(Lcom/mediatek/widget/ImageViewEx$Bound;)I

    move-result v5

    .line 450
    :cond_1
    const/16 v10, 0x280

    if-gt v6, v10, :cond_2

    const/16 v10, 0x1e0

    if-le v5, v10, :cond_4

    .line 451
    :cond_2
    const-string v10, "ImageViewEx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<resizeAndRotateImage> Image need resize: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_3
    mul-int/lit8 v9, v9, 0x2

    .line 456
    div-int v10, v6, v9

    const/16 v11, 0x280

    if-gt v10, v11, :cond_3

    div-int v10, v5, v9

    const/16 v11, 0x1e0

    if-gt v10, v11, :cond_3

    .line 458
    :cond_4
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 459
    .local v8, "options":Landroid/graphics/BitmapFactory$Options;
    iput v9, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 460
    const/4 v7, 0x0

    .line 462
    .local v7, "input":Ljava/io/InputStream;
    :try_start_0
    iget-object v10, p0, Lcom/mediatek/widget/ImageViewEx;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 463
    if-eqz v7, :cond_7

    .line 465
    const/4 v10, 0x0

    :try_start_1
    invoke-static {v7, v10, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 472
    if-nez v4, :cond_6

    .line 475
    const/4 v10, 0x0

    .line 490
    if-eqz v7, :cond_5

    .line 492
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 498
    :cond_5
    :goto_0
    return-object v10

    .line 467
    :catch_0
    move-exception v3

    .line 470
    .local v3, "ex":Ljava/lang/OutOfMemoryError;
    const/4 v10, 0x0

    .line 490
    if-eqz v7, :cond_5

    .line 492
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 493
    :catch_1
    move-exception v2

    .line 494
    .local v2, "e":Ljava/io/IOException;
    const-string v11, "ImageViewEx"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<resizeAndRotateImage> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 493
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v2

    .line 494
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v11, "ImageViewEx"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<resizeAndRotateImage> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 478
    .end local v2    # "e":Ljava/io/IOException;
    :cond_6
    :try_start_4
    # getter for: Lcom/mediatek/widget/ImageViewEx$Bound;->width:I
    invoke-static {v0}, Lcom/mediatek/widget/ImageViewEx$Bound;->access$200(Lcom/mediatek/widget/ImageViewEx$Bound;)I

    move-result v10

    div-int/2addr v10, v9

    if-lez v10, :cond_9

    # getter for: Lcom/mediatek/widget/ImageViewEx$Bound;->width:I
    invoke-static {v0}, Lcom/mediatek/widget/ImageViewEx$Bound;->access$200(Lcom/mediatek/widget/ImageViewEx$Bound;)I

    move-result v10

    div-int/2addr v10, v9

    move v11, v10

    :goto_1
    # getter for: Lcom/mediatek/widget/ImageViewEx$Bound;->height:I
    invoke-static {v0}, Lcom/mediatek/widget/ImageViewEx$Bound;->access$300(Lcom/mediatek/widget/ImageViewEx$Bound;)I

    move-result v10

    div-int/2addr v10, v9

    if-lez v10, :cond_a

    # getter for: Lcom/mediatek/widget/ImageViewEx$Bound;->height:I
    invoke-static {v0}, Lcom/mediatek/widget/ImageViewEx$Bound;->access$300(Lcom/mediatek/widget/ImageViewEx$Bound;)I

    move-result v10

    div-int/2addr v10, v9

    :goto_2
    const/4 v12, 0x0

    invoke-static {v4, v11, v10, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    .line 485
    :goto_3
    :try_start_5
    invoke-static {v4, v1}, Lcom/mediatek/widget/ImageViewEx;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v4

    .line 490
    :cond_7
    if-eqz v7, :cond_8

    .line 492
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_8
    :goto_4
    move-object v10, v4

    .line 498
    goto :goto_0

    .line 478
    :cond_9
    const/4 v10, 0x1

    move v11, v10

    goto :goto_1

    :cond_a
    const/4 v10, 0x1

    goto :goto_2

    .line 493
    :catch_3
    move-exception v2

    .line 494
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v10, "ImageViewEx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<resizeAndRotateImage> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 487
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 488
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_7
    const-string v10, "ImageViewEx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<resizeAndRotateImage> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 490
    if-eqz v7, :cond_8

    .line 492
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    .line 493
    :catch_5
    move-exception v2

    .line 494
    .local v2, "e":Ljava/io/IOException;
    const-string v10, "ImageViewEx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<resizeAndRotateImage> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 490
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    if-eqz v7, :cond_b

    .line 492
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 495
    :cond_b
    :goto_5
    throw v10

    .line 493
    :catch_6
    move-exception v2

    .line 494
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v11, "ImageViewEx"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<resizeAndRotateImage> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 483
    .end local v2    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v10

    goto/16 :goto_3
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 360
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 361
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 362
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 365
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 366
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 368
    .local v7, "b2":Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_0

    .line 369
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    move-object p0, v7

    .line 375
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "b2":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 372
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showFirstGifFrame()V
    .locals 7

    .prologue
    .line 750
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->openGifStream()V

    .line 751
    iget-object v3, p0, Lcom/mediatek/widget/ImageViewEx;->mGifStream:Ljava/io/InputStream;

    if-nez v3, :cond_0

    .line 774
    :goto_0
    return-void

    .line 753
    :cond_0
    const/4 v1, 0x0

    .line 754
    .local v1, "firstFrame":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 755
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 756
    const/4 v3, 0x1

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 758
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/widget/ImageViewEx;->mGifStream:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 763
    iget-boolean v3, p0, Lcom/mediatek/widget/ImageViewEx;->mAbort:Z

    if-eqz v3, :cond_1

    .line 764
    const-string v3, "ImageViewEx"

    const-string v4, "<showFirstGifFrame> thread aborted"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 759
    :catch_0
    move-exception v0

    .line 760
    .local v0, "ex":Ljava/lang/OutOfMemoryError;
    const-string v3, "ImageViewEx"

    const-string v4, "<showFirstGifFrame> OOM when decoding"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 767
    .end local v0    # "ex":Ljava/lang/OutOfMemoryError;
    :cond_1
    if-eqz v1, :cond_2

    .line 769
    iget-object v3, p0, Lcom/mediatek/widget/ImageViewEx;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/mediatek/widget/ImageViewEx;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x401

    new-instance v6, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;

    invoke-direct {v6, p0, v1}, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;-><init>(Lcom/mediatek/widget/ImageViewEx;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 772
    :cond_2
    const-string v3, "ImageViewEx"

    const-string v4, "<showFirstGifFrame> failed to decode first frame!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startAnimationThread()V
    .locals 2

    .prologue
    .line 594
    iget-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mAnimationThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 603
    :goto_0
    return-void

    .line 598
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/widget/ImageViewEx;->mAbort:Z

    .line 599
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/widget/ImageViewEx$GifThread;

    invoke-direct {v1, p0}, Lcom/mediatek/widget/ImageViewEx$GifThread;-><init>(Lcom/mediatek/widget/ImageViewEx;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 600
    .local v0, "t":Ljava/lang/Thread;
    const-string v1, "gif-animation"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 602
    iput-object v0, p0, Lcom/mediatek/widget/ImageViewEx;->mAnimationThread:Ljava/lang/Thread;

    goto :goto_0
.end method


# virtual methods
.method protected initForGif()V
    .locals 0

    .prologue
    .line 242
    iput-object p0, p0, Lcom/mediatek/widget/ImageViewEx;->self:Landroid/widget/ImageView;

    .line 243
    return-void
.end method

.method public setAnimationRunning(Z)V
    .locals 9
    .param p1, "flag"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/mediatek/widget/ImageViewEx;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 164
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_4

    .line 165
    if-eqz v2, :cond_1

    instance-of v7, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v7, :cond_1

    move-object v5, v2

    .line 166
    check-cast v5, Landroid/graphics/drawable/AnimationDrawable;

    .line 167
    .local v5, "tempAD":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 212
    .end local v5    # "tempAD":Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    const/4 v3, 0x0

    .line 170
    .local v3, "iv":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/mediatek/widget/ImageViewEx;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 171
    .local v4, "parent":Landroid/view/ViewParent;
    instance-of v7, v4, Landroid/view/ViewGroup;

    if-eqz v7, :cond_2

    move-object v6, v4

    .line 172
    check-cast v6, Landroid/view/ViewGroup;

    .line 173
    .local v6, "vg":Landroid/view/ViewGroup;
    const-string v7, "storePic"

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .end local v3    # "iv":Landroid/widget/ImageView;
    check-cast v3, Landroid/widget/ImageView;

    .line 178
    .restart local v3    # "iv":Landroid/widget/ImageView;
    if-eqz v3, :cond_3

    instance-of v7, v3, Landroid/widget/ImageView;

    if-eqz v7, :cond_3

    .line 179
    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 180
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v7, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v7, :cond_0

    move-object v0, v1

    .line 181
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 182
    .local v0, "ad":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0, v0}, Lcom/mediatek/widget/ImageViewEx;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 175
    .end local v0    # "ad":Landroid/graphics/drawable/AnimationDrawable;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v6    # "vg":Landroid/view/ViewGroup;
    :cond_2
    const-string v7, "ImageViewEx"

    const-string v8, "<setAnimationRunning> ViewParent is not a ViewGroup!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    .restart local v6    # "vg":Landroid/view/ViewGroup;
    :cond_3
    const-string v7, "ImageViewEx"

    const-string v8, "<setAnimationRunning> Iv is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 190
    .end local v3    # "iv":Landroid/widget/ImageView;
    .end local v4    # "parent":Landroid/view/ViewParent;
    .end local v6    # "vg":Landroid/view/ViewGroup;
    :cond_4
    if-eqz v2, :cond_5

    instance-of v7, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v7, :cond_5

    move-object v5, v2

    .line 191
    check-cast v5, Landroid/graphics/drawable/AnimationDrawable;

    .line 192
    .restart local v5    # "tempAD":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 194
    .end local v5    # "tempAD":Landroid/graphics/drawable/AnimationDrawable;
    :cond_5
    const/4 v3, 0x0

    .line 195
    .restart local v3    # "iv":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/mediatek/widget/ImageViewEx;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 196
    .restart local v4    # "parent":Landroid/view/ViewParent;
    instance-of v7, v4, Landroid/view/ViewGroup;

    if-eqz v7, :cond_6

    move-object v6, v4

    .line 197
    check-cast v6, Landroid/view/ViewGroup;

    .line 198
    .restart local v6    # "vg":Landroid/view/ViewGroup;
    const-string v7, "storePic"

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .end local v3    # "iv":Landroid/widget/ImageView;
    check-cast v3, Landroid/widget/ImageView;

    .line 203
    .restart local v3    # "iv":Landroid/widget/ImageView;
    if-eqz v3, :cond_7

    instance-of v7, v3, Landroid/widget/ImageView;

    if-eqz v7, :cond_7

    .line 204
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 205
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {p0, v1}, Lcom/mediatek/widget/ImageViewEx;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 200
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v6    # "vg":Landroid/view/ViewGroup;
    :cond_6
    const-string v7, "ImageViewEx"

    const-string v8, "<setAnimationRunning> ViewParent is not a ViewGroup!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    .restart local v6    # "vg":Landroid/view/ViewGroup;
    :cond_7
    const-string v7, "ImageViewEx"

    const-string v8, "<setAnimationRunning> Iv is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 156
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/mediatek/widget/ImageViewEx;->mSetFromGif:Z

    if-nez v0, :cond_0

    .line 580
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->abortAnimationThread()V

    .line 582
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 583
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/mediatek/widget/ImageViewEx;->mSetFromGif:Z

    if-nez v0, :cond_0

    .line 588
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->abortAnimationThread()V

    .line 590
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 591
    return-void
.end method

.method public setImageResource(I)V
    .locals 9
    .param p1, "resId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 293
    const-string v4, "ImageViewEx"

    const-string v5, "<setImageResource> abort previous gif animation if any"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->abortAnimationThread()V

    .line 296
    const/4 v2, 0x0

    .line 297
    .local v2, "imageStream":Ljava/io/InputStream;
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 298
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 300
    .local v3, "isGifImage":Z
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/widget/ImageViewEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 301
    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-eq v6, v4, :cond_0

    .line 302
    const-string v4, "ImageViewEx"

    const-string v5, "<setImageResource> can\'t read data from resource inputstream"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v3, 0x0

    .line 310
    :goto_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    const/4 v2, 0x0

    .line 316
    :goto_1
    if-nez v3, :cond_2

    .line 317
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 328
    :goto_2
    return-void

    .line 304
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    aget-byte v4, v0, v4

    const/16 v5, 0x47

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    const/16 v5, 0x49

    if-ne v4, v5, :cond_1

    const/4 v4, 0x2

    aget-byte v4, v0, v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v5, 0x46

    if-ne v4, v5, :cond_1

    .line 305
    const/4 v3, 0x1

    goto :goto_0

    .line 307
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 312
    :catch_0
    move-exception v1

    .line 313
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "ImageViewEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<setImageResource> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 321
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    iput p1, p0, Lcom/mediatek/widget/ImageViewEx;->mResourceId:I

    .line 324
    iput-boolean v7, p0, Lcom/mediatek/widget/ImageViewEx;->mUriGif:Z

    .line 325
    iput-boolean v8, p0, Lcom/mediatek/widget/ImageViewEx;->mResGif:Z

    .line 327
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->startAnimationThread()V

    goto :goto_2
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 510
    const-string v5, "ImageViewEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<setImageURI> (uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " //this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->abortAnimationThread()V

    .line 513
    if-nez p1, :cond_0

    .line 514
    const-string v5, "ImageViewEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<setImageURI> follow ImageView\'s routin for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 571
    :goto_0
    return-void

    .line 519
    :cond_0
    const/4 v3, 0x0

    .line 520
    .local v3, "imageStream":Ljava/io/InputStream;
    const/4 v5, 0x4

    new-array v0, v5, [B

    .line 521
    .local v0, "buffer":[B
    const/4 v4, 0x0

    .line 522
    .local v4, "isGifImage":Z
    const/4 v2, 0x0

    .line 524
    .local v2, "finalImage":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "content"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.resource"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 528
    :cond_1
    iget-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 530
    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-eq v10, v5, :cond_2

    .line 531
    const-string v5, "ImageViewEx"

    const-string v6, "<setImageURI> can\'t read data from uri inputstream"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v4, 0x0

    .line 540
    :goto_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    const/4 v3, 0x0

    .line 550
    :goto_2
    const-string v5, "ImageViewEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<setImageURI> isGifImage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " //this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    if-nez v4, :cond_6

    .line 553
    const-string v5, "ImageViewEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<setImageURI> follow ImageView\'s routin for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    if-eqz v2, :cond_5

    .line 555
    invoke-super {p0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 533
    :cond_2
    const/4 v5, 0x0

    :try_start_1
    aget-byte v5, v0, v5

    const/16 v6, 0x47

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    aget-byte v5, v0, v5

    const/16 v6, 0x49

    if-ne v5, v6, :cond_3

    const/4 v5, 0x2

    aget-byte v5, v0, v5

    const/16 v6, 0x46

    if-ne v5, v6, :cond_3

    .line 535
    const/4 v4, 0x1

    goto :goto_1

    .line 537
    :cond_3
    const/4 v4, 0x0

    .line 538
    invoke-direct {p0, p1}, Lcom/mediatek/widget/ImageViewEx;->resizeAndRotateImage(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    .line 543
    :cond_4
    const-string v5, "ImageViewEx"

    const-string v6, "<setImageURI> Uncoped uri scheme,call ImageView.setImageURI()"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 544
    const/4 v4, 0x0

    goto :goto_2

    .line 546
    :catch_0
    move-exception v1

    .line 547
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "ImageViewEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<setImageURI> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 557
    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 563
    :cond_6
    const-string v5, "ImageViewEx"

    const-string v6, "<setImageURI> synchroized lock, start gif animation"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iput-object p1, p0, Lcom/mediatek/widget/ImageViewEx;->mUri:Landroid/net/Uri;

    .line 567
    iput-boolean v9, p0, Lcom/mediatek/widget/ImageViewEx;->mUriGif:Z

    .line 568
    iput-boolean v8, p0, Lcom/mediatek/widget/ImageViewEx;->mResGif:Z

    .line 570
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->startAnimationThread()V

    goto/16 :goto_0
.end method

.method public setOnClickIntent(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 125
    new-instance v0, Lcom/mediatek/widget/ImageViewEx$1;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/widget/ImageViewEx$1;-><init>(Lcom/mediatek/widget/ImageViewEx;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/widget/ImageViewEx;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    return-void
.end method
