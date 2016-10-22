.class public Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/anrmanager/ANRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnrMonitorHandler"
.end annotation


# instance fields
.field final synthetic k:Lcom/mediatek/anrmanager/ANRManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/anrmanager/ANRManager;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->k:Lcom/mediatek/anrmanager/ANRManager;

    .line 188
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 189
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 194
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 248
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 198
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/anrmanager/ANRManager$IAnrBroadcastQueue;

    .line 199
    if-eqz v0, :cond_1

    .line 200
    invoke-interface {v0}, Lcom/mediatek/anrmanager/ANRManager$IAnrBroadcastQueue;->getOrderedBroadcastsPid()I

    move-result v0

    .line 201
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "monitor Broadcast ANR process ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v1, p0, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->k:Lcom/mediatek/anrmanager/ANRManager;

    invoke-static {v1, v0}, Lcom/mediatek/anrmanager/ANRManager;->a(Lcom/mediatek/anrmanager/ANRManager;I)V

    goto :goto_0

    .line 204
    :cond_1
    const-string v0, "ANRManager"

    const-string v1, "monitor Broadcast ANR process failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 211
    :pswitch_2
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->b()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;->getProcessRecordPid(Ljava/lang/Object;)I

    move-result v0

    .line 212
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "monitor Service ANR process ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v1, p0, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->k:Lcom/mediatek/anrmanager/ANRManager;

    invoke-static {v1, v0}, Lcom/mediatek/anrmanager/ANRManager;->a(Lcom/mediatek/anrmanager/ANRManager;I)V

    goto :goto_0

    .line 218
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;

    .line 219
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "START_ANR_DUMP_MSG: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v1, p0, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->k:Lcom/mediatek/anrmanager/ANRManager;

    iget-object v1, v1, Lcom/mediatek/anrmanager/ANRManager;->mAnrDumpMgr:Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;

    invoke-virtual {v1, v0}, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->dumpAnrDebugInfo(Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;)V

    goto/16 :goto_0

    .line 226
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 227
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Monitor KeyDispatching ANR process ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v1, p0, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->k:Lcom/mediatek/anrmanager/ANRManager;

    invoke-static {v1, v0}, Lcom/mediatek/anrmanager/ANRManager;->a(Lcom/mediatek/anrmanager/ANRManager;I)V

    goto/16 :goto_0

    .line 234
    :pswitch_5
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->k:Lcom/mediatek/anrmanager/ANRManager;

    invoke-virtual {v0}, Lcom/mediatek/anrmanager/ANRManager;->updateProcessStats()V

    goto/16 :goto_0

    .line 238
    :pswitch_6
    const-string v0, "dalvik.vm.stack-trace-file"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    const-string v1, "/data/anr/traces_"

    invoke-static {v2, v0, v1}, Lcom/mediatek/anrmanager/ANRManager;->renameFiles(ZLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 243
    const-string v0, "/data/anr/native1.txt"

    const-string v1, "/data/anr/native1_"

    invoke-static {v2, v0, v1}, Lcom/mediatek/anrmanager/ANRManager;->renameFiles(ZLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 244
    const-string v0, "/data/anr/native2.txt"

    const-string v1, "/data/anr/native2_"

    invoke-static {v2, v0, v1}, Lcom/mediatek/anrmanager/ANRManager;->renameFiles(ZLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 245
    const-string v0, "/data/anr/native3.txt"

    const-string v1, "/data/anr/native3_"

    invoke-static {v2, v0, v1}, Lcom/mediatek/anrmanager/ANRManager;->renameFiles(ZLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    goto/16 :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
