.class Lcom/android/server/am/AppPcService$3;
.super Landroid/content/BroadcastReceiver;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppPcService;->handleSendOrderedBroadcastAsUser(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppPcService;

.field final synthetic val$param:Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcService;Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/android/server/am/AppPcService$3;->this$0:Lcom/android/server/am/AppPcService;

    iput-object p2, p0, Lcom/android/server/am/AppPcService$3;->val$param:Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 514
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/AppPcService$3;->getResultCode()I

    move-result v1

    .line 515
    .local v1, "resultCode":I
    const-string v2, "Security_AppPcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSendOrderedBroadcastAsUser resultCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v2, p0, Lcom/android/server/am/AppPcService$3;->val$param:Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;

    # getter for: Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mResultCallback:Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;
    invoke-static {v2}, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->access$400(Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;->onReceive(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    .end local v1    # "resultCode":I
    :goto_0
    return-void

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Security_AppPcService"

    const-string v3, "handleSendOrderedBroadcastAsUser resultReceiver error="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
