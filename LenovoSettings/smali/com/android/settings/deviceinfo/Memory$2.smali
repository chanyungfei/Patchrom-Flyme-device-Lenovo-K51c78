.class Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$2;
.super Ljava/lang/Object;
.source "Memory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->showFormatDialog(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

.field final synthetic val$category:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$2;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$2;->val$category:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 385
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$2;->val$category:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->getIntentForFormat()Landroid/content/Intent;

    move-result-object v1

    .line 386
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "MemorySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showFormatDialog intent: = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    if-eqz v1, :cond_0

    .line 389
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 391
    :try_start_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$2;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    invoke-virtual {v2, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 404
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    const-string v2, "MemorySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No activity found for intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 396
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$2;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c03e7

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
