.class Lcom/android/server/display/WifiDisplayController$49;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->prepareDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 4036
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$49;->this$0:Lcom/android/server/display/WifiDisplayController;

    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController$49;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    .line 4040
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$49;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 4041
    .local v0, "checked":Z
    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Change resolution]: ok. checked:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4044
    if-eqz v0, :cond_2

    .line 4046
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$49;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$8300(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_change_resolution_remind"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4059
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$49;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$1400(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$49;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$2600(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4061
    :cond_0
    const-string v1, "WifiDisplayController"

    const-string v2, "-- reconnect for resolution change --"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4063
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$49;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->disconnect()V
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$3700(Lcom/android/server/display/WifiDisplayController;)V

    .line 4064
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$49;->this$0:Lcom/android/server/display/WifiDisplayController;

    # setter for: Lcom/android/server/display/WifiDisplayController;->mReconnectForResolutionChange:Z
    invoke-static {v1, v4}, Lcom/android/server/display/WifiDisplayController;->access$11402(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 4066
    :cond_1
    return-void

    .line 4052
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$49;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$8300(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_change_resolution_remind"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
