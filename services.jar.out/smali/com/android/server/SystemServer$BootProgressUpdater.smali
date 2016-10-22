.class Lcom/android/server/SystemServer$BootProgressUpdater;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BootProgressUpdater"
.end annotation


# static fields
.field private static final BOOTPRE_SYSTEM_PROPERTY:Ljava/lang/String; = "sys.bootcomplete.percent"


# instance fields
.field private mCompleted:Z

.field final synthetic this$0:Lcom/android/server/SystemServer;


# direct methods
.method constructor <init>(Lcom/android/server/SystemServer;)V
    .locals 1

    .prologue
    .line 1659
    iput-object p1, p0, Lcom/android/server/SystemServer$BootProgressUpdater;->this$0:Lcom/android/server/SystemServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1661
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SystemServer$BootProgressUpdater;->mCompleted:Z

    return-void
.end method

.method private setBootProgress(I)V
    .locals 2
    .param p1, "percent"    # I

    .prologue
    .line 1672
    const-string v0, "sys.bootcomplete.percent"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    return-void
.end method


# virtual methods
.method public isCompleted()Z
    .locals 1

    .prologue
    .line 1664
    iget-boolean v0, p0, Lcom/android/server/SystemServer$BootProgressUpdater;->mCompleted:Z

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1677
    const/4 v0, 0x0

    .line 1678
    .local v0, "percent":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/SystemServer$BootProgressUpdater;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x60

    if-gt v0, v1, :cond_0

    .line 1679
    add-int/lit8 v0, v0, 0x4

    .line 1680
    invoke-direct {p0, v0}, Lcom/android/server/SystemServer$BootProgressUpdater;->setBootProgress(I)V

    .line 1682
    const-wide/16 v2, 0x9c4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1683
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1687
    :cond_0
    const/16 v1, 0x64

    invoke-direct {p0, v1}, Lcom/android/server/SystemServer$BootProgressUpdater;->setBootProgress(I)V

    .line 1688
    return-void
.end method

.method public setCompleted()V
    .locals 1

    .prologue
    .line 1668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/SystemServer$BootProgressUpdater;->mCompleted:Z

    .line 1669
    return-void
.end method
