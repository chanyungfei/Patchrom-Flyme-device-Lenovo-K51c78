.class Lcom/android/server/display/WifiDisplayController$4;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->updateWfdInfo(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    .prologue
    .line 799
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 826
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set WFD info with reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$302(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 829
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 803
    const-string v0, "WifiDisplayController"

    const-string v1, "Successfully set WFD info."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$300(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 806
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayController;->access$302(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 807
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z
    invoke-static {v0, v3}, Lcom/android/server/display/WifiDisplayController;->access$402(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 808
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->reportFeatureState()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$500(Lcom/android/server/display/WifiDisplayController;)V

    .line 811
    const-string v0, "ro.mtk_wfd_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mAutoEnableWifi:Z
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$600(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    if-ne v0, v3, :cond_0

    .line 814
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    # setter for: Lcom/android/server/display/WifiDisplayController;->mAutoEnableWifi:Z
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayController;->access$602(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 815
    const-string v0, "WifiDisplayController"

    const-string v1, "scan after enable wifi automatically."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->updateScanState()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$700(Lcom/android/server/display/WifiDisplayController;)V

    .line 821
    :cond_1
    return-void
.end method
