.class public Lcom/lenovo/memoryclean/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final CONTROLLABLE_SYSTEM_APPS_PATH:Ljava/lang/String; = "/etc/com_lenovo_security/controllable_system_apps"

.field private static final TAG:Ljava/lang/String; = "Utils"

.field private static sControllableSystemApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/lenovo/memoryclean/Utils;->sControllableSystemApps:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    .line 86
    :cond_0
    move-object v0, p1

    .line 88
    .local v0, "appName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 89
    .local v3, "pkgManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 90
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 91
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "pkgManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static initControllableSystemApps()V
    .locals 0

    .prologue
    .line 27
    invoke-static {}, Lcom/lenovo/memoryclean/Utils;->initControllableSystemAppsIfNeed()V

    .line 28
    return-void
.end method

.method private static initControllableSystemAppsIfNeed()V
    .locals 9

    .prologue
    .line 41
    sget-object v7, Lcom/lenovo/memoryclean/Utils;->sControllableSystemApps:Ljava/util/Set;

    monitor-enter v7

    .line 42
    :try_start_0
    sget-object v6, Lcom/lenovo/memoryclean/Utils;->sControllableSystemApps:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 43
    monitor-exit v7

    .line 75
    .local v5, "path":Ljava/lang/String;
    :goto_0
    return-void

    .line 45
    .end local v5    # "path":Ljava/lang/String;
    :cond_0
    const-string v5, "/etc/com_lenovo_security/controllable_system_apps"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .restart local v5    # "path":Ljava/lang/String;
    const/4 v3, 0x0

    .line 48
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    .end local v3    # "fis":Ljava/io/FileInputStream;
    const-string v6, "/etc/com_lenovo_security/controllable_system_apps"

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 56
    .local v0, "bufReader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .local v1, "bufReader":Ljava/io/BufferedReader;
    :try_start_3
    const-string v4, ""

    .line 58
    .local v4, "line":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 59
    sget-object v6, Lcom/lenovo/memoryclean/Utils;->sControllableSystemApps:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 61
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 62
    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v6, "Utils"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 65
    if-eqz v3, :cond_1

    .line 66
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 68
    :cond_1
    if-eqz v0, :cond_2

    .line 69
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 74
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    :try_start_6
    monitor-exit v7

    goto :goto_0

    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v6

    .line 49
    :catch_1
    move-exception v2

    .line 50
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 65
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_4

    .line 66
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 68
    :cond_4
    if-eqz v1, :cond_5

    .line 69
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_5
    move-object v0, v1

    .line 72
    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 71
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v6

    move-object v0, v1

    .line 73
    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 64
    .end local v4    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v6

    .line 65
    :goto_4
    if-eqz v3, :cond_6

    .line 66
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 68
    :cond_6
    if-eqz v0, :cond_7

    .line 69
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 72
    :cond_7
    :goto_5
    :try_start_a
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 71
    :catch_3
    move-exception v8

    goto :goto_5

    .line 64
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v6

    move-object v0, v1

    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 71
    .local v2, "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    goto :goto_3

    .line 61
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    goto :goto_2
.end method

.method public static isInControllableSystemApps(Ljava/lang/String;)Z
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {}, Lcom/lenovo/memoryclean/Utils;->initControllableSystemAppsIfNeed()V

    .line 36
    sget-object v1, Lcom/lenovo/memoryclean/Utils;->sControllableSystemApps:Ljava/util/Set;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lcom/lenovo/memoryclean/Utils;->sControllableSystemApps:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
