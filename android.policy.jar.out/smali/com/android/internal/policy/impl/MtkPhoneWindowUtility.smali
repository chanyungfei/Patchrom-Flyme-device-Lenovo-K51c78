.class public Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;
.super Ljava/lang/Object;
.source "MtkPhoneWindowUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MtkPhoneWindowUtility$1;,
        Lcom/android/internal/policy/impl/MtkPhoneWindowUtility$MtkPolicyHandler;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field static DEBUG_LAYOUT:Z = false

.field private static final MSG_DISABLE_FLOATING_MONITOR:I = 0x3e9

.field private static final MSG_ENABLE_FLOATING_MONITOR:I = 0x3e8

.field private static final MSG_MTK_POLICY:I = 0x3e8

.field static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field mContext:Landroid/content/Context;

.field mFloatingMonitorEventListener:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

.field mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mHandler:Landroid/os/Handler;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->DEBUG:Z

    .line 57
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->DEBUG_LAYOUT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility$MtkPolicyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility$MtkPolicyHandler;-><init>(Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;Lcom/android/internal/policy/impl/MtkPhoneWindowUtility$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->mHandler:Landroid/os/Handler;

    .line 102
    iput-object v1, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->mFloatingMonitorEventListener:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    .line 71
    iput-object p1, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 73
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->enableFloatingMonitor()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->disableFloatingMonitor()V

    return-void
.end method

.method private disableFloatingMonitor()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->mFloatingMonitorEventListener:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->mFloatingMonitorEventListener:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->mFloatingMonitorEventListener:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    .line 125
    :cond_0
    return-void
.end method

.method private enableFloatingMonitor()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->mFloatingMonitorEventListener:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    if-eqz v0, :cond_0

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->mFloatingMonitorEventListener:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->updatFocusWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 115
    return-void

    .line 109
    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->mFloatingMonitorEventListener:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->mFloatingMonitorEventListener:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    goto :goto_0
.end method


# virtual methods
.method updateFocus2FloatMonitor(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .param p1, "focusWindow"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 132
    iget-object v0, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isFullFloatWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public updateRect(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->mFloatingMonitorEventListener:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->mFloatingMonitorEventListener:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->updateMonitorRect(IIII)V

    .line 80
    :cond_0
    return-void
.end method
