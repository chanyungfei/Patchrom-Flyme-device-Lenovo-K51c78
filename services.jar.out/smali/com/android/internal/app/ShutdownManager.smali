.class public final Lcom/android/internal/app/ShutdownManager;
.super Ljava/lang/Object;
.source "ShutdownManager.java"


# static fields
.field private static final IPOWiFiEnable:Ljava/lang/String; = "persist.sys.ipo.wifi"

.field private static final TAG:Ljava/lang/String; = "ShutdownManager"

.field private static airplaneModeState:I

.field private static doAudioUnmute:Z

.field private static isBSPPackage:Z

.field static final mHardCodePrebootKillList:[Ljava/lang/String;

.field static final mHardCodeShutdownList:[Ljava/lang/String;

.field private static mMerged:Z

.field private static mPowerManager:Landroid/os/PowerManager;

.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/internal/app/ShutdownManager;

.field static sPrebootKillList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sShutdownWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sdState:I

.field private static setMusicMuted:Z

.field private static wifiState:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 118
    sput-boolean v8, Lcom/android/internal/app/ShutdownManager;->doAudioUnmute:Z

    .line 119
    sput-boolean v8, Lcom/android/internal/app/ShutdownManager;->setMusicMuted:Z

    .line 121
    sput-boolean v8, Lcom/android/internal/app/ShutdownManager;->mMerged:Z

    .line 122
    sput-boolean v8, Lcom/android/internal/app/ShutdownManager;->isBSPPackage:Z

    .line 124
    sput-object v9, Lcom/android/internal/app/ShutdownManager;->sInstance:Lcom/android/internal/app/ShutdownManager;

    .line 131
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/internal/app/ShutdownManager;->sShutdownWhiteList:Ljava/util/ArrayList;

    .line 133
    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "system"

    aput-object v5, v4, v8

    const-string v5, "com.mediatek.bluetooth"

    aput-object v5, v4, v7

    const/4 v5, 0x2

    const-string v6, "com.android.phone"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "android.process.acore"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "com.android.wallpaper"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "com.android.systemui"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "com.mediatek.mobilelog"

    aput-object v6, v4, v5

    sput-object v4, Lcom/android/internal/app/ShutdownManager;->mHardCodeShutdownList:[Ljava/lang/String;

    .line 143
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/internal/app/ShutdownManager;->sPrebootKillList:Ljava/util/ArrayList;

    .line 144
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "com.android.phone"

    aput-object v5, v4, v8

    sput-object v4, Lcom/android/internal/app/ShutdownManager;->mHardCodePrebootKillList:[Ljava/lang/String;

    .line 158
    const-string v4, "ShutdownManager"

    const-string v5, "ShutdownManager constructor is called"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/android/internal/app/ShutdownManager;->mHardCodeShutdownList:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 160
    sget-object v4, Lcom/android/internal/app/ShutdownManager;->sShutdownWhiteList:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/internal/app/ShutdownManager;->mHardCodeShutdownList:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_0
    const-string v4, "persist.ipo.shutdown.process.wl"

    invoke-static {v4, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "processList":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 165
    const-string v4, "ShutdownManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Process whitelist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v2, "processArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "/"

    invoke-static {v4, v3, v2}, Lcom/android/internal/app/ShutdownManager;->parseStringIntoArrary(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 169
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 170
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 171
    .local v1, "item":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 172
    const-string v4, "!"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_2

    sget-object v4, Lcom/android/internal/app/ShutdownManager;->sShutdownWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 174
    sget-object v4, Lcom/android/internal/app/ShutdownManager;->sShutdownWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 169
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    :cond_2
    const-string v4, "!"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "^\\s*$"

    invoke-virtual {v1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/android/internal/app/ShutdownManager;->sShutdownWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 177
    sget-object v4, Lcom/android/internal/app/ShutdownManager;->sShutdownWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 184
    .end local v1    # "item":Ljava/lang/String;
    .end local v2    # "processArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const/4 v0, 0x0

    :goto_3
    sget-object v4, Lcom/android/internal/app/ShutdownManager;->mHardCodePrebootKillList:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_4

    .line 185
    sget-object v4, Lcom/android/internal/app/ShutdownManager;->sPrebootKillList:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/internal/app/ShutdownManager;->mHardCodePrebootKillList:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 187
    :cond_4
    const-string v4, "persist.ipo.prebootkill.list"

    invoke-static {v4, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 188
    if-eqz v3, :cond_7

    .line 189
    const-string v4, "ShutdownManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Process PrebootKillList: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .restart local v2    # "processArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "/"

    invoke-static {v4, v3, v2}, Lcom/android/internal/app/ShutdownManager;->parseStringIntoArrary(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 193
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 194
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 195
    .restart local v1    # "item":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 196
    const-string v4, "!"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_6

    sget-object v4, Lcom/android/internal/app/ShutdownManager;->sPrebootKillList:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 198
    sget-object v4, Lcom/android/internal/app/ShutdownManager;->sPrebootKillList:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 193
    :cond_5
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 199
    :cond_6
    const-string v4, "!"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "^\\s*$"

    invoke-virtual {v1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Lcom/android/internal/app/ShutdownManager;->sPrebootKillList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 201
    sget-object v4, Lcom/android/internal/app/ShutdownManager;->sPrebootKillList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 206
    .end local v1    # "item":Ljava/lang/String;
    .end local v2    # "processArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    const-string v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/android/internal/app/ShutdownManager;->isBSPPackage:Z

    .line 207
    new-instance v4, Lcom/android/internal/app/ShutdownManager$1;

    invoke-direct {v4}, Lcom/android/internal/app/ShutdownManager$1;-><init>()V

    sput-object v4, Lcom/android/internal/app/ShutdownManager;->sHandler:Landroid/os/Handler;

    .line 208
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native GetMasterMute()I
.end method

.method public static native GetStreamMute(I)I
.end method

.method public static native SetMasterMute(Z)I
.end method

.method public static native SetStreamMute(IZ)I
.end method

.method public static addPrebootKillProcess(Ljava/lang/String;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 258
    sget-object v0, Lcom/android/internal/app/ShutdownManager;->sPrebootKillList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    const/4 v0, 0x0

    .line 263
    :goto_0
    return v0

    .line 261
    :cond_0
    sget-object v0, Lcom/android/internal/app/ShutdownManager;->sPrebootKillList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    const-string v0, "ShutdownManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add PrebootKill: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static addShutdownWhiteList(Ljava/lang/String;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 217
    sget-object v0, Lcom/android/internal/app/ShutdownManager;->sShutdownWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const-string v0, "ShutdownManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicated whitelist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x0

    .line 223
    :goto_0
    return v0

    .line 221
    :cond_0
    sget-object v0, Lcom/android/internal/app/ShutdownManager;->sShutdownWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    const-string v0, "ShutdownManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add whitelist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static copyFileTo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "in_filepath"    # Ljava/lang/String;
    .param p1, "out_filepath"    # Ljava/lang/String;

    .prologue
    .line 735
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 738
    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 739
    .local v5, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 742
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 743
    .local v3, "in_file":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 745
    .local v7, "out_file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 746
    const-string v8, "ShutdownManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not exist..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    .line 749
    :cond_2
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 750
    .local v2, "in":Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 751
    .local v6, "out":Ljava/io/FileOutputStream;
    const/16 v8, 0x1400

    new-array v0, v8, [B

    .line 753
    .local v0, "buf":[B
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .local v4, "length":I
    if-lez v4, :cond_3

    .line 754
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 759
    .end local v0    # "buf":[B
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v3    # "in_file":Ljava/io/File;
    .end local v4    # "length":I
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .end local v7    # "out_file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 760
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v8, "ShutdownManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file not found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 764
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    .line 756
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "buf":[B
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in_file":Ljava/io/File;
    .restart local v4    # "length":I
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "out_file":Ljava/io/File;
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 757
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 764
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    .line 761
    .end local v0    # "buf":[B
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v3    # "in_file":Ljava/io/File;
    .end local v4    # "length":I
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .end local v7    # "out_file":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 762
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    const-string v8, "ShutdownManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IO exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 764
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/16 :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v8
.end method

.method public static getInstance()Lcom/android/internal/app/ShutdownManager;
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lcom/android/internal/app/ShutdownManager;->sInstance:Lcom/android/internal/app/ShutdownManager;

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Lcom/android/internal/app/ShutdownManager;

    invoke-direct {v0}, Lcom/android/internal/app/ShutdownManager;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownManager;->sInstance:Lcom/android/internal/app/ShutdownManager;

    .line 294
    :cond_0
    sget-object v0, Lcom/android/internal/app/ShutdownManager;->sInstance:Lcom/android/internal/app/ShutdownManager;

    return-object v0
.end method

.method public static inShutdownWhiteList(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 248
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/internal/app/ShutdownManager;->sShutdownWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private muteSystem(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 298
    sget-boolean v0, Lcom/android/internal/app/ShutdownManager;->isBSPPackage:Z

    if-nez v0, :cond_0

    .line 299
    invoke-static {}, Lcom/android/internal/app/ShutdownManager;->GetMasterMute()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 300
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/app/ShutdownManager;->doAudioUnmute:Z

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    sput-boolean v1, Lcom/android/internal/app/ShutdownManager;->doAudioUnmute:Z

    .line 303
    invoke-static {v1}, Lcom/android/internal/app/ShutdownManager;->SetMasterMute(Z)I

    goto :goto_0
.end method

.method private static parseStringIntoArrary(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "split"    # Ljava/lang/String;
    .param p1, "strings"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "str":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 153
    aget-object v2, v1, v0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    return-void
.end method

.method public static prebootKillProcessListSize()I
    .locals 1

    .prologue
    .line 366
    sget-object v0, Lcom/android/internal/app/ShutdownManager;->sPrebootKillList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static removePrebootKillProcess(Ljava/lang/String;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 273
    sget-object v0, Lcom/android/internal/app/ShutdownManager;->sPrebootKillList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    sget-object v0, Lcom/android/internal/app/ShutdownManager;->sPrebootKillList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 275
    const-string v0, "ShutdownManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove PrebootKill: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v0, 0x1

    .line 278
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeShutdownWhiteList(Ljava/lang/String;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 233
    sget-object v0, Lcom/android/internal/app/ShutdownManager;->sShutdownWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    sget-object v0, Lcom/android/internal/app/ShutdownManager;->sShutdownWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 235
    const-string v0, "ShutdownManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove whitelist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v0, 0x1

    .line 238
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startFtraceCapture()V
    .locals 4

    .prologue
    .line 809
    const-string v1, "sys.shutdown.ftrace"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 810
    const-string v1, "ShutdownManager"

    const-string v2, "shutdown ftrace enabled!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    const-string v1, "sys.shutdown.ftrace.size"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 812
    .local v0, "buffer_size_kb":Ljava/lang/String;
    const-string v1, "^\\d+$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 813
    const-string v1, "ShutdownManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buffer_size_kb = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :goto_0
    const-string v1, "/sys/kernel/debug/tracing/buffer_size_kb"

    invoke-static {v1, v0}, Lcom/android/internal/app/ShutdownManager;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const-string v1, "/sys/kernel/debug/tracing/trace"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/android/internal/app/ShutdownManager;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    :cond_0
    return-void

    .line 815
    :cond_1
    const-string v1, "ShutdownManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buffer_size_kb = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", restore to 11MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const-string v0, "11256"

    goto :goto_0
.end method

.method public static stopFtraceCapture()V
    .locals 2

    .prologue
    .line 799
    const-string v0, "sys.shutdown.ftrace"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    const-string v0, "ShutdownManager"

    const-string v1, "stop ftrace"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const-string v0, "/sys/kernel/debug/tracing/tracing_on"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownManager;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    const-string v0, "ShutdownManager"

    const-string v1, "saving ftrace to /data/misc/shutdown_ftrace.txt"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const-string v0, "/sys/kernel/debug/tracing/trace"

    const-string v1, "/data/misc/shutdown_ftrace.txt"

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownManager;->copyFileTo(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const-string v0, "ShutdownManager"

    const-string v1, "ftrace saving done, restart ftrace"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const-string v0, "/sys/kernel/debug/tracing/tracing_on"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownManager;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    :cond_0
    return-void
.end method

.method private unmuteSystem(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 309
    sget-boolean v0, Lcom/android/internal/app/ShutdownManager;->isBSPPackage:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/app/ShutdownManager;->doAudioUnmute:Z

    if-eqz v0, :cond_0

    .line 310
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/app/ShutdownManager;->SetMasterMute(Z)I

    .line 312
    :cond_0
    return-void
.end method

.method private static writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 769
    if-nez p0, :cond_0

    .line 795
    :goto_0
    return-void

    .line 771
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 772
    .local v1, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 774
    .local v3, "out":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 775
    .local v2, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 778
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 780
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 786
    if-eqz v4, :cond_1

    .line 788
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 793
    :cond_1
    :goto_1
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v3, v4

    .line 794
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 789
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 790
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "ShutdownManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 781
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 782
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v5, "ShutdownManager"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 786
    if-eqz v3, :cond_2

    .line 788
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 793
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    :goto_3
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    .line 789
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 790
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "ShutdownManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 783
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 784
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string v5, "ShutdownManager"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 786
    if-eqz v3, :cond_3

    .line 788
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 793
    :cond_3
    :goto_5
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    .line 789
    :catch_4
    move-exception v0

    .line 790
    const-string v5, "ShutdownManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 786
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_6
    if-eqz v3, :cond_4

    .line 788
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 793
    :cond_4
    :goto_7
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v5

    .line 789
    :catch_5
    move-exception v0

    .line 790
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "ShutdownManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IO exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 786
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 783
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 781
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method


# virtual methods
.method public ShutdownManager()V
    .locals 0

    .prologue
    .line 283
    return-void
.end method

.method public enterShutdown(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 633
    sget-boolean v2, Lcom/android/internal/app/ShutdownManager;->isBSPPackage:Z

    if-nez v2, :cond_0

    invoke-static {v4}, Lcom/android/internal/app/ShutdownManager;->GetStreamMute(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 634
    sput-boolean v3, Lcom/android/internal/app/ShutdownManager;->setMusicMuted:Z

    .line 635
    invoke-static {v4, v3}, Lcom/android/internal/app/ShutdownManager;->SetStreamMute(IZ)I

    .line 641
    :cond_0
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v0

    .line 643
    .local v0, "am":Landroid/app/IActivityManager;
    const-string v2, "ShutdownManager"

    const-string v3, "Force-stop GMap"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :try_start_0
    const-string v2, "com.google.android.apps.maps"

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/app/IActivityManager;->forceKillPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :goto_0
    return-void

    .line 646
    :catch_0
    move-exception v1

    .line 647
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ShutdownManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteExcepiton while forcekill google maps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public finishShutdown(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 661
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 663
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 664
    .local v0, "currentUserId":I
    const-string v2, "ShutdownManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    if-eqz v0, :cond_0

    .line 667
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    .end local v0    # "currentUserId":I
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/internal/app/ShutdownManager;->sHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/app/ShutdownManager$2;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/app/ShutdownManager$2;-><init>(Lcom/android/internal/app/ShutdownManager;Landroid/content/Context;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 680
    sget-boolean v2, Lcom/android/internal/app/ShutdownManager;->isBSPPackage:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/internal/app/ShutdownManager;->setMusicMuted:Z

    if-eqz v2, :cond_1

    .line 681
    sput-boolean v6, Lcom/android/internal/app/ShutdownManager;->setMusicMuted:Z

    .line 682
    const/4 v2, 0x3

    invoke-static {v2, v6}, Lcom/android/internal/app/ShutdownManager;->SetStreamMute(IZ)I

    .line 684
    :cond_1
    return-void

    .line 668
    .restart local v0    # "currentUserId":I
    :catch_0
    move-exception v1

    .line 669
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ShutdownManager"

    const-string v3, "Couldn\'t switch user."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public forceStopKillPackages(Landroid/content/Context;)V
    .locals 38
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 393
    const-string v34, "activity"

    invoke-static/range {v34 .. v34}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v9

    .line 396
    .local v9, "am":Landroid/app/IActivityManager;
    const-string v34, "package"

    invoke-static/range {v34 .. v34}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v25

    .line 399
    .local v25, "pm":Landroid/content/pm/IPackageManager;
    const-string v34, "wallpaper"

    invoke-static/range {v34 .. v34}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v31

    .line 402
    .local v31, "wm":Landroid/app/IWallpaperManager;
    sget-object v34, Lcom/android/internal/app/ShutdownManager;->sShutdownWhiteList:Ljava/util/ArrayList;

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 403
    .local v24, "p":Ljava/lang/String;
    const-string v34, "ShutdownManager"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "whitelist = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 406
    .end local v24    # "p":Ljava/lang/String;
    :cond_0
    if-eqz v25, :cond_2

    if-eqz v9, :cond_2

    if-eqz v31, :cond_2

    .line 408
    :try_start_0
    invoke-interface/range {v31 .. v31}, Landroid/app/IWallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v32

    .line 409
    .local v32, "wpInfo":Landroid/app/WallpaperInfo;
    if-eqz v32, :cond_3

    invoke-virtual/range {v32 .. v32}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 410
    .local v6, "WpPackageName":Ljava/lang/String;
    :goto_1
    if-eqz v32, :cond_4

    invoke-virtual/range {v32 .. v32}, Landroid/app/WallpaperInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v34

    move-object/from16 v0, v34

    iget-object v7, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 411
    .local v7, "WpProcessName":Ljava/lang/String;
    :goto_2
    const/16 v34, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-interface {v0, v6, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v33

    .line 412
    .local v33, "wpUid":I
    const-string v34, "ShutdownManager"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Current Wallpaper = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "("

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ")"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", uid = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ShutdownManager;->getCurrentIME(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 416
    .local v11, "currentIME":Ljava/lang/String;
    const/4 v12, -0x1

    .line 417
    .local v12, "currentIMEUid":I
    const-string v34, "ShutdownManager"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Current IME: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/16 v34, 0x1e

    const/16 v35, 0x0

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-interface {v9, v0, v1}, Landroid/app/IActivityManager;->getServices(II)Ljava/util/List;

    move-result-object v30

    .line 421
    .local v30, "sList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_1
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 422
    .local v29, "s":Landroid/app/ActivityManager$RunningServiceInfo;
    const-wide/16 v34, 0x0

    move-object/from16 v0, v29

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v36, v0

    cmp-long v34, v34, v36

    if-eqz v34, :cond_1

    .line 425
    sget-object v34, Lcom/android/internal/app/ShutdownManager;->sShutdownWhiteList:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_1

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_1

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_1

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_1

    .line 430
    const-string v34, "ShutdownManager"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "force stop the scheduling service:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v34

    const/16 v35, -0x1

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-interface {v9, v0, v1}, Landroid/app/IActivityManager;->forceKillPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 558
    .end local v6    # "WpPackageName":Ljava/lang/String;
    .end local v7    # "WpProcessName":Ljava/lang/String;
    .end local v11    # "currentIME":Ljava/lang/String;
    .end local v12    # "currentIMEUid":I
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v29    # "s":Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v30    # "sList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v32    # "wpInfo":Landroid/app/WallpaperInfo;
    .end local v33    # "wpUid":I
    :catch_0
    move-exception v13

    .line 559
    .local v13, "e":Landroid/os/RemoteException;
    const-string v34, "ShutdownManager"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "RemoteException: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    .end local v13    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_4
    return-void

    .line 409
    .restart local v17    # "i$":Ljava/util/Iterator;
    .restart local v32    # "wpInfo":Landroid/app/WallpaperInfo;
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 410
    .restart local v6    # "WpPackageName":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 436
    .restart local v7    # "WpProcessName":Ljava/lang/String;
    .restart local v11    # "currentIME":Ljava/lang/String;
    .restart local v12    # "currentIMEUid":I
    .restart local v30    # "sList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .restart local v33    # "wpUid":I
    :cond_5
    :try_start_1
    invoke-interface {v9}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v28

    .line 437
    .local v28, "runningList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ShutdownManager;->getAccessibilityServices(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v8

    .line 439
    .local v8, "accessibilityServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v15, "homeProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v19, Landroid/content/Intent;

    const-string v34, "android.intent.action.MAIN"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    .local v19, "intent":Landroid/content/Intent;
    const-string v34, "android.intent.category.HOME"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    move-object/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v26

    .line 445
    .local v26, "queryHomeList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v34

    if-lez v34, :cond_a

    .line 446
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/pm/ResolveInfo;

    .line 447
    .local v27, "rinfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v34, v0

    if-eqz v34, :cond_8

    move-object/from16 v0, v27

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 448
    .local v10, "ci":Landroid/content/pm/ComponentInfo;
    :goto_6
    iget-object v0, v10, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_9

    .line 449
    const-string v34, "ShutdownManager"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "home process: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    iget-object v0, v10, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 451
    .local v24, "p":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v34, v0

    iget-object v0, v10, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_7

    .line 452
    const-string v34, "ShutdownManager"

    const-string v35, "found running home process shown in above log"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 454
    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v34

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 455
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 447
    .end local v10    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v24    # "p":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_8
    move-object/from16 v0, v27

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_6

    .line 461
    .restart local v10    # "ci":Landroid/content/pm/ComponentInfo;
    :cond_9
    const-string v34, "ShutdownManager"

    const-string v35, "query home process name fail!"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 465
    .end local v10    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v27    # "rinfo":Landroid/content/pm/ResolveInfo;
    .restart local v17    # "i$":Ljava/util/Iterator;
    :cond_a
    const-string v34, "ShutdownManager"

    const-string v35, "query home activity fail!"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17    # "i$":Ljava/util/Iterator;
    :cond_c
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_d

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 469
    .restart local v24    # "p":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_c

    .line 470
    move-object/from16 v0, v24

    iget v12, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 471
    const-string v34, "ShutdownManager"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Current IME uid: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    .end local v24    # "p":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_d
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_e
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_1a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 477
    .restart local v24    # "p":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/16 v22, 0x1

    .line 478
    .local v22, "needForce":Z
    const/16 v23, 0x0

    .line 480
    .local v23, "needKill":Z
    const-string v34, "ShutdownManager"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "processName: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " pid: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v24

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " uid: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v24

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    sget-object v34, Lcom/android/internal/app/ShutdownManager;->sShutdownWhiteList:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_f

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_f

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_f

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "com.google.android.apps.genie.geniewidget"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_11

    if-eqz v7, :cond_11

    const-string v34, "com.google.android.apps.maps:MapsWallpaper"

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_11

    .line 488
    :cond_f
    const/16 v22, 0x0

    .line 490
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_10

    .line 491
    const/16 v23, 0x1

    .line 524
    :cond_10
    :goto_7
    if-eqz v22, :cond_18

    .line 525
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_8
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v16

    move/from16 v1, v34

    if-ge v0, v1, :cond_18

    .line 526
    if-eqz v8, :cond_17

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v34, v0

    aget-object v34, v34, v16

    move-object/from16 v0, v34

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_17

    .line 527
    const-string v34, "ShutdownManager"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "skip accessibility service: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v36, v0

    aget-object v36, v36, v16

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :goto_9
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 496
    .end local v16    # "i":I
    :cond_11
    move-object/from16 v0, v24

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v34, v0

    const/16 v35, 0x3e8

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_12

    .line 499
    const-string v34, "ShutdownManager"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "process = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 500
    :cond_12
    move-object/from16 v0, v24

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v33

    if-ne v0, v1, :cond_13

    .line 501
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_10

    .line 502
    const-string v34, "ShutdownManager"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "wallpaper related process = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/16 v22, 0x0

    .line 504
    const/16 v23, 0x1

    goto/16 :goto_7

    .line 506
    :cond_13
    const/16 v34, -0x1

    move/from16 v0, v34

    if-eq v12, v0, :cond_14

    move-object/from16 v0, v24

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ne v0, v12, :cond_14

    .line 507
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_10

    .line 508
    const-string v34, "ShutdownManager"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "IME related process = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/16 v22, 0x0

    .line 510
    const/16 v23, 0x1

    goto/16 :goto_7

    .line 513
    :cond_14
    move-object/from16 v0, v24

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v34, v0

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v21

    .line 514
    .local v21, "list":[Ljava/lang/String;
    if-nez v21, :cond_15

    const/16 v20, 0x0

    .line 515
    .local v20, "length":I
    :goto_a
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_b
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_10

    .line 516
    sget-object v34, Lcom/android/internal/app/ShutdownManager;->sShutdownWhiteList:Ljava/util/ArrayList;

    aget-object v35, v21, v16

    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_16

    .line 517
    const-string v34, "ShutdownManager"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "uid-process = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", whitelist item = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    aget-object v36, v21, v16

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/16 v22, 0x0

    .line 519
    goto/16 :goto_7

    .line 514
    .end local v16    # "i":I
    .end local v20    # "length":I
    :cond_15
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v20, v0

    goto :goto_a

    .line 515
    .restart local v16    # "i":I
    .restart local v20    # "length":I
    :cond_16
    add-int/lit8 v16, v16, 0x1

    goto :goto_b

    .line 529
    .end local v20    # "length":I
    .end local v21    # "list":[Ljava/lang/String;
    :cond_17
    const-string v34, "ShutdownManager"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "forceStopPackage: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " pid: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v24

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v34, v0

    aget-object v34, v34, v16

    const/16 v35, -0x1

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-interface {v9, v0, v1}, Landroid/app/IActivityManager;->forceKillPackage(Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 535
    .end local v16    # "i":I
    :cond_18
    if-eqz v23, :cond_19

    .line 538
    const-string v34, "ShutdownManager"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "killProcess: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    move-object/from16 v0, v24

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Landroid/os/Process;->killProcess(I)V

    .line 542
    :cond_19
    invoke-static {}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->inBooting()Z

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_e

    .line 543
    const-string v34, "ShutdownManager"

    const-string v35, "stop killing for IPO boot"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    .end local v22    # "needForce":Z
    .end local v23    # "needKill":Z
    .end local v24    # "p":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1a
    invoke-interface {v9}, Landroid/app/IActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v14

    .line 549
    .local v14, "errorStateProcessList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    if-eqz v14, :cond_1b

    .line 550
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_c
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 551
    .local v24, "p":Landroid/app/ActivityManager$ProcessErrorStateInfo;
    const-string v34, "ShutdownManager"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "killProcess "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " in \'"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " state"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    move-object/from16 v0, v24

    iget v0, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Landroid/os/Process;->killProcess(I)V

    goto :goto_c

    .line 556
    .end local v24    # "p":Landroid/app/ActivityManager$ProcessErrorStateInfo;
    :cond_1b
    const-string v34, "ShutdownManager"

    const-string v35, "No process in error state"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method public getAccessibilityServices(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 334
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_enabled"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    .line 336
    const-string v5, "ShutdownManager"

    const-string v6, "accessibility is disabled"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_0
    :goto_0
    return-object v1

    .line 340
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_accessibility_services"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, "servicesValue":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 344
    :cond_2
    const-string v5, "ShutdownManager"

    const-string v6, "no accessibility services exist"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 349
    :cond_3
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x3a

    invoke-direct {v3, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 350
    .local v3, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v3, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 351
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v1, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    :goto_1
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 353
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    .line 354
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 357
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 358
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    const-string v5, "ShutdownManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AccessibilityService Package Name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method getCurrentIME(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "activeIME":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "ime":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 327
    const/4 v2, 0x0

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 329
    :cond_0
    return-object v0
.end method

.method public preRestoreStates(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 715
    invoke-direct {p0, p1}, Lcom/android/internal/app/ShutdownManager;->unmuteSystem(Landroid/content/Context;)V

    .line 716
    return-void
.end method

.method public prebootKillProcess(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 370
    const-string v5, "activity"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v0

    .line 373
    .local v0, "am":Landroid/app/IActivityManager;
    sget-object v5, Lcom/android/internal/app/ShutdownManager;->sPrebootKillList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 374
    .local v3, "p":Ljava/lang/String;
    const-string v5, "ShutdownManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PrebootKill = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 377
    .end local v3    # "p":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_2

    sget-object v5, Lcom/android/internal/app/ShutdownManager;->sPrebootKillList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 379
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 380
    .local v4, "runningList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 381
    .local v3, "p":Landroid/app/ActivityManager$RunningAppProcessInfo;
    sget-object v5, Lcom/android/internal/app/ShutdownManager;->sPrebootKillList:Ljava/util/ArrayList;

    iget-object v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 382
    const-string v5, "ShutdownManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "killProcess: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 386
    .end local v3    # "p":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "runningList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "ShutdownManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    return-void
.end method

.method public recoverSystem(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 317
    return-void
.end method

.method public restoreStates(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 720
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v1

    .line 723
    .local v1, "wifiMgr":Landroid/net/wifi/IWifiManager;
    if-eqz v1, :cond_0

    .line 724
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->setWifiEnabledForIPO(Z)Z

    .line 731
    :goto_0
    return-void

    .line 726
    :cond_0
    const-string v2, "ShutdownManager"

    const-string v3, " can not get the IWifiManager binder"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 728
    :catch_0
    move-exception v0

    .line 729
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ShutdownManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wi-Fi operation failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveStates(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 688
    const-string v3, "wifi"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v2

    .line 692
    .local v2, "wifiMgr":Landroid/net/wifi/IWifiManager;
    if-eqz v2, :cond_0

    .line 694
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v2, v3}, Landroid/net/wifi/IWifiManager;->setWifiEnabledForIPO(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    :goto_0
    const-string v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 705
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_1

    .line 706
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 707
    const-string v3, "ShutdownManager"

    const-string v4, " Turn off WIFI AP"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :goto_1
    return-void

    .line 696
    .end local v1    # "mWifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    :try_start_1
    const-string v3, "ShutdownManager"

    const-string v4, " can not get the IWifiManager binder"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 699
    :catch_0
    move-exception v0

    .line 700
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ShutdownManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wi-Fi operation failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 709
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "mWifiManager":Landroid/net/wifi/WifiManager;
    :cond_1
    const-string v3, "ShutdownManager"

    const-string v4, " can not get WifiManager"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public shutdown(Landroid/content/Context;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 566
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/ShutdownManager;->muteSystem(Landroid/content/Context;)V

    .line 568
    new-instance v7, Landroid/content/Intent;

    const-string v13, "android.intent.action.black.mode"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 569
    .local v7, "it":Landroid/content/Intent;
    const-string v13, "_black_mode"

    const/4 v14, 0x1

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 570
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 571
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 574
    .local v10, "startTime":J
    const-string v13, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PowerManager;

    sput-object v13, Lcom/android/internal/app/ShutdownManager;->mPowerManager:Landroid/os/PowerManager;

    .line 575
    sget-object v13, Lcom/android/internal/app/ShutdownManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 578
    const/4 v6, 0x0

    .line 580
    .local v6, "isRotaionEnabled":Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "accelerometer_rotation"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_3

    const/4 v6, 0x1

    .line 582
    :goto_0
    const-string v13, "window"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v12

    .line 585
    .local v12, "wm":Landroid/view/IWindowManager;
    if-eqz v12, :cond_0

    .line 586
    if-eqz v6, :cond_0

    .line 587
    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 589
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "accelerometer_rotation"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 591
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "accelerometer_rotation_restore"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 602
    .end local v12    # "wm":Landroid/view/IWindowManager;
    :cond_0
    :goto_1
    const-string v13, "ShutdownManager"

    const-string v14, "start ipod"

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const-string v13, "ctl.start"

    const-string v14, "ipod"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    const/4 v13, 0x5

    if-ge v4, v13, :cond_1

    .line 607
    const-string v13, "init.svc.ipod"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 608
    .local v5, "ipodstate":Ljava/lang/String;
    const-string v13, "running"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 621
    .end local v5    # "ipodstate":Ljava/lang/String;
    :cond_1
    const-wide/16 v14, 0x5dc

    add-long/2addr v14, v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v8, v14, v16

    .line 622
    .local v8, "sleepDuration":J
    const-wide/16 v14, 0x0

    cmp-long v13, v8, v14

    if-lez v13, :cond_2

    .line 624
    :try_start_1
    const-string v13, "ShutdownManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sleep "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ms for ipowin"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    .line 630
    :cond_2
    :goto_3
    return-void

    .line 580
    .end local v4    # "i":I
    .end local v8    # "sleepDuration":J
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 595
    :catch_0
    move-exception v3

    .line 596
    .local v3, "ex":Ljava/lang/NullPointerException;
    const-string v13, "ShutdownManager"

    const-string v14, "check Rotation: context object is null when get Rotation"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 597
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 598
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 611
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v4    # "i":I
    .restart local v5    # "ipodstate":Ljava/lang/String;
    :cond_4
    const-string v13, "ShutdownManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "waiting ipod ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const-wide/16 v14, 0x14

    :try_start_2
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 605
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 614
    :catch_2
    move-exception v2

    .line 615
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v13, "ShutdownManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "interrupted while waiting ipod: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 626
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "ipodstate":Ljava/lang/String;
    .restart local v8    # "sleepDuration":J
    :catch_3
    move-exception v2

    .line 627
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    const-string v13, "ShutdownManager"

    const-string v14, "Thread sleep exception: "

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method
