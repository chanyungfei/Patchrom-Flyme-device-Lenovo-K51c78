.class public Lcom/mediatek/recovery/EventLogger$LogDirObserver;
.super Landroid/os/FileObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/recovery/EventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogDirObserver"
.end annotation


# instance fields
.field private m:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 60
    iput-boolean p3, p0, Lcom/mediatek/recovery/EventLogger$LogDirObserver;->m:Z

    .line 61
    return-void
.end method

.method private static a(Ljava/io/File;)J
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    .line 82
    if-nez p0, :cond_1

    .line 98
    :cond_0
    return-wide v0

    .line 85
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 90
    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 91
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 92
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 90
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 94
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 95
    invoke-static {v5}, Lcom/mediatek/recovery/EventLogger$LogDirObserver;->a(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    goto :goto_1
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 4

    .prologue
    const-wide/32 v2, 0x1400000

    .line 65
    and-int/lit16 v0, p1, 0x88

    if-eqz v0, :cond_0

    .line 66
    iget-boolean v0, p0, Lcom/mediatek/recovery/EventLogger$LogDirObserver;->m:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mediatek/recovery/EventLogger;->a()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/recovery/EventLogger$LogDirObserver;->a(Ljava/io/File;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 68
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/recovery/EventLogger;->a(Z)I

    move-result v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/mediatek/recovery/EventLogger;->a()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/recovery/EventLogger$LogDirObserver;->m:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/recovery/EventLogger;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 74
    # getter for: Lcom/mediatek/recovery/EventLogger;->f:Ljava/io/File;
    invoke-static {}, Lcom/mediatek/recovery/EventLogger;->access$200()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 75
    invoke-static {}, Lcom/mediatek/recovery/EventLogger;->b()Ljava/io/File;

    move-result-object v0

    # getter for: Lcom/mediatek/recovery/EventLogger;->f:Ljava/io/File;
    invoke-static {}, Lcom/mediatek/recovery/EventLogger;->access$200()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 76
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/recovery/EventLogger;->a(J)J

    goto :goto_0
.end method
