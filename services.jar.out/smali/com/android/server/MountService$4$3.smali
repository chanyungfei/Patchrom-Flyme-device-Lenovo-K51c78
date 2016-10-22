.class Lcom/android/server/MountService$4$3;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$4;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$4;)V
    .locals 0

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/android/server/MountService$4$3;->this$1:Lcom/android/server/MountService$4;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 1137
    # getter for: Lcom/android/server/MountService;->OMADM_SYNC_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/MountService;->access$3600()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 1138
    :try_start_0
    iget-object v8, p0, Lcom/android/server/MountService$4$3;->this$1:Lcom/android/server/MountService$4;

    iget-object v8, v8, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/MountService;->access$3100(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1139
    .local v3, "length":I
    const/4 v5, 0x0

    .line 1140
    .local v5, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_5

    .line 1141
    iget-object v8, p0, Lcom/android/server/MountService$4$3;->this$1:Lcom/android/server/MountService$4;

    iget-object v8, v8, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/MountService;->access$3100(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/storage/StorageVolume;

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 1143
    :try_start_1
    iget-object v8, p0, Lcom/android/server/MountService$4$3;->this$1:Lcom/android/server/MountService$4;

    iget-object v8, v8, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v8, v5}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1144
    .local v4, "mCurState":Ljava/lang/String;
    const-string v8, "MountService"

    invoke-static {v8, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    const-string v8, "mounted"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1146
    const-string v8, "ro.mtk_2sdcard_swap"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "1"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1147
    iget-object v8, p0, Lcom/android/server/MountService$4$3;->this$1:Lcom/android/server/MountService$4;

    iget-object v8, v8, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v8, v5, v10, v11}, Lcom/android/server/MountService;->unmountVolumeNotSwap(Ljava/lang/String;ZZ)V

    .line 1152
    :goto_1
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    const/16 v8, 0x14

    if-ge v2, v8, :cond_0

    .line 1153
    const-wide/16 v10, 0x3e8

    invoke-static {v10, v11}, Lcom/android/server/MountService$4$3;->sleep(J)V

    .line 1154
    iget-object v8, p0, Lcom/android/server/MountService$4$3;->this$1:Lcom/android/server/MountService$4;

    iget-object v8, v8, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v8, v5}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1155
    const-string v8, "unmounted"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1156
    const-string v8, "MountService"

    const-string v10, "Unmount Succeeded!"

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    .end local v2    # "j":I
    :cond_0
    :goto_3
    iget-object v8, p0, Lcom/android/server/MountService$4$3;->this$1:Lcom/android/server/MountService$4;

    iget-object v8, v8, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v8, v5}, Lcom/android/server/MountService;->formatVolume(Ljava/lang/String;)I

    move-result v6

    .line 1166
    .local v6, "ret":I
    if-nez v6, :cond_4

    .line 1167
    const-string v8, "MountService"

    const-string v10, "SD format Succeed!"

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    .end local v4    # "mCurState":Ljava/lang/String;
    .end local v6    # "ret":I
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1149
    .restart local v4    # "mCurState":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/android/server/MountService$4$3;->this$1:Lcom/android/server/MountService$4;

    iget-object v8, v8, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v8, v5, v10, v11}, Lcom/android/server/MountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1171
    .end local v4    # "mCurState":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1172
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v8, "MountService"

    const-string v10, "SD format exception"

    invoke-static {v8, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1181
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "i":I
    .end local v3    # "length":I
    .end local v5    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 1152
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    .restart local v3    # "length":I
    .restart local v4    # "mCurState":Ljava/lang/String;
    .restart local v5    # "path":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1161
    .end local v2    # "j":I
    :cond_3
    :try_start_3
    const-string v8, "shared"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1162
    iget-object v8, p0, Lcom/android/server/MountService$4$3;->this$1:Lcom/android/server/MountService$4;

    iget-object v8, v8, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    const-string v10, "ums"

    const/4 v11, 0x0

    # invokes: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v8, v5, v10, v11}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 1173
    .end local v4    # "mCurState":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 1174
    .local v7, "x":Ljava/lang/IllegalArgumentException;
    :try_start_4
    const-string v8, "MountService"

    const-string v10, "SD format exception"

    invoke-static {v8, v10, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 1169
    .end local v7    # "x":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "mCurState":Ljava/lang/String;
    .restart local v6    # "ret":I
    :cond_4
    :try_start_5
    const-string v8, "MountService"

    const-string v10, "SD format Failed!"

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 1175
    .end local v4    # "mCurState":Ljava/lang/String;
    .end local v6    # "ret":I
    :catch_2
    move-exception v7

    .line 1176
    .local v7, "x":Ljava/lang/SecurityException;
    :try_start_6
    const-string v8, "MountService"

    const-string v10, "SD format exception"

    invoke-static {v8, v10, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1177
    .end local v7    # "x":Ljava/lang/SecurityException;
    :catch_3
    move-exception v0

    .line 1178
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v8, "MountService"

    const-string v10, "SD format exception"

    invoke-static {v8, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1181
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_5
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1182
    return-void
.end method
