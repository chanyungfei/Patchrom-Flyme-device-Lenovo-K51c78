.class public Lcom/mediatek/gesture/Gesture;
.super Ljava/lang/Object;
.source "Gesture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gesture/Gesture$EmulatorHandler;,
        Lcom/mediatek/gesture/Gesture$HandPose;,
        Lcom/mediatek/gesture/Gesture$HandDetectionEvent;,
        Lcom/mediatek/gesture/Gesture$HandDetectionListener;
    }
.end annotation


# static fields
.field private static final MSG_RECEIVER_GESTURE:I = 0x0

.field private static final POSE_OPENPALM:Ljava/lang/String; = "openpalm"

.field private static final POSE_VICTORY:Ljava/lang/String; = "victory"

.field private static final TAG:Ljava/lang/String; = "Gesture_Framework"

.field private static mIsEmulator:Z

.field private static sGesture:Lcom/mediatek/gesture/Gesture;


# instance fields
.field private mDetectedPose:Lcom/mediatek/gesture/Gesture$HandPose;

.field private mEmulatorHandler:Lcom/mediatek/gesture/Gesture$EmulatorHandler;

.field private mHandDetectionListener:Lcom/mediatek/gesture/Gesture$HandDetectionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 138
    const-string v2, "ro.mtk_emulator_support"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    sput-boolean v0, Lcom/mediatek/gesture/Gesture;->mIsEmulator:Z

    .line 378
    sget-boolean v0, Lcom/mediatek/gesture/Gesture;->mIsEmulator:Z

    if-nez v0, :cond_0

    .line 379
    const-string v0, "jni_gesture"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 381
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 138
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const-string v1, "Gesture_Framework"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsEmulator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/mediatek/gesture/Gesture;->mIsEmulator:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget-boolean v1, Lcom/mediatek/gesture/Gesture;->mIsEmulator:Z

    if-nez v1, :cond_0

    .line 147
    invoke-direct {p0, p0}, Lcom/mediatek/gesture/Gesture;->native_setup(Lcom/mediatek/gesture/Gesture;)V

    .line 153
    :goto_0
    return-void

    .line 149
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "emulator-gesture-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, "t":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 151
    new-instance v1, Lcom/mediatek/gesture/Gesture$EmulatorHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/mediatek/gesture/Gesture$EmulatorHandler;-><init>(Lcom/mediatek/gesture/Gesture;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/gesture/Gesture;->mEmulatorHandler:Lcom/mediatek/gesture/Gesture$EmulatorHandler;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/mediatek/gesture/Gesture;)Lcom/mediatek/gesture/Gesture$HandPose;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gesture/Gesture;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mediatek/gesture/Gesture;->mDetectedPose:Lcom/mediatek/gesture/Gesture$HandPose;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/gesture/Gesture;)Lcom/mediatek/gesture/Gesture$HandDetectionListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gesture/Gesture;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mediatek/gesture/Gesture;->mHandDetectionListener:Lcom/mediatek/gesture/Gesture$HandDetectionListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/gesture/Gesture;)Lcom/mediatek/gesture/Gesture$EmulatorHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gesture/Gesture;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mediatek/gesture/Gesture;->mEmulatorHandler:Lcom/mediatek/gesture/Gesture$EmulatorHandler;

    return-object v0
.end method

.method public static createGesture()Lcom/mediatek/gesture/Gesture;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/mediatek/gesture/Gesture;->sGesture:Lcom/mediatek/gesture/Gesture;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/mediatek/gesture/Gesture;

    invoke-direct {v0}, Lcom/mediatek/gesture/Gesture;-><init>()V

    sput-object v0, Lcom/mediatek/gesture/Gesture;->sGesture:Lcom/mediatek/gesture/Gesture;

    .line 163
    :cond_0
    sget-object v0, Lcom/mediatek/gesture/Gesture;->sGesture:Lcom/mediatek/gesture/Gesture;

    return-object v0
.end method

.method private static native native_addGesture(Lcom/mediatek/gesture/Gesture$HandDetectionListener;Lcom/mediatek/gesture/Gesture$HandPose;)V
.end method

.method private static native native_removeGesture(Lcom/mediatek/gesture/Gesture$HandDetectionListener;Lcom/mediatek/gesture/Gesture$HandPose;)V
.end method

.method private native native_setup(Lcom/mediatek/gesture/Gesture;)V
.end method


# virtual methods
.method public addHandDetectionListener(Lcom/mediatek/gesture/Gesture$HandDetectionListener;Lcom/mediatek/gesture/Gesture$HandPose;)V
    .locals 3
    .param p1, "listener"    # Lcom/mediatek/gesture/Gesture$HandDetectionListener;
    .param p2, "pose"    # Lcom/mediatek/gesture/Gesture$HandPose;

    .prologue
    .line 311
    const-string v0, "Gesture_Framework"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addHandDetectionListener(), pose:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iput-object p1, p0, Lcom/mediatek/gesture/Gesture;->mHandDetectionListener:Lcom/mediatek/gesture/Gesture$HandDetectionListener;

    .line 313
    iput-object p2, p0, Lcom/mediatek/gesture/Gesture;->mDetectedPose:Lcom/mediatek/gesture/Gesture$HandPose;

    .line 314
    sget-boolean v0, Lcom/mediatek/gesture/Gesture;->mIsEmulator:Z

    if-nez v0, :cond_1

    .line 315
    invoke-static {p1, p2}, Lcom/mediatek/gesture/Gesture;->native_addGesture(Lcom/mediatek/gesture/Gesture$HandDetectionListener;Lcom/mediatek/gesture/Gesture$HandPose;)V

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gesture/Gesture;->mEmulatorHandler:Lcom/mediatek/gesture/Gesture$EmulatorHandler;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/mediatek/gesture/Gesture;->mEmulatorHandler:Lcom/mediatek/gesture/Gesture$EmulatorHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/gesture/Gesture$EmulatorHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public removeHandDetectionListener(Lcom/mediatek/gesture/Gesture$HandDetectionListener;Lcom/mediatek/gesture/Gesture$HandPose;)V
    .locals 3
    .param p1, "listener"    # Lcom/mediatek/gesture/Gesture$HandDetectionListener;
    .param p2, "pose"    # Lcom/mediatek/gesture/Gesture$HandPose;

    .prologue
    .line 329
    const-string v0, "Gesture_Framework"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeHandDetectionListener(), pose:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/gesture/Gesture;->mHandDetectionListener:Lcom/mediatek/gesture/Gesture$HandDetectionListener;

    .line 331
    sget-boolean v0, Lcom/mediatek/gesture/Gesture;->mIsEmulator:Z

    if-nez v0, :cond_1

    .line 332
    invoke-static {p1, p2}, Lcom/mediatek/gesture/Gesture;->native_removeGesture(Lcom/mediatek/gesture/Gesture$HandDetectionListener;Lcom/mediatek/gesture/Gesture$HandPose;)V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gesture/Gesture;->mEmulatorHandler:Lcom/mediatek/gesture/Gesture$EmulatorHandler;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/mediatek/gesture/Gesture;->mEmulatorHandler:Lcom/mediatek/gesture/Gesture$EmulatorHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/gesture/Gesture$EmulatorHandler;->removeMessages(I)V

    goto :goto_0
.end method
