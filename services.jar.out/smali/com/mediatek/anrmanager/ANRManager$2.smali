.class Lcom/mediatek/anrmanager/ANRManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/anrmanager/ANRManager;->registerDumpNBTReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lcom/mediatek/anrmanager/ANRManager;


# direct methods
.method constructor <init>(Lcom/mediatek/anrmanager/ANRManager;)V
    .locals 0

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/mediatek/anrmanager/ANRManager$2;->k:Lcom/mediatek/anrmanager/ANRManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1190
    const-string v0, "NBT_DUMP_PROCESS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1191
    if-eqz v0, :cond_3

    .line 1192
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v3

    .line 1193
    aput-object v0, v1, v3

    .line 1194
    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    .line 1195
    array-length v2, v1

    if-lez v2, :cond_2

    .line 1196
    const-string v0, "android.intent.action.ACTION_ADD_NBT_DUMP_PID"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1197
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager$2;->k:Lcom/mediatek/anrmanager/ANRManager;

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/mediatek/anrmanager/ANRManager;->checkNBTDumpPid(I)V

    .line 1207
    :cond_0
    :goto_0
    return-void

    .line 1198
    :cond_1
    const-string v0, "android.intent.action.ACTION_REMOVE_NBT_DUMP_PID"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1199
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager$2;->k:Lcom/mediatek/anrmanager/ANRManager;

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/mediatek/anrmanager/ANRManager;->removeNBTDumpPid(I)V

    goto :goto_0

    .line 1202
    :cond_2
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No process crosponds to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1205
    :cond_3
    const-string v0, "ANRManager"

    const-string v1, "Process name is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
