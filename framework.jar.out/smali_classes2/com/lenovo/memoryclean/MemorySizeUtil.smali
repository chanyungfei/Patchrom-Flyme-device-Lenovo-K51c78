.class public Lcom/lenovo/memoryclean/MemorySizeUtil;
.super Ljava/lang/Object;
.source "MemorySizeUtil.java"


# static fields
.field static mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

.field private static totalMemory:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    .line 14
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    sput-object v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method public static getAvailMemory(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    sget-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 60
    invoke-static {p0}, Lcom/lenovo/memoryclean/MemorySizeUtil;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v0

    sput-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    .line 62
    :cond_0
    sget-object v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 63
    sget-object v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v0

    sget-object v2, Lcom/lenovo/memoryclean/MemorySizeUtil;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static getMemoryInfo(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 68
    .local v0, "am":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 69
    .local v1, "mi":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 70
    return-object v1
.end method

.method private static getTotalMemory(J)J
    .locals 8
    .param p0, "_totalMemory"    # J

    .prologue
    const-wide/16 v6, 0x200

    const-wide/16 v4, 0x400

    .line 46
    div-long v2, p0, v4

    div-long/2addr v2, v4

    sput-wide v2, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    .line 47
    sget-wide v2, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_1

    .line 48
    sput-wide v6, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    .line 55
    :cond_0
    :goto_0
    sget-wide v2, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    return-wide v2

    .line 50
    :cond_1
    sget-wide v2, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    rem-long v0, v2, v4

    .line 51
    .local v0, "mod":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 52
    sget-wide v2, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    sub-long/2addr v2, v0

    add-long/2addr v2, v4

    sput-wide v2, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    goto :goto_0
.end method

.method public static getTotalMemory(Landroid/content/Context;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    sget-wide v2, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 25
    invoke-static {p0}, Lcom/lenovo/memoryclean/MemorySizeUtil;->getMemoryInfo(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v0

    .line 26
    .local v0, "mi":Landroid/app/ActivityManager$MemoryInfo;
    iget-wide v2, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v2, v3}, Lcom/lenovo/memoryclean/MemorySizeUtil;->getTotalMemory(J)J

    move-result-wide v2

    sput-wide v2, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    .line 28
    .end local v0    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    :cond_0
    sget-wide v2, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    return-wide v2
.end method

.method public static getUsageMemory(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    sget-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 96
    invoke-static {p0}, Lcom/lenovo/memoryclean/MemorySizeUtil;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v0

    sput-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    .line 98
    :cond_0
    sget-object v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 99
    sget-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    sget-object v2, Lcom/lenovo/memoryclean/MemorySizeUtil;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object v2, Lcom/lenovo/memoryclean/MemorySizeUtil;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static getUsedMemory(Landroid/content/Context;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    sget-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 81
    invoke-static {p0}, Lcom/lenovo/memoryclean/MemorySizeUtil;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v0

    sput-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    .line 83
    :cond_0
    sget-object v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 84
    sget-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    sget-object v2, Lcom/lenovo/memoryclean/MemorySizeUtil;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v2

    sget-object v4, Lcom/lenovo/memoryclean/MemorySizeUtil;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method
