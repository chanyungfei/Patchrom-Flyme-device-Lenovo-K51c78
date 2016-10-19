.class Lcom/mediatek/recovery/RecoveryManagerService$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/recovery/RecoveryManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final w:Ljava/io/File;

.field x:Ldalvik/system/DexClassLoader;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 5

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/mediatek/recovery/BackupServant;->getBackupDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "tmpdex"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService$a;->w:Ljava/io/File;

    .line 105
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService$a;->w:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 106
    new-instance v0, Ldalvik/system/DexClassLoader;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/recovery/RecoveryManagerService$a;->w:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService$a;->x:Ldalvik/system/DexClassLoader;

    .line 109
    return-void
.end method

.method static synthetic a(Lcom/mediatek/recovery/RecoveryManagerService$a;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/mediatek/recovery/RecoveryManagerService$a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 113
    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService$a;->x:Ldalvik/system/DexClassLoader;

    invoke-virtual {v1, p1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    .line 121
    :catch_0
    move-exception v1

    goto :goto_0

    .line 119
    :catch_1
    move-exception v1

    goto :goto_0

    .line 117
    :catch_2
    move-exception v1

    goto :goto_0
.end method
