.class public Lcom/mediatek/amplus/PowerSavingUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/amplus/PowerSavingUtils$a;,
        Lcom/mediatek/amplus/PowerSavingUtils$b;
    }
.end annotation


# instance fields
.field private b:Z

.field private c:J

.field private d:Z

.field private e:Lcom/mediatek/amplus/PowerSavingUtils$a;

.field private f:Lcom/mediatek/amplus/PowerSavingUtils$b;

.field final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private final mContext:Landroid/content/Context;

.field private mIsEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v2, p0, Lcom/mediatek/amplus/PowerSavingUtils;->b:Z

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->c:J

    .line 41
    iput-boolean v2, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mIsEnabled:Z

    .line 42
    iput-boolean v2, p0, Lcom/mediatek/amplus/PowerSavingUtils;->d:Z

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->e:Lcom/mediatek/amplus/PowerSavingUtils$a;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->g:Ljava/util/ArrayList;

    .line 49
    iput v2, p0, Lcom/mediatek/amplus/PowerSavingUtils;->h:I

    .line 51
    iput-object p1, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mContext:Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Lcom/mediatek/amplus/PowerSavingUtils;->init()V

    .line 53
    return-void
.end method

.method private a(ILandroid/app/PendingIntent;JZ)J
    .locals 3

    .prologue
    .line 138
    if-nez p5, :cond_0

    .line 144
    :goto_0
    return-wide p3

    .line 141
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/amplus/PowerSavingUtils;->a(ILandroid/app/PendingIntent;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p5, :cond_1

    .line 142
    const-wide/32 v0, 0x493e0

    add-long/2addr p3, v0

    goto :goto_0

    .line 144
    :cond_1
    const-wide/16 v0, 0x0

    sub-long p3, v0, p3

    goto :goto_0
.end method

.method private a(JJJLandroid/app/PendingIntent;IZZ)J
    .locals 11

    .prologue
    .line 180
    const-wide/16 v4, 0x0

    cmp-long v4, p5, v4

    if-nez v4, :cond_2

    sub-long v4, p3, p1

    .line 183
    :goto_0
    const-wide/16 v6, 0x2710

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    .line 184
    const-wide/16 v4, 0x0

    .line 187
    :cond_0
    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    long-to-double v4, v4

    mul-double/2addr v4, v6

    double-to-long v4, v4

    add-long/2addr v4, p3

    .line 189
    iget v6, p0, Lcom/mediatek/amplus/PowerSavingUtils;->h:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_5

    .line 190
    if-nez p9, :cond_3

    .line 207
    :cond_1
    :goto_1
    return-wide v4

    :cond_2
    move-wide/from16 v4, p5

    .line 180
    goto :goto_0

    .line 193
    :cond_3
    const/4 v6, 0x1

    move/from16 v0, p8

    move-object/from16 v1, p7

    invoke-direct {p0, v0, v1, v6}, Lcom/mediatek/amplus/PowerSavingUtils;->a(ILandroid/app/PendingIntent;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 194
    sub-long v6, v4, p3

    const-wide/32 v8, 0x493e0

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 195
    const-wide/32 v4, 0x493e0

    add-long/2addr v4, p3

    goto :goto_1

    .line 200
    :cond_4
    const-wide/16 v6, 0x0

    sub-long v4, v6, v4

    goto :goto_1

    .line 203
    :cond_5
    move/from16 v0, p8

    move-object/from16 v1, p7

    move/from16 v2, p10

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/amplus/PowerSavingUtils;->a(ILandroid/app/PendingIntent;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    sub-long v6, v4, p3

    const-wide/32 v8, 0x493e0

    cmp-long v6, v6, v8

    if-gez v6, :cond_6

    .line 205
    const-wide/32 v4, 0x493e0

    add-long/2addr v4, p3

    goto :goto_1

    .line 207
    :cond_6
    const-wide/16 v6, 0x0

    sub-long v4, v6, v4

    goto :goto_1
.end method

.method static synthetic a(Lcom/mediatek/amplus/PowerSavingUtils;J)J
    .locals 1

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/mediatek/amplus/PowerSavingUtils;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcom/mediatek/amplus/PowerSavingUtils;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/alarmplus.config"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 69
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 70
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_1
    if-eqz v0, :cond_1

    .line 72
    iget-object v2, p0, Lcom/mediatek/amplus/PowerSavingUtils;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(ILandroid/app/PendingIntent;Z)Z
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 86
    .line 89
    invoke-virtual {p0}, Lcom/mediatek/amplus/PowerSavingUtils;->isPowerSavingStart()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v2

    .line 93
    :cond_1
    iget v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->h:I

    if-eq v0, v1, :cond_2

    .line 95
    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_0

    .line 101
    :cond_2
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    .line 102
    if-nez v3, :cond_3

    .line 103
    const-string v0, "AlarmManager"

    const-string v1, "isAlarmNeedAlign : packageName is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v1, v2

    .line 107
    :goto_1
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 108
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAlarmNeedAlign : packageName = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "is in whitelist"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 113
    :cond_5
    if-eqz p3, :cond_6

    .line 114
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 116
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 118
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    const-string v0, "android"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 119
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAlarmNeedAlign : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " skip!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    const-string v0, "AlarmManager"

    const-string v1, "isAlarmNeedAlign : packageName not fount"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 128
    :cond_6
    const-string v0, "AlarmManager"

    const-string v1, "isAlarmNeedAlign = true"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/mediatek/amplus/PowerSavingUtils;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/mediatek/amplus/PowerSavingUtils;->b:Z

    return p1
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 247
    .line 248
    iget-object v1, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "background_power_saving_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 250
    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mIsEnabled:Z

    .line 251
    return-void

    .line 250
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/mediatek/amplus/PowerSavingUtils;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/mediatek/amplus/PowerSavingUtils;->b()V

    return-void
.end method

.method static synthetic b(Lcom/mediatek/amplus/PowerSavingUtils;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/mediatek/amplus/PowerSavingUtils;->d:Z

    return p1
.end method

.method private init()V
    .locals 2

    .prologue
    new-instance v0, Lcom/mediatek/common/jpe/a;

    invoke-direct {v0}, Lcom/mediatek/common/jpe/a;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/common/jpe/a;->a()V

    .line 56
    invoke-direct {p0}, Lcom/mediatek/amplus/PowerSavingUtils;->a()V

    .line 57
    new-instance v0, Lcom/mediatek/amplus/PowerSavingUtils$b;

    invoke-direct {v0, p0}, Lcom/mediatek/amplus/PowerSavingUtils$b;-><init>(Lcom/mediatek/amplus/PowerSavingUtils;)V

    iput-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->f:Lcom/mediatek/amplus/PowerSavingUtils$b;

    .line 58
    new-instance v0, Lcom/mediatek/amplus/PowerSavingUtils$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/amplus/PowerSavingUtils$a;-><init>(Lcom/mediatek/amplus/PowerSavingUtils;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->e:Lcom/mediatek/amplus/PowerSavingUtils$a;

    .line 59
    return-void
.end method


# virtual methods
.method public getMaxTriggerTime(IJJJLandroid/app/PendingIntent;IZ)J
    .locals 14

    .prologue
    .line 231
    move/from16 v0, p9

    iput v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->h:I

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 236
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_0

    move-object v3, p0

    move v4, p1

    move-object/from16 v5, p8

    move-wide/from16 v6, p2

    move/from16 v8, p10

    .line 237
    invoke-direct/range {v3 .. v8}, Lcom/mediatek/amplus/PowerSavingUtils;->a(ILandroid/app/PendingIntent;JZ)J

    move-result-wide v2

    .line 243
    :goto_0
    return-wide v2

    .line 238
    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-nez v2, :cond_1

    .line 239
    const/4 v13, 0x0

    move-object v3, p0

    move-wide/from16 v6, p2

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move v11, p1

    move/from16 v12, p10

    invoke-direct/range {v3 .. v13}, Lcom/mediatek/amplus/PowerSavingUtils;->a(JJJLandroid/app/PendingIntent;IZZ)J

    move-result-wide v2

    goto :goto_0

    .line 241
    :cond_1
    add-long v2, p2, p4

    goto :goto_0
.end method

.method public isPowerSavingStart()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 150
    iget-boolean v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mIsEnabled:Z

    if-nez v0, :cond_0

    move v0, v2

    .line 173
    :goto_0
    return v0

    .line 154
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->d:Z

    if-eqz v0, :cond_1

    move v0, v2

    .line 155
    goto :goto_0

    .line 158
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->b:Z

    if-eqz v0, :cond_3

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 161
    iget v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->h:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 162
    const-wide/32 v0, 0x493e0

    .line 166
    :goto_1
    iget-wide v6, p0, Lcom/mediatek/amplus/PowerSavingUtils;->c:J

    sub-long/2addr v4, v6

    cmp-long v0, v4, v0

    if-gez v0, :cond_4

    move v0, v2

    .line 167
    goto :goto_0

    .line 164
    :cond_2
    const-wide/32 v0, 0xea60

    goto :goto_1

    :cond_3
    move v0, v2

    .line 170
    goto :goto_0

    .line 172
    :cond_4
    const-string v0, "AlarmManager"

    const-string v1, "isPowerSavingStart = true"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v0, 0x1

    goto :goto_0
.end method
