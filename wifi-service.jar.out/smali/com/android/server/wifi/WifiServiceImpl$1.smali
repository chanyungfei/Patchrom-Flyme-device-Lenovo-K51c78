.class Lcom/android/server/wifi/WifiServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl;->checkAndStartWifi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 439
    const-string v0, "WifiService"

    const-string v1, "receive NORMAL_BOOT_ACTION for alarm boot"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/SXlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$200(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 441
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiServiceImpl;->checkAndStartWifi()V

    .line 442
    return-void
.end method
