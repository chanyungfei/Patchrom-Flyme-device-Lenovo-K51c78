.class Lcom/android/internal/os/storage/ExternalStorageFormatter$4;
.super Ljava/lang/Thread;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

.field final synthetic val$extStoragePath:Ljava/lang/String;

.field final synthetic val$mountService:Landroid/os/storage/IMountService;


# direct methods
.method constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Landroid/os/storage/IMountService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iput-object p2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->val$mountService:Landroid/os/storage/IMountService;

    iput-object p3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->val$extStoragePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/high16 v7, 0x10000000

    .line 290
    const/4 v3, 0x0

    .line 291
    .local v3, "success":Z
    const/4 v2, 0x0

    .line 293
    .local v2, "ret":I
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->val$extStoragePath:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 294
    const/4 v3, 0x1

    .line 304
    :goto_0
    if-eqz v3, :cond_0

    .line 305
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z
    invoke-static {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$200(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 306
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 308
    const-string v4, "android.intent.extra.REASON"

    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReason:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$300(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v4, v1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 311
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    .line 334
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "ExternalStorageFormatter"

    const-string v5, "Failed formatting volume "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/internal/os/storage/ExternalStorageFormatter$4$1;

    invoke-direct {v5, p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$4$1;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter$4;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 317
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    const/4 v5, 0x1

    # setter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatDone:Z
    invoke-static {v4, v5}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$002(Lcom/android/internal/os/storage/ExternalStorageFormatter;Z)Z

    .line 318
    const-string v4, "ExternalStorageFormatter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAlwaysReset = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z
    invoke-static {v6}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$400(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z
    invoke-static {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$400(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 320
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 322
    const-string v4, "android.intent.extra.REASON"

    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReason:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$300(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v4, v1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 333
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_2
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto :goto_1

    .line 324
    :cond_1
    if-nez v2, :cond_2

    .line 326
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;->val$extStoragePath:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 327
    :catch_1
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "ExternalStorageFormatter"

    const-string v5, "Failed talking with mount service"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 331
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v4, "ExternalStorageFormatter"

    const-string v5, "format fail, not mount!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
