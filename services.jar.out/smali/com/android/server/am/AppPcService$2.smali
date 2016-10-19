.class Lcom/android/server/am/AppPcService$2;
.super Landroid/content/BroadcastReceiver;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppPcService;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;ILjava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppPcService;

.field final synthetic val$resultCallback:Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcService;Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/server/am/AppPcService$2;->this$0:Lcom/android/server/am/AppPcService;

    iput-object p2, p0, Lcom/android/server/am/AppPcService$2;->val$resultCallback:Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 492
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/AppPcService$2;->getResultCode()I

    move-result v1

    .line 493
    .local v1, "resultCode":I
    const-string v2, "Security_AppPcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendOrderedBroadcastAsUser resultCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v2, p0, Lcom/android/server/am/AppPcService$2;->val$resultCallback:Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;->onReceive(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    .end local v1    # "resultCode":I
    :goto_0
    return-void

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Security_AppPcService"

    const-string v3, "sendOrderedBroadcastAsUser resultReceiver error="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
