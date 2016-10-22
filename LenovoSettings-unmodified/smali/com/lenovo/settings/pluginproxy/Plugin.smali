.class public Lcom/lenovo/settings/pluginproxy/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"


# static fields
.field private static final KEY_CLASS:Ljava/lang/String; = "lenovo-class"

.field private static final KEY_VERSION:Ljava/lang/String; = "lenovo-version"

.field private static final TAG:Ljava/lang/String; = "Plugin"


# instance fields
.field private mClassContext:Landroid/content/Context;

.field private mClassLoader:Ldalvik/system/PathClassLoader;

.field private mMateData:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iget-object v3, p2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    iput-object v3, p0, Lcom/lenovo/settings/pluginproxy/Plugin;->mMateData:Landroid/os/Bundle;

    .line 26
    iget-object v1, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 28
    .local v1, "packageName":Ljava/lang/String;
    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/settings/pluginproxy/Plugin;->mClassContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    const/4 v2, 0x0

    .line 38
    .local v2, "sourceDir":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    :goto_1
    if-nez v2, :cond_0

    .line 46
    const-string v3, "Plugin"

    const-string v4, "<Plugin> sourceDir is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_2
    return-void

    .line 30
    .end local v2    # "sourceDir":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Plugin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<Plugin> package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 33
    iput-object p1, p0, Lcom/lenovo/settings/pluginproxy/Plugin;->mClassContext:Landroid/content/Context;

    goto :goto_0

    .line 40
    .end local v0    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "sourceDir":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 41
    .restart local v0    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Plugin"

    const-string v4, "<Plugin> getApplicationInfo fail "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 50
    .end local v0    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    new-instance v3, Ldalvik/system/PathClassLoader;

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v3, p0, Lcom/lenovo/settings/pluginproxy/Plugin;->mClassLoader:Ldalvik/system/PathClassLoader;

    goto :goto_2
.end method


# virtual methods
.method public createObject()Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/lenovo/settings/pluginproxy/Plugin;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 77
    const-string v5, "Plugin"

    const-string v6, "<createObject> className is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_0
    return-object v4

    .line 80
    :cond_0
    const-string v5, "Plugin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "class name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v3, 0x0

    .line 84
    .local v3, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    :try_start_0
    iget-object v6, p0, Lcom/lenovo/settings/pluginproxy/Plugin;->mClassLoader:Ldalvik/system/PathClassLoader;

    invoke-static {v0, v5, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 97
    const/4 v5, 0x1

    :try_start_1
    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 98
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/lenovo/settings/pluginproxy/Plugin;->mClassContext:Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    goto :goto_0

    .line 85
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v2

    .line 86
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "Plugin"

    const-string v6, "<createObject> Class.forName, ClassNotFoundExecption"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 90
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "Plugin"

    const-string v6, "<createObject> Class.forName, IllegalArgumentException"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 99
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 100
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "Plugin"

    const-string v6, "<createObject> constructor with context not success"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v4

    goto :goto_0

    .line 105
    :catch_3
    move-exception v2

    .line 106
    .local v2, "e":Ljava/lang/InstantiationException;
    const-string v5, "Plugin"

    const-string v6, "<createObject> localClass.newInstance InstantiationException"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {v2}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 108
    .local v2, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 109
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "Plugin"

    const-string v6, "<createObject> localClass.newInstance IllegalAccessException"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    iget-object v1, p0, Lcom/lenovo/settings/pluginproxy/Plugin;->mMateData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 56
    const-string v1, "Plugin"

    const-string v2, "<getClassName>, mMateData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/lenovo/settings/pluginproxy/Plugin;->mMateData:Landroid/os/Bundle;

    const-string v2, "lenovo-class"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "str":Ljava/lang/String;
    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    iget-object v1, p0, Lcom/lenovo/settings/pluginproxy/Plugin;->mMateData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 66
    const-string v1, "Plugin"

    const-string v2, "<getVersion>, mMateData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/lenovo/settings/pluginproxy/Plugin;->mMateData:Landroid/os/Bundle;

    const-string v2, "lenovo-version"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "str":Ljava/lang/String;
    goto :goto_0
.end method
