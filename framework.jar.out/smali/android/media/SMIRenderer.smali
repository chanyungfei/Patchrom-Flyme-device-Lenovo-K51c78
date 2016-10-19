.class public Landroid/media/SMIRenderer;
.super Landroid/media/SubtitleController$Renderer;
.source "SMIRenderer.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEventHandler:Landroid/os/Handler;

.field private final mRender:Z

.field private mRenderingWidget:Landroid/media/WebVttRenderingWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/SMIRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 35
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mEventHandler"    # Landroid/os/Handler;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/media/SubtitleController$Renderer;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/media/SMIRenderer;->mContext:Landroid/content/Context;

    .line 39
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/media/SMIRenderer;->mRender:Z

    .line 40
    iput-object p2, p0, Landroid/media/SMIRenderer;->mEventHandler:Landroid/os/Handler;

    .line 41
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;
    .locals 2
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 57
    iget-boolean v0, p0, Landroid/media/SMIRenderer;->mRender:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/SMIRenderer;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Landroid/media/WebVttRenderingWidget;

    iget-object v1, p0, Landroid/media/SMIRenderer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/WebVttRenderingWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/SMIRenderer;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    .line 61
    :cond_0
    iget-boolean v0, p0, Landroid/media/SMIRenderer;->mRender:Z

    if-eqz v0, :cond_1

    .line 62
    new-instance v0, Landroid/media/SMITrack;

    iget-object v1, p0, Landroid/media/SMIRenderer;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    invoke-direct {v0, v1, p1}, Landroid/media/SMITrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    .line 64
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/media/SMITrack;

    iget-object v1, p0, Landroid/media/SMIRenderer;->mEventHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Landroid/media/SMITrack;-><init>(Landroid/os/Handler;Landroid/media/MediaFormat;)V

    goto :goto_0
.end method

.method public supports(Landroid/media/MediaFormat;)Z
    .locals 4
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 45
    const-string/jumbo v2, "mime"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    const-string/jumbo v2, "mime"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/x-subtitle-smi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v1

    .line 50
    :cond_1
    iget-boolean v3, p0, Landroid/media/SMIRenderer;->mRender:Z

    const-string v2, "is-timed-text"

    invoke-virtual {p1, v2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    :goto_1
    if-ne v3, v2, :cond_3

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method
