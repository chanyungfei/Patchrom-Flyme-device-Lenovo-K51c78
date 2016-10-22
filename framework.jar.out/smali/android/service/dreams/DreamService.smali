.class public Landroid/service/dreams/DreamService;
.super Landroid/app/Service;
.source "DreamService.java"

# interfaces
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/DreamService$DreamServiceWrapper;
    }
.end annotation


# static fields
.field public static final DREAM_META_DATA:Ljava/lang/String; = "android.service.dream"

.field public static final DREAM_SERVICE:Ljava/lang/String; = "dreams"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.dreams.DreamService"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCanDoze:Z

.field private mDebug:Z

.field private mDozeScreenBrightness:I

.field private mDozeScreenState:I

.field private mDozing:Z

.field private mFinished:Z

.field private mFullscreen:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInteractive:Z

.field private mLowProfile:Z

.field private final mSandman:Landroid/service/dreams/IDreamManager;

.field private mScreenBright:Z

.field private mStarted:Z

.field private mWaking:Z

.field private mWindow:Landroid/view/Window;

.field private mWindowToken:Landroid/os/IBinder;

.field private mWindowless:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 195
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/service/dreams/DreamService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    .line 177
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;

    .line 181
    iput-boolean v3, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    .line 183
    iput-boolean v3, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    .line 190
    iput v2, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    .line 193
    iput-boolean v2, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    .line 196
    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    .line 197
    return-void
.end method

.method static synthetic access$100(Landroid/service/dreams/DreamService;)Landroid/view/Window;
    .locals 1
    .param p0, "x0"    # Landroid/service/dreams/DreamService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$200(Landroid/service/dreams/DreamService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/service/dreams/DreamService;

    .prologue
    .line 152
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    return v0
.end method

.method static synthetic access$300(Landroid/service/dreams/DreamService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/service/dreams/DreamService;

    .prologue
    .line 152
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    return v0
.end method

.method static synthetic access$400(Landroid/service/dreams/DreamService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/service/dreams/DreamService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Landroid/service/dreams/DreamService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/service/dreams/DreamService;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mStarted:Z

    return p1
.end method

.method static synthetic access$600(Landroid/service/dreams/DreamService;Landroid/os/IBinder;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/service/dreams/DreamService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Z

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Landroid/service/dreams/DreamService;->attach(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$700(Landroid/service/dreams/DreamService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/service/dreams/DreamService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Landroid/service/dreams/DreamService;)V
    .locals 0
    .param p0, "x0"    # Landroid/service/dreams/DreamService;

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->detach()V

    return-void
.end method

.method static synthetic access$900(Landroid/service/dreams/DreamService;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/service/dreams/DreamService;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService;->wakeUp(Z)V

    return-void
.end method

.method private applyFlags(III)I
    .locals 2
    .param p1, "oldFlags"    # I
    .param p2, "flags"    # I
    .param p3, "mask"    # I

    .prologue
    .line 1049
    xor-int/lit8 v0, p3, -0x1

    and-int/2addr v0, p1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private applySystemUiVisibilityFlags(II)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 1042
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 1043
    .local v0, "v":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    .line 1044
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    invoke-direct {p0, v1, p1, p2}, Landroid/service/dreams/DreamService;->applyFlags(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1046
    :cond_0
    return-void

    .line 1042
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private applyWindowFlags(II)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 1028
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    .line 1029
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1030
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1, p1, p2}, Landroid/service/dreams/DreamService;->applyFlags(III)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1031
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1032
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1034
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method private final attach(Landroid/os/IBinder;Z)V
    .locals 10
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "canDoze"    # Z

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x7e7

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 944
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    .line 945
    iget-object v2, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attach() called when already attached with token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :goto_0
    return-void

    .line 948
    :cond_0
    iget-boolean v2, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    if-eqz v2, :cond_2

    .line 949
    :cond_1
    iget-object v2, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v3, "attach() called after dream already finished"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :try_start_0
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Landroid/service/dreams/IDreamManager;->finishSelf(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 952
    :catch_0
    move-exception v2

    goto :goto_0

    .line 958
    :cond_2
    iput-object p1, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    .line 959
    iput-boolean p2, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    .line 960
    iget-boolean v2, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    if-nez v2, :cond_3

    .line 961
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Only doze dreams can be windowless"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 963
    :cond_3
    iget-boolean v2, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    if-nez v2, :cond_6

    .line 964
    invoke-static {p0}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v2

    iput-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    .line 965
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 966
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 967
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v6, -0x1000000

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 968
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/view/Window;->setFormat(I)V

    .line 970
    iget-boolean v2, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v5, "Attaching window token: %s to window of type %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :cond_4
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 974
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 975
    iput-object p1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 976
    const v2, 0x10302ea

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 977
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v6, 0x490101

    iget-boolean v2, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    if-eqz v2, :cond_7

    const/16 v2, 0x400

    :goto_1
    or-int/2addr v6, v2

    iget-boolean v2, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    if-eqz v2, :cond_8

    const/16 v2, 0x80

    :goto_2
    or-int/2addr v2, v6

    or-int/2addr v2, v5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 985
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 988
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    const/high16 v5, -0x80000000

    invoke-virtual {v2, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 989
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    const-string v5, "dream"

    invoke-virtual {v2, v9, p1, v5, v4}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 991
    iget-boolean v2, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    if-eqz v2, :cond_5

    move v3, v4

    :cond_5
    invoke-direct {p0, v3, v4}, Landroid/service/dreams/DreamService;->applySystemUiVisibilityFlags(II)V

    .line 996
    :try_start_1
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1011
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/service/dreams/DreamService$1;

    invoke-direct {v3, p0}, Landroid/service/dreams/DreamService$1;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .restart local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_7
    move v2, v3

    .line 977
    goto :goto_1

    :cond_8
    move v2, v3

    goto :goto_2

    .line 997
    :catch_1
    move-exception v0

    .line 1001
    .local v0, "ex":Landroid/view/WindowManager$BadTokenException;
    iget-object v2, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v3, "attach() called after window token already removed, dream will finish soon"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iput-object v9, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    goto/16 :goto_0
.end method

.method private static clampAbsoluteBrightness(I)I
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 1087
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private final detach()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 903
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mStarted:Z

    if-eqz v0, :cond_1

    .line 904
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v1, "detach(): Calling onDreamingStopped()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_0
    iput-boolean v4, p0, Landroid/service/dreams/DreamService;->mStarted:Z

    .line 906
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    .line 909
    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_3

    .line 911
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v1, "detach(): Removing window from window manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_2
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 913
    iput-object v5, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    .line 916
    :cond_3
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    if-eqz v0, :cond_4

    .line 918
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Dream"

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_5

    .line 923
    :try_start_0
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/service/dreams/IDreamManager;->removeToken(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    :goto_0
    iput-object v5, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    .line 932
    iput-boolean v4, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    .line 934
    :cond_4
    return-void

    .line 928
    :cond_5
    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v1, "No dream manager found"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 924
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getSystemUiVisibilityFlagValue(IZ)Z
    .locals 2
    .param p1, "flag"    # I
    .param p2, "defaultValue"    # Z

    .prologue
    .line 1037
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 1038
    .local v0, "v":Landroid/view/View;
    :goto_0
    if-nez v0, :cond_1

    .end local p2    # "defaultValue":Z
    :goto_1
    return p2

    .line 1037
    .end local v0    # "v":Landroid/view/View;
    .restart local p2    # "defaultValue":Z
    :cond_0
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1038
    .restart local v0    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    goto :goto_1
.end method

.method private getWindowFlagValue(IZ)Z
    .locals 1
    .param p1, "flag"    # I
    .param p2, "defaultValue"    # Z

    .prologue
    .line 1024
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_0

    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_0
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private updateDoze()V
    .locals 4

    .prologue
    .line 618
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    if-eqz v0, :cond_0

    .line 620
    :try_start_0
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    iget v3, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    invoke-interface {v0, v1, v2, v3}, Landroid/service/dreams/IDreamManager;->startDozing(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 621
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private wakeUp(Z)V
    .locals 3
    .param p1, "fromSystem"    # Z

    .prologue
    .line 856
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wakeUp(): fromSystem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWaking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFinished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_0
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-nez v0, :cond_1

    .line 860
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    .line 865
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->onWakeUp()V

    .line 869
    if-nez p1, :cond_1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-nez v0, :cond_1

    .line 870
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    if-nez v0, :cond_2

    .line 871
    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v1, "WakeUp was called before the dream was attached."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_1
    :goto_0
    return-void

    .line 874
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/service/dreams/IDreamManager;->finishSelf(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 875
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 439
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    return-void
.end method

.method public canDoze()Z
    .locals 1

    .prologue
    .line 578
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    return v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 261
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1

    .line 262
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v1, "Waking up on genericMotionEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    .line 264
    const/4 v0, 0x1

    .line 266
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 211
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v1, :cond_1

    .line 212
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v2, "Waking up on keyEvent"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    .line 220
    :goto_0
    return v0

    .line 215
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 216
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v2, "Waking up on back key"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_2
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    goto :goto_0

    .line 220
    :cond_3
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 226
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1

    .line 227
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v1, "Waking up on keyShortcutEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    .line 229
    const/4 v0, 0x1

    .line 231
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 239
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1

    .line 240
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v1, "Waking up on touchEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    .line 242
    const/4 v0, 0x1

    .line 244
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 250
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1

    .line 251
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v1, "Waking up on trackballEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    .line 253
    const/4 v0, 0x1

    .line 255
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1054
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/dreams/DreamService$2;

    invoke-direct {v1, p0, p1, p3}, Landroid/service/dreams/DreamService$2;-><init>(Landroid/service/dreams/DreamService;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, p2, v2, v3}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;J)V

    .line 1060
    return-void
.end method

.method protected dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1065
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    if-nez v0, :cond_7

    .line 1066
    const-string/jumbo v0, "stopped"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1070
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  window: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1071
    const-string v0, "  flags:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1072
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " interactive"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1073
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isLowProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " lowprofile"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1074
    :cond_1
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " fullscreen"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1075
    :cond_2
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isScreenBright()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " bright"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1076
    :cond_3
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isWindowless()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, " windowless"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1077
    :cond_4
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, " dozing"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1079
    :cond_5
    :goto_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1080
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->canDoze()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  doze screen state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  doze screen brightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1084
    :cond_6
    return-void

    .line 1068
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "running (token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1078
    :cond_8
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->canDoze()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, " candoze"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 451
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final finish()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 825
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish(): mFinished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_0
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-nez v0, :cond_1

    .line 828
    iput-boolean v3, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    .line 830
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    if-nez v0, :cond_2

    .line 831
    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v1, "Finish was called before the dream was attached."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :goto_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->stopSelf()V

    .line 842
    :cond_1
    return-void

    .line 834
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/service/dreams/IDreamManager;->finishSelf(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 835
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getDozeScreenBrightness()I
    .locals 1

    .prologue
    .line 728
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    return v0
.end method

.method public getDozeScreenState()I
    .locals 1

    .prologue
    .line 675
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    return v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDozing()Z
    .locals 1

    .prologue
    .line 660
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    return v0
.end method

.method public isFullscreen()Z
    .locals 1

    .prologue
    .line 523
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    return v0
.end method

.method public isInteractive()Z
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    return v0
.end method

.method public isLowProfile()Z
    .locals 2

    .prologue
    .line 499
    const/4 v0, 0x1

    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    invoke-direct {p0, v0, v1}, Landroid/service/dreams/DreamService;->getSystemUiVisibilityFlagValue(IZ)Z

    move-result v0

    return v0
.end method

.method public isScreenBright()Z
    .locals 2

    .prologue
    .line 546
    const/16 v0, 0x80

    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    invoke-direct {p0, v0, v1}, Landroid/service/dreams/DreamService;->getWindowFlagValue(IZ)Z

    move-result v0

    return v0
.end method

.method public isWindowless()Z
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 355
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 350
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 813
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBind() intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_0
    new-instance v0, Landroid/service/dreams/DreamService$DreamServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/dreams/DreamService$DreamServiceWrapper;-><init>(Landroid/service/dreams/DreamService;Landroid/service/dreams/DreamService$1;)V

    return-object v0
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 313
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 773
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 775
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 278
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 886
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_0
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->detach()V

    .line 892
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 893
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 328
    return-void
.end method

.method public onDreamingStarted()V
    .locals 2

    .prologue
    .line 781
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDreamingStarted()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_0
    return-void
.end method

.method public onDreamingStopped()V
    .locals 2

    .prologue
    .line 790
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDreamingStopped()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 333
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method public onWakeUp()V
    .locals 0

    .prologue
    .line 807
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->finish()V

    .line 808
    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 308
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 318
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 344
    const/4 v0, 0x0

    return-object v0
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .prologue
    .line 391
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 392
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 407
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 408
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 427
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    return-void
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "dbg"    # Z

    .prologue
    .line 203
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    .line 204
    return-void
.end method

.method public setDozeScreenBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 759
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 760
    invoke-static {p1}, Landroid/service/dreams/DreamService;->clampAbsoluteBrightness(I)I

    move-result p1

    .line 762
    :cond_0
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    if-eq v0, p1, :cond_1

    .line 763
    iput p1, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    .line 764
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    .line 766
    :cond_1
    return-void
.end method

.method public setDozeScreenState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 710
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    if-eq v0, p1, :cond_0

    .line 711
    iput p1, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    .line 712
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    .line 714
    :cond_0
    return-void
.end method

.method public setFullscreen(Z)V
    .locals 2
    .param p1, "fullscreen"    # Z

    .prologue
    .line 510
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    if-eq v1, p1, :cond_0

    .line 511
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    .line 512
    const/16 v0, 0x400

    .line 513
    .local v0, "flag":I
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    if-eqz v1, :cond_1

    move v1, v0

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->applyWindowFlags(II)V

    .line 515
    .end local v0    # "flag":I
    :cond_0
    return-void

    .line 513
    .restart local v0    # "flag":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInteractive(Z)V
    .locals 0
    .param p1, "interactive"    # Z

    .prologue
    .line 464
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    .line 465
    return-void
.end method

.method public setLowProfile(Z)V
    .locals 2
    .param p1, "lowProfile"    # Z

    .prologue
    .line 485
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    if-eq v1, p1, :cond_0

    .line 486
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    .line 487
    const/4 v0, 0x1

    .line 488
    .local v0, "flag":I
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    if-eqz v1, :cond_1

    move v1, v0

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->applySystemUiVisibilityFlags(II)V

    .line 490
    .end local v0    # "flag":I
    :cond_0
    return-void

    .line 488
    .restart local v0    # "flag":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setScreenBright(Z)V
    .locals 2
    .param p1, "screenBright"    # Z

    .prologue
    .line 532
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    if-eq v1, p1, :cond_0

    .line 533
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    .line 534
    const/16 v0, 0x80

    .line 535
    .local v0, "flag":I
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    if-eqz v1, :cond_1

    move v1, v0

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->applyWindowFlags(II)V

    .line 537
    .end local v0    # "flag":I
    :cond_0
    return-void

    .line 535
    .restart local v0    # "flag":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWindowless(Z)V
    .locals 0
    .param p1, "windowless"    # Z

    .prologue
    .line 555
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    .line 556
    return-void
.end method

.method public startDozing()V
    .locals 1

    .prologue
    .line 611
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    if-nez v0, :cond_0

    .line 612
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    .line 613
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    .line 615
    :cond_0
    return-void
.end method

.method public stopDozing()V
    .locals 2

    .prologue
    .line 639
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    if-eqz v0, :cond_0

    .line 640
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    .line 642
    :try_start_0
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/service/dreams/IDreamManager;->stopDozing(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 643
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final wakeUp()V
    .locals 1

    .prologue
    .line 852
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamService;->wakeUp(Z)V

    .line 853
    return-void
.end method
