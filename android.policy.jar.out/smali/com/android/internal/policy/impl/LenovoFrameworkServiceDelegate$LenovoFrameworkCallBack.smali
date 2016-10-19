.class final Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$LenovoFrameworkCallBack;
.super Lcom/android/internal/policy/ILenovoFrameworkCallBack$Stub;
.source "LenovoFrameworkServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LenovoFrameworkCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$LenovoFrameworkCallBack;->this$0:Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;

    invoke-direct {p0}, Lcom/android/internal/policy/ILenovoFrameworkCallBack$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$1;

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$LenovoFrameworkCallBack;-><init>(Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;)V

    return-void
.end method


# virtual methods
.method public onShown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 271
    const-string v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string v1, "**** onShown  CALLED ****"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$LenovoFrameworkCallBack;->this$0:Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;

    # getter for: Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mShowListener:Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$ShowListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->access$300(Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;)Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$ShowListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$LenovoFrameworkCallBack;->this$0:Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;

    # getter for: Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mShowListener:Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$ShowListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->access$300(Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;)Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$ShowListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$ShowListener;->onShown()V

    .line 275
    :cond_0
    return-void
.end method

.method public setTpdStatus(Z)V
    .locals 2
    .param p1, "isOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 285
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "do not support now"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
