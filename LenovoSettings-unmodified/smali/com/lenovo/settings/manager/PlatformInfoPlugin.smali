.class public Lcom/lenovo/settings/manager/PlatformInfoPlugin;
.super Ljava/lang/Object;
.source "PlatformInfoPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;,
        Lcom/lenovo/settings/manager/PlatformInfoPlugin$Operators;,
        Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlatformInfoPlugin"

.field private static final defaultPlatform:Ljava/lang/String; = "none"

.field static final intelPlatform:Ljava/lang/String; = "intel"

.field static final mtkPlatform:Ljava/lang/String; = "mtk"

.field static final mtkPlatform_82:Ljava/lang/String; = "MT6582"

.field static final mtkPlatform_92:Ljava/lang/String; = "MT6592"

.field static final mtkPlatform_95:Ljava/lang/String; = "MT6595"

.field static final qualcommPlatform:Ljava/lang/String; = "qualcomm"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getMTKPlatformName()Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-static {}, Lcom/lenovo/settings/manager/PlatformInfoPlugin;->getMTKPlatformNameString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "platform":Ljava/lang/String;
    const-string v2, "MT6582"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    sget-object v1, Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;->mt6582:Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;

    .line 74
    :goto_0
    return-object v1

    .line 65
    :cond_0
    const-string v2, "MT6592"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    sget-object v1, Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;->mt6592:Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;

    goto :goto_0

    .line 67
    :cond_1
    const-string v2, "MT6595"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    sget-object v1, Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;->mt6595:Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;

    goto :goto_0

    .line 69
    :cond_2
    const-string v2, "none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 70
    const-string v2, "PlatformInfoPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not found right plaform --->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_3
    const-string v2, "PlatformInfoPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not found right plaform --->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMTKPlatformNameString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 94
    .local v1, "platform":Ljava/lang/String;
    :try_start_0
    const-string v2, "ro.mediatek.platform"

    const-string v3, "MT6582"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 99
    :goto_0
    return-object v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "iex":Ljava/lang/IllegalArgumentException;
    const-string v1, "none"

    .line 97
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getOperator()Lcom/lenovo/settings/manager/PlatformInfoPlugin$Operators;
    .locals 2

    .prologue
    .line 49
    const-string v1, "ro.lenovo.operator"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "mOptr":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "cmcc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    sget-object v1, Lcom/lenovo/settings/manager/PlatformInfoPlugin$Operators;->CMCC:Lcom/lenovo/settings/manager/PlatformInfoPlugin$Operators;

    .line 58
    :goto_0
    return-object v1

    .line 52
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "cu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    sget-object v1, Lcom/lenovo/settings/manager/PlatformInfoPlugin$Operators;->CU:Lcom/lenovo/settings/manager/PlatformInfoPlugin$Operators;

    goto :goto_0

    .line 54
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "ct"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    sget-object v1, Lcom/lenovo/settings/manager/PlatformInfoPlugin$Operators;->CT:Lcom/lenovo/settings/manager/PlatformInfoPlugin$Operators;

    goto :goto_0

    .line 58
    :cond_2
    sget-object v1, Lcom/lenovo/settings/manager/PlatformInfoPlugin$Operators;->OPEN:Lcom/lenovo/settings/manager/PlatformInfoPlugin$Operators;

    goto :goto_0
.end method

.method public static getPlatform()Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-static {}, Lcom/lenovo/settings/manager/PlatformInfoPlugin;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "platform":Ljava/lang/String;
    const-string v2, "mtk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    sget-object v1, Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;->MTK:Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;

    .line 43
    :cond_0
    :goto_0
    return-object v1

    .line 34
    :cond_1
    const-string v2, "qualcomm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 35
    sget-object v1, Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;->QUALCOMM:Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;

    goto :goto_0

    .line 36
    :cond_2
    const-string v2, "none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 38
    const-string v2, "intel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 39
    sget-object v1, Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;->INTEL:Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;

    goto :goto_0

    .line 42
    :cond_3
    const-string v2, "PlatformInfoPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not found right getPlatform --->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getPlatformName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, "platform":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 81
    :try_start_0
    const-string v2, "ro.lenovo.platform"

    const-string v3, "mtk"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 87
    :cond_0
    :goto_0
    return-object v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "iex":Ljava/lang/IllegalArgumentException;
    const-string v1, "none"

    .line 84
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method
