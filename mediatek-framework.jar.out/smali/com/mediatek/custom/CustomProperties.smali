.class public Lcom/mediatek/custom/CustomProperties;
.super Ljava/lang/Object;
.source "CustomProperties.java"


# static fields
.field public static final HOST_NAME:Ljava/lang/String; = "HostName"

.field public static final MANUFACTURER:Ljava/lang/String; = "Manufacturer"

.field public static final MODEL:Ljava/lang/String; = "Model"

.field public static final MODULE_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final MODULE_BROWSER:Ljava/lang/String; = "browser"

.field public static final MODULE_CMMB:Ljava/lang/String; = "cmmb"

.field public static final MODULE_DM:Ljava/lang/String; = "dm"

.field public static final MODULE_FMTRANSMITTER:Ljava/lang/String; = "fmtransmitter"

.field public static final MODULE_HTTP_STREAMING:Ljava/lang/String; = "http_streaming"

.field public static final MODULE_MMS:Ljava/lang/String; = "mms"

.field public static final MODULE_RTSP_STREAMING:Ljava/lang/String; = "rtsp_streaming"

.field public static final MODULE_SYSTEM:Ljava/lang/String; = "system"

.field public static final MODULE_WLAN:Ljava/lang/String; = "wlan"

.field public static final PROP_MODULE_MAX:I = 0x20

.field public static final PROP_NAME_MAX:I = 0x40

.field public static final RDS_VALUE:Ljava/lang/String; = "RDSValue"

.field public static final SSID:Ljava/lang/String; = "SSID"

.field public static final UAPROF_URL:Ljava/lang/String; = "UAProfileURL"

.field public static final USER_AGENT:Ljava/lang/String; = "UserAgent"

.field static mLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 135
    const-string v0, "custom_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 136
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v1, "/system/framework/CustomPropInterface.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v0, Lcom/mediatek/custom/CustomProperties;->mLoader:Ljava/lang/ClassLoader;

    .line 137
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-static {v0, p0, v0}, Lcom/mediatek/custom/CustomProperties;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/custom/CustomProperties;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 175
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "module.length >32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_2

    .line 179
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name.length > 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/mediatek/custom/CustomProperties;->native_get_string(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static loadInterface()Ljava/lang/Class;
    .locals 5

    .prologue
    .line 189
    :try_start_0
    sget-object v2, Lcom/mediatek/custom/CustomProperties;->mLoader:Ljava/lang/ClassLoader;

    const-string v3, "com.mediatek.custom.CustomPropInterface"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 195
    .local v0, "clazz":Ljava/lang/Class;
    :goto_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CustomProp]loadInterface->clazz:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 197
    return-object v0

    .line 190
    .end local v0    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const/4 v0, 0x0

    .line 192
    .restart local v0    # "clazz":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static native native_get_string(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
