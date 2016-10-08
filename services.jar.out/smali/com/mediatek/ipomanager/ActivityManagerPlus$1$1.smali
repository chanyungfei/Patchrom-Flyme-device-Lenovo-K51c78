.class Lcom/mediatek/ipomanager/ActivityManagerPlus$1$1;
.super Ljava/lang/Object;
.source "ActivityManagerPlus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final MAX_RADIO_ON_TIME:J = 0x2bf20L


# instance fields
.field final synthetic this$1:Lcom/mediatek/ipomanager/ActivityManagerPlus$1;

.field final synthetic val$stMgr:Lcom/android/internal/app/ShutdownManager;


# direct methods
.method constructor <init>(Lcom/mediatek/ipomanager/ActivityManagerPlus$1;Lcom/android/internal/app/ShutdownManager;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1$1;->this$1:Lcom/mediatek/ipomanager/ActivityManagerPlus$1;

    iput-object p2, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1$1;->val$stMgr:Lcom/android/internal/app/ShutdownManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const-wide/32 v12, 0x2bf20

    const/4 v6, 0x1

    const/4 v2, 0x0

    const-wide/16 v10, 0x64

    .line 267
    const-string v7, "ro.mtk_dt_support"

    invoke-static {v7, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v6, :cond_0

    const-string v7, "ro.mtk_svlte_support"

    invoke-static {v7, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_1

    :cond_0
    move v2, v6

    .line 270
    .local v2, "isDualTalkMode":Z
    :cond_1
    const/16 v3, 0x64

    .line 273
    .local v3, "period":I
    const-wide/16 v0, 0x0

    .line 278
    .local v0, "i":J
    :cond_2
    const-string v6, "ril.ipo.radiooff"

    const-string v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, "radioOff":Ljava/lang/String;
    const-string v6, "ril.ipo.radiooff.2"

    const-string v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 281
    .local v5, "radioOff2":Ljava/lang/String;
    const-string v6, "ActivityManagerPlus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DualTalkMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " radiooff="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " radiooff2="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    if-nez v2, :cond_3

    const-string v6, "0"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    if-eqz v2, :cond_6

    const-string v6, "0"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "0"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 289
    :cond_4
    const-string v6, "ActivityManagerPlus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "radio on for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    mul-long v8, v10, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :goto_0
    mul-long v6, v10, v0

    cmp-long v6, v6, v12

    if-ltz v6, :cond_5

    .line 302
    const-string v6, "ActivityManagerPlus"

    const-string v7, "timeout to wait radio on"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_5
    iget-object v6, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1$1;->val$stMgr:Lcom/android/internal/app/ShutdownManager;

    iget-object v7, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1$1;->this$1:Lcom/mediatek/ipomanager/ActivityManagerPlus$1;

    iget-object v7, v7, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    # getter for: Lcom/mediatek/ipomanager/ActivityManagerPlus;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$000(Lcom/mediatek/ipomanager/ActivityManagerPlus;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/app/ShutdownManager;->prebootKillProcess(Landroid/content/Context;)V

    .line 306
    return-void

    .line 294
    :cond_6
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 295
    const-string v6, "ActivityManagerPlus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " wait radio on for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    mul-long v8, v10, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_1
    mul-long v6, v10, v0

    cmp-long v6, v6, v12

    if-ltz v6, :cond_2

    goto :goto_0

    .line 296
    :catch_0
    move-exception v6

    goto :goto_1
.end method
