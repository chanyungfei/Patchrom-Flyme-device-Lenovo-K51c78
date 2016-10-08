.class Lcom/mediatek/lowstorage/LowStorageHandle$1;
.super Landroid/content/BroadcastReceiver;
.source "LowStorageHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lowstorage/LowStorageHandle;->registerFilter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lowstorage/LowStorageHandle;


# direct methods
.method constructor <init>(Lcom/mediatek/lowstorage/LowStorageHandle;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/mediatek/lowstorage/LowStorageHandle$1;->this$0:Lcom/mediatek/lowstorage/LowStorageHandle;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 114
    const-string v4, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    const-wide/16 v2, 0x0

    .line 116
    .local v2, "freeKBStorage":J
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "dataFileStats":Landroid/os/StatFs;
    const-string v4, "LowStorageHandle"

    const-string v5, "receive the storage low intent"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x400

    div-long v2, v4, v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    const-wide/16 v4, 0x600

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 126
    const-string v4, "sys.lowstorage_flag"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .end local v0    # "dataFileStats":Landroid/os/StatFs;
    .end local v2    # "freeKBStorage":J
    :cond_0
    :goto_1
    return-void

    .line 122
    .restart local v0    # "dataFileStats":Landroid/os/StatFs;
    .restart local v2    # "freeKBStorage":J
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "LowStorageHandle"

    const-string v5, "IllegalArgumentException"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    .end local v0    # "dataFileStats":Landroid/os/StatFs;
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "freeKBStorage":J
    :cond_1
    const-string v4, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 129
    const-string v4, "LowStorageHandle"

    const-string v5, "get storage full intent "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v4, "sys.lowstorage_flag"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 131
    :cond_2
    const-string v4, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 132
    const-string v4, "LowStorageHandle"

    const-string v5, "get storage not full intent"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v4, "sys.lowstorage_flag"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 134
    :cond_3
    const-string v4, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    const-string v4, "LowStorageHandle"

    const-string v5, "receive the storage ok intent"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v4, "sys.lowstorage_flag"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
