.class public final Lcom/lenovo/lps/reaper/sdk/h/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/h/s;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/a/a;
    .locals 5

    const/4 v0, 0x0

    const/16 v3, 0x9

    const-string v1, "__"

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-eq v2, v3, :cond_0

    const-string v1, "UpgradeDispatchTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid file name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/i/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x6

    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x7

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/a/a;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/a/a;-><init>()V

    const/4 v4, 0x3

    aget-object v4, v1, v4

    invoke-virtual {v0, v4}, Lcom/lenovo/lps/reaper/sdk/a/a;->a(Ljava/lang/String;)V

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-virtual {v0, v4}, Lcom/lenovo/lps/reaper/sdk/a/a;->b(Ljava/lang/String;)V

    const/4 v4, 0x5

    aget-object v4, v1, v4

    invoke-virtual {v0, v4}, Lcom/lenovo/lps/reaper/sdk/a/a;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/reaper/sdk/a/a;->a(I)V

    invoke-virtual {v0, v3}, Lcom/lenovo/lps/reaper/sdk/a/a;->b(I)V

    const/4 v2, 0x4

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/reaper/sdk/a/a;->e(Ljava/lang/String;)V

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/reaper/sdk/a/a;->f(Ljava/lang/String;)V

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/a/a;->a(Z)V

    const-string v1, "UpgradeDispatchTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "otherAppInfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/a/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "UpgradeDispatchTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid file name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/i/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "lenovo_reaper.db13"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "lenovo_game.db13"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/g/a;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/g/a;-><init>()V

    invoke-direct {p0, v1, v0}, Lcom/lenovo/lps/reaper/sdk/h/s;->a(Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/api/b;)Z

    move-result v0

    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_4
    const-string v3, "lenovo_reaper.db11"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/g/a/a;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/g/a/a;-><init>()V

    invoke-direct {p0, v1, v0}, Lcom/lenovo/lps/reaper/sdk/h/s;->a(Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/api/b;)Z

    move-result v0

    goto :goto_1

    :cond_5
    const-string v3, "lenovo_reaper.db6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/g/c/a;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/g/c/a;-><init>()V

    invoke-direct {p0, v1, v0}, Lcom/lenovo/lps/reaper/sdk/h/s;->a(Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/g/c/a;)Z

    move-result v0

    goto :goto_1

    :cond_6
    const-string v3, "lenovo_reaper.db3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/g/b/a;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/g/b/a;-><init>()V

    invoke-direct {p0, v1, v0}, Lcom/lenovo/lps/reaper/sdk/h/s;->a(Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/g/c/a;)Z

    move-result v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/api/b;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/lenovo/lps/reaper/sdk/g/b;

    invoke-direct {v1, p1}, Lcom/lenovo/lps/reaper/sdk/g/b;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/lenovo/lps/reaper/sdk/g/c;

    invoke-direct {v2}, Lcom/lenovo/lps/reaper/sdk/g/c;-><init>()V

    invoke-interface {p2, v2}, Lcom/lenovo/lps/reaper/sdk/api/b;->a(Lcom/lenovo/lps/reaper/sdk/g/c;)V

    invoke-interface {p2, v1}, Lcom/lenovo/lps/reaper/sdk/api/b;->a(Lcom/lenovo/lps/reaper/sdk/g/b;)V

    invoke-interface {p2}, Lcom/lenovo/lps/reaper/sdk/api/b;->a()V

    new-instance v1, Lcom/lenovo/lps/reaper/sdk/d/b;

    invoke-direct {v1}, Lcom/lenovo/lps/reaper/sdk/d/b;-><init>()V

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/h/s;->a(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/a/a;

    move-result-object v2

    sget-object v3, Lcom/lenovo/lps/reaper/sdk/i/i;->a:Lcom/lenovo/lps/reaper/sdk/i/i;

    invoke-interface {p2, v3}, Lcom/lenovo/lps/reaper/sdk/api/b;->a(Lcom/lenovo/lps/reaper/sdk/i/i;)[Lcom/lenovo/lps/reaper/sdk/api/a;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/lenovo/lps/reaper/sdk/d/b;->a([Lcom/lenovo/lps/reaper/sdk/api/a;Lcom/lenovo/lps/reaper/sdk/a/a;)I

    move-result v3

    sget-object v4, Lcom/lenovo/lps/reaper/sdk/i/i;->a:Lcom/lenovo/lps/reaper/sdk/i/i;

    invoke-interface {p2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/api/b;->a(ILcom/lenovo/lps/reaper/sdk/i/i;)Z

    const-string v4, "UpgradeDispatchTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "report data of lv0: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/lenovo/lps/reaper/sdk/i/i;->b:Lcom/lenovo/lps/reaper/sdk/i/i;

    invoke-interface {p2, v3}, Lcom/lenovo/lps/reaper/sdk/api/b;->a(Lcom/lenovo/lps/reaper/sdk/i/i;)[Lcom/lenovo/lps/reaper/sdk/api/a;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/lenovo/lps/reaper/sdk/d/b;->a([Lcom/lenovo/lps/reaper/sdk/api/a;Lcom/lenovo/lps/reaper/sdk/a/a;)I

    move-result v1

    sget-object v2, Lcom/lenovo/lps/reaper/sdk/i/i;->b:Lcom/lenovo/lps/reaper/sdk/i/i;

    invoke-interface {p2, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/b;->a(ILcom/lenovo/lps/reaper/sdk/i/i;)Z

    const-string v2, "UpgradeDispatchTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "report data of lv1: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/i/i;->a:Lcom/lenovo/lps/reaper/sdk/i/i;

    invoke-interface {p2, v1}, Lcom/lenovo/lps/reaper/sdk/api/b;->b(Lcom/lenovo/lps/reaper/sdk/i/i;)I

    move-result v1

    sget-object v2, Lcom/lenovo/lps/reaper/sdk/i/i;->b:Lcom/lenovo/lps/reaper/sdk/i/i;

    invoke-interface {p2, v2}, Lcom/lenovo/lps/reaper/sdk/api/b;->b(Lcom/lenovo/lps/reaper/sdk/i/i;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/2addr v1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "UpgradeDispatchTask"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/g/c/a;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/lenovo/lps/reaper/sdk/g/b;

    invoke-direct {v1, p1}, Lcom/lenovo/lps/reaper/sdk/g/b;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/lenovo/lps/reaper/sdk/g/c/b;

    const/16 v3, 0x3e8

    invoke-direct {v2, v3}, Lcom/lenovo/lps/reaper/sdk/g/c/b;-><init>(I)V

    invoke-virtual {p2, v2}, Lcom/lenovo/lps/reaper/sdk/g/c/a;->a(Lcom/lenovo/lps/reaper/sdk/g/c/b;)V

    invoke-virtual {p2, v1}, Lcom/lenovo/lps/reaper/sdk/g/c/a;->a(Lcom/lenovo/lps/reaper/sdk/g/b;)V

    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/g/c/a;->b()V

    const-string v1, "UpgradeDispatchTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "events num: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/g/c/a;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/lenovo/lps/reaper/sdk/d/b;

    invoke-direct {v1}, Lcom/lenovo/lps/reaper/sdk/d/b;-><init>()V

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/h/s;->a(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/a/a;

    move-result-object v2

    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/g/c/a;->a()[Lcom/lenovo/lps/reaper/sdk/api/a;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/lenovo/lps/reaper/sdk/d/b;->a([Lcom/lenovo/lps/reaper/sdk/api/a;Lcom/lenovo/lps/reaper/sdk/a/a;)I

    move-result v1

    const-string v2, "UpgradeDispatchTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "report events num: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/lenovo/lps/reaper/sdk/g/c/a;->b(I)Z

    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/g/c/a;->c()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "UpgradeDispatchTask"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Ljava/io/File;)[Ljava/io/File;
    .locals 1

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/h/t;

    invoke-direct {v0, p0}, Lcom/lenovo/lps/reaper/sdk/h/t;-><init>(Lcom/lenovo/lps/reaper/sdk/h/s;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/data/files/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/lenovo/lps/reaper/sdk/h/s;->b(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    aget-object v3, v1, v0

    invoke-direct {p0, v3}, Lcom/lenovo/lps/reaper/sdk/h/s;->a(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
