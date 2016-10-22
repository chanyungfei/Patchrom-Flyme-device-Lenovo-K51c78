.class public Lcom/android/server/AdbReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AdbReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    :try_start_0
    const-string v3, "otafull"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22
    .local v2, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .local v1, "file":Ljava/io/File;
    invoke-static {p1, v1}, Landroid/os/RecoverySystem;->installPackageFromAdb(Landroid/content/Context;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "path":Ljava/lang/String;
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
