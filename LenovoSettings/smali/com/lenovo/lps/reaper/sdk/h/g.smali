.class public final Lcom/lenovo/lps/reaper/sdk/h/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/h/g;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/lenovo/lps/reaper/sdk/h/g;->b:Z

    return-void
.end method

.method private a([Ljava/io/File;)Ljava/io/File;
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    aget-object v1, p1, v1

    array-length v2, p1

    if-eq v2, v0, :cond_1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    aget-object v1, p1, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/io/File;Lcom/lenovo/lps/reaper/sdk/a/a;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/e/n;->s()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DispatchOtherAppDataTask"

    const-string v1, "mkdir local dir fail."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "__"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/a/a;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "__"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "__"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "__"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/a/a;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "__"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "__"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/a/a;->d()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "__"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/a/a;->e()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "__"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/a/a;->h()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/a/a;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/a/a;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private a()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 9

    const/4 v8, 0x4

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mounted"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v2, "DispatchOtherAppDataTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "external storage is not mounted: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/reaper"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v4, "DispatchOtherAppDataTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "stand alone app data file path: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v2, "DispatchOtherAppDataTask"

    const-string v3, "stand alone app data file not exist."

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "DispatchOtherAppDataTask"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v4, v3

    if-nez v4, :cond_4

    :cond_3
    const-string v2, "DispatchOtherAppDataTask"

    const-string v3, "not found stand alone app data file."

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    array-length v4, v3

    move v0, v2

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v2, v3, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "__"

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    array-length v7, v6

    if-eq v7, v8, :cond_6

    :cond_5
    const-string v2, "DispatchOtherAppDataTask"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "directory name is invalid: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/lenovo/lps/reaper/sdk/i/s;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    new-instance v5, Lcom/lenovo/lps/reaper/sdk/a/a;

    invoke-direct {v5}, Lcom/lenovo/lps/reaper/sdk/a/a;-><init>()V

    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-virtual {v5, v7}, Lcom/lenovo/lps/reaper/sdk/a/a;->f(Ljava/lang/String;)V

    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-virtual {v5, v7}, Lcom/lenovo/lps/reaper/sdk/a/a;->b(Ljava/lang/String;)V

    const/4 v7, 0x2

    aget-object v7, v6, v7

    invoke-virtual {v5, v7}, Lcom/lenovo/lps/reaper/sdk/a/a;->a(Ljava/lang/String;)V

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/lenovo/lps/reaper/sdk/a/a;->e(Ljava/lang/String;)V

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/lenovo/lps/reaper/sdk/a/a;->c(Ljava/lang/String;)V

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/lenovo/lps/reaper/sdk/a/a;->a(I)V

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lcom/lenovo/lps/reaper/sdk/a/a;->b(I)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/lenovo/lps/reaper/sdk/a/a;->d(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Lcom/lenovo/lps/reaper/sdk/a/a;->a(Z)V

    invoke-virtual {v1, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private a(Lcom/lenovo/lps/reaper/sdk/a/a;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/h/g;->b(Lcom/lenovo/lps/reaper/sdk/a/a;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DispatchOtherAppDataTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not find this app: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/a/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "DispatchOtherAppDataTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "other app dir: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/h/g;->a(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_3

    :cond_2
    const-string v0, "DispatchOtherAppDataTask"

    const-string v1, "no data file."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/h/g;->a([Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const-string v0, "DispatchOtherAppDataTask"

    const-string v1, "dataFile can\'t read or write. "

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v0, p1}, Lcom/lenovo/lps/reaper/sdk/h/g;->a(Ljava/io/File;Lcom/lenovo/lps/reaper/sdk/a/a;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DispatchOtherAppDataTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "app data file path: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DispatchOtherAppDataTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "new data file path: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/lenovo/lps/reaper/sdk/h/g;->b:Z

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lenovo/lps/reaper/sdk/i/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lenovo_reaper.db"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/lenovo/lps/reaper/sdk/db/a/c;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/h/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/db/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/db/a/c;->a()V

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/db/a/c;->g()V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DispatchOtherAppDataTask"

    const-string v1, "delete data file fail."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "DispatchOtherAppDataTask"

    const-string v1, "copy data file fail."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DispatchOtherAppDataTask"

    const-string v1, "move data file fail."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/lenovo/lps/reaper/sdk/db/a/c;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/h/g;->a:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/lenovo/lps/reaper/sdk/db/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/db/a/c;->a()V

    const-string v2, "DispatchOtherAppDataTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "events num: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/db/a/c;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/lenovo/lps/reaper/sdk/d/a;

    invoke-direct {v2}, Lcom/lenovo/lps/reaper/sdk/d/a;-><init>()V

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/h/g;->b(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/a/a;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/db/a/c;->c()[Lcom/lenovo/lps/reaper/sdk/db/Event;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/lenovo/lps/reaper/sdk/d/a;->a([Lcom/lenovo/lps/reaper/sdk/db/Event;Lcom/lenovo/lps/reaper/sdk/a/a;)I

    move-result v2

    const-string v3, "DispatchOtherAppDataTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "report events num: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_1

    const-string v2, "DispatchOtherAppDataTask"

    const-string v3, "send file error!"

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/i/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/db/a/c;->d()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_1
    return v0

    :cond_1
    invoke-virtual {v1, v4}, Lcom/lenovo/lps/reaper/sdk/db/a/c;->a([Lcom/lenovo/lps/reaper/sdk/db/Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "DispatchOtherAppDataTask"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

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

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/h/g;->b(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/a/a;

    move-result-object v2

    sget-object v3, Lcom/lenovo/lps/reaper/sdk/i/i;->a:Lcom/lenovo/lps/reaper/sdk/i/i;

    invoke-interface {p2, v3}, Lcom/lenovo/lps/reaper/sdk/api/b;->a(Lcom/lenovo/lps/reaper/sdk/i/i;)[Lcom/lenovo/lps/reaper/sdk/api/a;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/lenovo/lps/reaper/sdk/d/b;->a([Lcom/lenovo/lps/reaper/sdk/api/a;Lcom/lenovo/lps/reaper/sdk/a/a;)I

    move-result v3

    sget-object v4, Lcom/lenovo/lps/reaper/sdk/i/i;->a:Lcom/lenovo/lps/reaper/sdk/i/i;

    invoke-interface {p2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/api/b;->a(ILcom/lenovo/lps/reaper/sdk/i/i;)Z

    const-string v4, "DispatchOtherAppDataTask"

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

    const-string v2, "DispatchOtherAppDataTask"

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

    const-string v2, "DispatchOtherAppDataTask"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

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

    const-string v1, "DispatchOtherAppDataTask"

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

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/h/g;->b(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/a/a;

    move-result-object v2

    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/g/c/a;->a()[Lcom/lenovo/lps/reaper/sdk/api/a;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/lenovo/lps/reaper/sdk/d/b;->a([Lcom/lenovo/lps/reaper/sdk/api/a;Lcom/lenovo/lps/reaper/sdk/a/a;)I

    move-result v1

    const-string v2, "DispatchOtherAppDataTask"

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

    const-string v2, "DispatchOtherAppDataTask"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/io/File;)[Ljava/io/File;
    .locals 1

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/h/h;

    invoke-direct {v0, p0}, Lcom/lenovo/lps/reaper/sdk/h/h;-><init>(Lcom/lenovo/lps/reaper/sdk/h/g;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/a/a;
    .locals 5

    const/4 v0, 0x0

    const/16 v3, 0x9

    const-string v1, "__"

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-eq v2, v3, :cond_0

    const-string v1, "DispatchOtherAppDataTask"

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

    const-string v1, "DispatchOtherAppDataTask"

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

    const-string v1, "DispatchOtherAppDataTask"

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

.method private b(Lcom/lenovo/lps/reaper/sdk/a/a;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/h/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move v2, v3

    :goto_0
    return v2

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/a/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/a/a;->d()I

    move-result v1

    if-ne v1, v6, :cond_3

    move v1, v2

    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/lps/reaper/sdk/h/g;->b:Z

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/files/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/lenovo/lps/reaper/sdk/a/a;->d(Ljava/lang/String;)V

    :cond_2
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/lenovo/lps/reaper/sdk/a/a;->c(Ljava/lang/String;)V

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1, v0}, Lcom/lenovo/lps/reaper/sdk/a/a;->a(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/a/a;->d()I

    move-result v1

    if-ne v1, v6, :cond_4

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/a/a;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/a/a;->d()I

    move-result v1

    if-eq v1, v6, :cond_6

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/a/a;->d()I

    move-result v1

    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne v1, v5, :cond_5

    move v1, v2

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/a/a;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/a/a;->d()I

    move-result v1

    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne v1, v5, :cond_7

    move v1, v2

    goto :goto_1

    :cond_7
    move v1, v3

    goto :goto_1
.end method

.method private b(Ljava/io/File;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DispatchOtherAppDataTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "start to report data of this file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "lenovo_reaper.db13"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "lenovo_game.db13"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v1, Lcom/lenovo/lps/reaper/sdk/g/a;

    invoke-direct {v1}, Lcom/lenovo/lps/reaper/sdk/g/a;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/lenovo/lps/reaper/sdk/h/g;->a(Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/api/b;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const-string v2, "lenovo_reaper.db11"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Lcom/lenovo/lps/reaper/sdk/g/a/a;

    invoke-direct {v1}, Lcom/lenovo/lps/reaper/sdk/g/a/a;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/lenovo/lps/reaper/sdk/h/g;->a(Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/api/b;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const-string v2, "lenovo_reaper.db6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v1, Lcom/lenovo/lps/reaper/sdk/g/c/a;

    invoke-direct {v1}, Lcom/lenovo/lps/reaper/sdk/g/c/a;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/lenovo/lps/reaper/sdk/h/g;->a(Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/g/c/a;)Z

    move-result v0

    goto :goto_0

    :cond_3
    const-string v2, "lenovo_reaper.db3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Lcom/lenovo/lps/reaper/sdk/g/b/a;

    invoke-direct {v1}, Lcom/lenovo/lps/reaper/sdk/g/b/a;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/lenovo/lps/reaper/sdk/h/g;->a(Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/g/c/a;)Z

    move-result v0

    goto :goto_0

    :cond_4
    const-string v2, "lenovo_reaper.db"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/h/g;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v1, 0x0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/f/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/e/n;->s()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "DispatchOtherAppDataTask"

    const-string v1, "network not ready or local file path not ready"

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/h/g;->b:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/h/g;->a()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/e/n;->s()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_3
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_6

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/e/n;->r()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/lps/reaper/sdk/a/a;

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/h/g;->a(Lcom/lenovo/lps/reaper/sdk/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "DispatchOtherAppDataTask"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_6
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    if-nez v6, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "DispatchOtherAppDataTask"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "delete dir fail: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    array-length v6, v5

    move v0, v1

    :goto_4
    if-ge v0, v6, :cond_3

    aget-object v7, v5, v0

    invoke-direct {p0, v7}, Lcom/lenovo/lps/reaper/sdk/h/g;->b(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "DispatchOtherAppDataTask"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "delete file fail: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/lenovo/lps/reaper/sdk/i/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method
