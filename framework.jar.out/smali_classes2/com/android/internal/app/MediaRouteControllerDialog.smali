.class public Lcom/android/internal/app/MediaRouteControllerDialog;
.super Landroid/app/Dialog;
.source "MediaRouteControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;
    }
.end annotation


# static fields
.field private static final VOLUME_UPDATE_DELAY_MILLIS:I = 0xfa


# instance fields
.field private final mCallback:Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;

.field private mControlView:Landroid/view/View;

.field private mCreated:Z

.field private mCurrentIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mDisconnectButton:Landroid/widget/Button;

.field private mIsWfd:Z

.field private mMediaRouteConnectingDrawable:Landroid/graphics/drawable/Drawable;

.field private mMediaRouteOnDrawable:Landroid/graphics/drawable/Drawable;

.field private mRoute:Landroid/media/MediaRouter$RouteInfo;

.field private final mRouter:Landroid/media/MediaRouter;

.field private mVolumeControlEnabled:Z

.field private mVolumeLayout:Landroid/widget/LinearLayout;

.field private mVolumeSlider:Landroid/widget/SeekBar;

.field private mVolumeSliderTouched:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x2

    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 70
    iput-boolean v8, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    .line 79
    iput-boolean v3, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mIsWfd:Z

    .line 84
    const-string v7, "media_router"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/MediaRouter;

    iput-object v7, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    .line 85
    new-instance v7, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;

    const/4 v9, 0x0

    invoke-direct {v7, p0, v9}, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;-><init>(Lcom/android/internal/app/MediaRouteControllerDialog;Lcom/android/internal/app/MediaRouteControllerDialog$1;)V

    iput-object v7, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCallback:Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;

    .line 87
    iget-object v7, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v7}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 89
    iget-object v7, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v7}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v6

    .line 90
    .local v6, "supportedTypes":I
    iget-object v7, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v7}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v5

    .line 92
    .local v5, "statusCode":I
    and-int/lit8 v7, v6, 0x4

    if-eqz v7, :cond_0

    if-eq v5, v10, :cond_0

    if-eq v5, v11, :cond_0

    move v3, v8

    .line 95
    .local v3, "shouldRepick":Z
    :cond_0
    if-eqz v3, :cond_2

    .line 96
    iget-object v7, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v7}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v2

    .line 97
    .local v2, "routeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 98
    iget-object v7, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v7, v0}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    .line 99
    .local v1, "r":Landroid/media/MediaRouter$RouteInfo;
    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 100
    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v4

    .line 101
    .local v4, "status":I
    if-eq v4, v10, :cond_1

    if-ne v4, v11, :cond_3

    .line 103
    :cond_1
    iput-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 104
    iput-boolean v8, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mIsWfd:Z

    .line 112
    .end local v0    # "i":I
    .end local v1    # "r":Landroid/media/MediaRouter$RouteInfo;
    .end local v2    # "routeCount":I
    .end local v4    # "status":I
    :cond_2
    return-void

    .line 97
    .restart local v0    # "i":I
    .restart local v1    # "r":Landroid/media/MediaRouter$RouteInfo;
    .restart local v2    # "routeCount":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/internal/app/MediaRouteControllerDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/MediaRouteControllerDialog;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSliderTouched:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/app/MediaRouteControllerDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/MediaRouteControllerDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSliderTouched:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/app/MediaRouteControllerDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/MediaRouteControllerDialog;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->updateVolume()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/MediaRouteControllerDialog;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter$RouteInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/MediaRouteControllerDialog;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/MediaRouteControllerDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/MediaRouteControllerDialog;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mIsWfd:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/MediaRouteControllerDialog;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/MediaRouteControllerDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/MediaRouteControllerDialog;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->update()Z

    move-result v0

    return v0
.end method

.method private getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteConnectingDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, #android:drawable@ic_media_route_connecting_holo_dark#t

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteConnectingDrawable:Landroid/graphics/drawable/Drawable;

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteConnectingDrawable:Landroid/graphics/drawable/Drawable;

    .line 320
    :goto_0
    return-object v0

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteOnDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 317
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, #android:drawable@ic_media_route_on_holo_dark#t

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteOnDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private isVolumeControlAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 337
    iget-boolean v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private update()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 283
    iget-boolean v3, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mIsWfd:Z

    if-eqz v3, :cond_0

    .line 284
    iget-object v3, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v1

    .line 285
    .local v1, "status":I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x6

    if-eq v1, v3, :cond_2

    .line 287
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->dismiss()V

    .line 305
    .end local v1    # "status":I
    :goto_0
    return v2

    .line 292
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 293
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->dismiss()V

    goto :goto_0

    .line 297
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/app/MediaRouteControllerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 298
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->updateVolume()V

    .line 300
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 301
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCurrentIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v2, :cond_3

    .line 302
    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCurrentIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 303
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 305
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private updateVolume()V
    .locals 2

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSliderTouched:Z

    if-nez v0, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->isVolumeControlAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 329
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getMediaControlView()Landroid/view/View;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mControlView:Landroid/view/View;

    return-object v0
.end method

.method public getRoute()Landroid/media/MediaRouter$RouteInfo;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public isVolumeControlEnabled()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 249
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 251
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCallback:Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 252
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->update()Z

    .line 253
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    const v1, #android:layout@media_route_controller_dialog#t

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MediaRouteControllerDialog;->setContentView(I)V

    const v1, #android:id@media_route_volume_layout#t

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeLayout:Landroid/widget/LinearLayout;

    const v1, #android:id@media_route_volume_slider#t

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    .line 176
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    new-instance v2, Lcom/android/internal/app/MediaRouteControllerDialog$1;

    invoke-direct {v2, p0}, Lcom/android/internal/app/MediaRouteControllerDialog$1;-><init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v1, #android:id@media_route_disconnect_button#t

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mDisconnectButton:Landroid/widget/Button;

    .line 213
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mDisconnectButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/internal/app/MediaRouteControllerDialog$2;

    invoke-direct {v2, p0}, Lcom/android/internal/app/MediaRouteControllerDialog$2;-><init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCreated:Z

    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->update()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/MediaRouteControllerDialog;->onCreateMediaControlView(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mControlView:Landroid/view/View;

    const v1, #android:id@media_route_control_frame#t

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 237
    .local v0, "controlFrame":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mControlView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mControlView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 239
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 244
    .end local v0    # "controlFrame":Landroid/widget/FrameLayout;
    :cond_0
    :goto_0
    return-void

    .line 241
    .restart local v0    # "controlFrame":Landroid/widget/FrameLayout;
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateMediaControlView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCallback:Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 259
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 260
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v3, 0x19

    const/4 v1, 0x1

    .line 264
    if-eq p1, v3, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    .line 266
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    if-ne p1, v3, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    .line 269
    :goto_1
    return v1

    :cond_1
    move v0, v1

    .line 266
    goto :goto_0

    .line 269
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 274
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 276
    :cond_0
    const/4 v0, 0x1

    .line 278
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setVolumeControlEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    if-eq v0, p1, :cond_0

    .line 151
    iput-boolean p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    .line 152
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCreated:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->updateVolume()V

    .line 156
    :cond_0
    return-void
.end method
