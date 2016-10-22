.class Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$1;
.super Ljava/lang/Object;
.source "LenovoFrameworkServiceDelegate.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;

    new-instance v1, Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;

    invoke-static {p2}, Lcom/android/internal/policy/ILenovoFrameworkService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/ILenovoFrameworkService;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;-><init>(Lcom/android/internal/policy/ILenovoFrameworkService;)V

    iput-object v1, v0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;

    .line 237
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;

    new-instance v1, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$LenovoFrameworkCallBack;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$LenovoFrameworkCallBack;-><init>(Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$1;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;->setLenovoFrameworkCallback(Lcom/android/internal/policy/ILenovoFrameworkCallBack;)V

    .line 238
    const-string v0, "LenovoGesture_FrameworkServiceDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LenovoFrameworkDelegate.this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",*** LenovoFrameworkService connected!) gestureframeworkservice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;

    iget-object v2, v2, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 243
    const-string v0, "LenovoGesture_FrameworkServiceDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** LenovoFrameworkService disconnected!) + , isEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->isEnabled:Z
    invoke-static {}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->access$100()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;

    .line 247
    # getter for: Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->isEnabled:Z
    invoke-static {}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;

    # getter for: Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->access$200(Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 250
    :cond_0
    return-void
.end method
