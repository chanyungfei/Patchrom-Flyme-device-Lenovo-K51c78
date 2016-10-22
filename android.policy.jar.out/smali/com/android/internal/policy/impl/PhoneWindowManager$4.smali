.class Lcom/android/internal/policy/impl/PhoneWindowManager$4;
.super Landroid/os/UEventObserver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 852
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 855
    const-string v2, "ro.mtk_smartbook_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMI:Lcom/mediatek/hdmi/IMtkHdmiManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1100(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/mediatek/hdmi/IMtkHdmiManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 856
    const/4 v1, 0x0

    .line 858
    .local v1, "type":I
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMI:Lcom/mediatek/hdmi/IMtkHdmiManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1100(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/mediatek/hdmi/IMtkHdmiManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/hdmi/IMtkHdmiManager;->getDisplayType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 862
    :goto_0
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUEvent, HDMI type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " event:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mSmartBookPlugIn:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1200(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 864
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string v3, "1"

    const-string v4, "SWITCH_STATE"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->notifySmartBookState(Z)V

    .line 867
    .end local v1    # "type":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v3, "1"

    const-string v4, "SWITCH_STATE"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setHdmiPlugged(Z)V

    .line 868
    return-void

    .line 859
    .restart local v1    # "type":I
    :catch_0
    move-exception v0

    .line 860
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "mHDMI.getDisplayType error"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
