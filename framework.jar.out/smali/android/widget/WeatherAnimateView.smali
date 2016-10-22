.class public Landroid/widget/WeatherAnimateView;
.super Landroid/widget/RelativeLayout;
.source "WeatherAnimateView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0x320

.field private static final IMAGEVIEW_ALPHA_OPAQUE:I = 0x1

.field private static final IMAGEVIEW_ALPHA_TRANSPARENT:I = 0x0

.field private static final PROPERTY_IMAGEVIEW_ALPHA:Ljava/lang/String; = "alpha"

.field private static final TAG:Ljava/lang/String; = "WeatherAnimationView"


# instance fields
.field private mFadeInAnimator:Landroid/animation/Animator;

.field private mFadeOutAnimator:Landroid/animation/Animator;

.field private mInView:Landroid/widget/ImageView;

.field private mLastRes:Landroid/graphics/Bitmap;

.field private mOutView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/WeatherAnimateView;->mLastRes:Landroid/graphics/Bitmap;

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/WeatherAnimateView;->mLastRes:Landroid/graphics/Bitmap;

    .line 93
    invoke-direct {p0}, Landroid/widget/WeatherAnimateView;->initAnimation()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/WeatherAnimateView;->mLastRes:Landroid/graphics/Bitmap;

    .line 88
    invoke-direct {p0}, Landroid/widget/WeatherAnimateView;->initAnimation()V

    .line 89
    return-void
.end method

.method static synthetic access$000(Landroid/widget/WeatherAnimateView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/WeatherAnimateView;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/widget/WeatherAnimateView;->mOutView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/WeatherAnimateView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Landroid/widget/WeatherAnimateView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 55
    iput-object p1, p0, Landroid/widget/WeatherAnimateView;->mLastRes:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Landroid/widget/WeatherAnimateView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/WeatherAnimateView;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/widget/WeatherAnimateView;->mInView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/WeatherAnimateView;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Landroid/widget/WeatherAnimateView;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/widget/WeatherAnimateView;->mFadeInAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method private initAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x320

    const/4 v3, 0x2

    .line 101
    iget-object v0, p0, Landroid/widget/WeatherAnimateView;->mInView:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/WeatherAnimateView;->mFadeInAnimator:Landroid/animation/Animator;

    .line 103
    iget-object v0, p0, Landroid/widget/WeatherAnimateView;->mFadeInAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 104
    iget-object v0, p0, Landroid/widget/WeatherAnimateView;->mOutView:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/WeatherAnimateView;->mFadeOutAnimator:Landroid/animation/Animator;

    .line 106
    iget-object v0, p0, Landroid/widget/WeatherAnimateView;->mFadeOutAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 107
    return-void

    .line 101
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 104
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 111
    const-string v0, "WeatherAnimationView"

    const-string/jumbo v1, "onFinishInflate"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string/jumbo v0, "tag_weather_out_view"

    invoke-virtual {p0, v0}, Landroid/widget/WeatherAnimateView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/WeatherAnimateView;->mOutView:Landroid/widget/ImageView;

    .line 113
    const-string/jumbo v0, "tag_weather_in_view"

    invoke-virtual {p0, v0}, Landroid/widget/WeatherAnimateView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/WeatherAnimateView;->mInView:Landroid/widget/ImageView;

    .line 114
    invoke-direct {p0}, Landroid/widget/WeatherAnimateView;->initAnimation()V

    .line 115
    return-void
.end method

.method public setImageViewBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "res"    # Landroid/graphics/Bitmap;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 119
    const-string v1, "WeatherAnimationView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setImageViewBitmap mLastResId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/WeatherAnimateView;->mLastRes:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Landroid/widget/WeatherAnimateView;->mLastRes:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 121
    iput-object p1, p0, Landroid/widget/WeatherAnimateView;->mLastRes:Landroid/graphics/Bitmap;

    .line 122
    iget-object v1, p0, Landroid/widget/WeatherAnimateView;->mOutView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-object v1, p0, Landroid/widget/WeatherAnimateView;->mInView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    iget-object v1, p0, Landroid/widget/WeatherAnimateView;->mInView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v1, p0, Landroid/widget/WeatherAnimateView;->mFadeInAnimator:Landroid/animation/Animator;

    iget-object v2, p0, Landroid/widget/WeatherAnimateView;->mInView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 126
    iget-object v1, p0, Landroid/widget/WeatherAnimateView;->mFadeInAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 165
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Landroid/widget/WeatherAnimateView;->mOutView:Landroid/widget/ImageView;

    .line 129
    .local v0, "tmpImageView":Landroid/widget/ImageView;
    iget-object v1, p0, Landroid/widget/WeatherAnimateView;->mInView:Landroid/widget/ImageView;

    iput-object v1, p0, Landroid/widget/WeatherAnimateView;->mOutView:Landroid/widget/ImageView;

    .line 130
    iput-object v0, p0, Landroid/widget/WeatherAnimateView;->mInView:Landroid/widget/ImageView;

    .line 131
    const/4 v0, 0x0

    .line 133
    iget-object v1, p0, Landroid/widget/WeatherAnimateView;->mFadeOutAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 134
    iget-object v1, p0, Landroid/widget/WeatherAnimateView;->mFadeOutAnimator:Landroid/animation/Animator;

    new-instance v2, Landroid/widget/WeatherAnimateView$1;

    invoke-direct {v2, p0, p1}, Landroid/widget/WeatherAnimateView$1;-><init>(Landroid/widget/WeatherAnimateView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 160
    iget-object v1, p0, Landroid/widget/WeatherAnimateView;->mOutView:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/widget/WeatherAnimateView;->mLastRes:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 161
    iget-object v1, p0, Landroid/widget/WeatherAnimateView;->mOutView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v1, p0, Landroid/widget/WeatherAnimateView;->mFadeOutAnimator:Landroid/animation/Animator;

    iget-object v2, p0, Landroid/widget/WeatherAnimateView;->mOutView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 163
    iget-object v1, p0, Landroid/widget/WeatherAnimateView;->mFadeOutAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public setLastRes(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "res"    # Landroid/graphics/Bitmap;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 169
    iput-object p1, p0, Landroid/widget/WeatherAnimateView;->mLastRes:Landroid/graphics/Bitmap;

    .line 170
    return-void
.end method
