.class Lcom/android/server/display/WifiDisplayController$35;
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


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    .prologue
    .line 3821
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3825
    const-string v0, "WifiDisplayController"

    const-string v1, "[Exclude Dialog] disconnect previous Wi-Fi P2p connection"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3828
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mIsConnected_OtherP2p:Z
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$10902(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 3830
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$2200(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$2100(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    new-instance v2, Lcom/android/server/display/WifiDisplayController$35$1;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$35$1;-><init>(Lcom/android/server/display/WifiDisplayController$35;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 3842
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->chooseNo_WifiDirectExcludeDialog()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$10800(Lcom/android/server/display/WifiDisplayController;)V

    .line 3844
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/display/WifiDisplayController;->mUserDecided:Z
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$10702(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 3845
    return-void
.end method
