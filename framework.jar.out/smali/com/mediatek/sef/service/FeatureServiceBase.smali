.class public abstract Lcom/mediatek/sef/service/FeatureServiceBase;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final SEF_VERSION:Ljava/lang/String; = "1.0"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 19
    invoke-direct {p0}, Lcom/mediatek/sef/service/FeatureServiceBase;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/sef/service/FeatureServiceBase;->b:Z

    .line 23
    const-string v0, "FeatureServiceBase"

    const-string v1, "FeatureServiceBase class constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FeatureServiceBase construction: Class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SEF_VERSION="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/sef/service/FeatureServiceBase;->a(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method private a(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 62
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 80
    :cond_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 66
    invoke-virtual {p2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 68
    array-length v6, v5

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v7, v5, v3

    .line 71
    array-length v8, v4

    move v1, v2

    move v0, v2

    :goto_1
    if-ge v1, v8, :cond_3

    aget-object v9, v4, v1

    .line 72
    invoke-direct {p0, v7, v9}, Lcom/mediatek/sef/service/FeatureServiceBase;->a(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 73
    const/4 v0, 0x1

    .line 71
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 75
    :cond_3
    if-nez v0, :cond_4

    .line 76
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "API version Compatibility Check Fail! Method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not found in current API version."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/mediatek/sef/service/FeatureServiceBase;->b:Z

    if-nez v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/sef_log.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    const/4 v1, 0x0

    .line 150
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 151
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 155
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 156
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 158
    :cond_2
    new-instance v2, Ljava/io/FileWriter;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 159
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 166
    :goto_1
    if-eqz v2, :cond_0

    .line 167
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 161
    :catch_1
    move-exception v0

    .line 162
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v1

    goto :goto_1

    .line 161
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method private a()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 121
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 122
    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v0, v3

    .line 123
    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v0, v3

    .line 124
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "get"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 126
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 127
    const/4 v4, 0x0

    const-string/jumbo v5, "persist.mtk.sef.debug"

    aput-object v5, v3, v4

    .line 128
    const/4 v4, 0x1

    const-string v5, "0"

    aput-object v5, v3, v4

    .line 129
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 130
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 141
    :goto_0
    return v0

    .line 136
    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move v0, v2

    .line 141
    goto :goto_0
.end method

.method private a(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 90
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 92
    array-length v2, v3

    array-length v5, v4

    if-ne v2, v5, :cond_0

    .line 95
    array-length v5, v3

    move v2, v0

    .line 97
    :goto_1
    if-ge v2, v5, :cond_2

    .line 98
    aget-object v6, v3, v2

    invoke-virtual {v6}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    aget-object v7, v4, v2

    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 103
    :cond_2
    const-string v2, "asInterface"

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 104
    goto :goto_0

    .line 107
    :cond_3
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    .line 108
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 110
    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 114
    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 29
    const-string v0, "FeatureServiceBase"

    const-string/jumbo v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 179
    const-string v0, "FeatureServiceBase"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 185
    const-string v0, "FeatureServiceBase"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method public registerService(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    const-string v0, "FeatureServiceBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "register SEF service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FeatureServiceBase registerService: serviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SEF_VERSION="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/sef/service/FeatureServiceBase;->a(Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/mediatek/sef/service/FeatureServiceBase;->a:Ljava/lang/String;

    .line 38
    invoke-direct {p0, p3, p4}, Lcom/mediatek/sef/service/FeatureServiceBase;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 42
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 43
    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 44
    const/4 v1, 0x1

    const-class v2, Landroid/os/IBinder;

    aput-object v2, v0, v1

    .line 45
    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "addService"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 47
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 48
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/sef/service/FeatureServiceBase;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 49
    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 50
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 51
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "registerService Fail!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
