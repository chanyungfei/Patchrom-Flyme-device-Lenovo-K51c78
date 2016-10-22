.class public Lcom/lenovo/settings/manager/TelephonyPlugin;
.super Ljava/lang/Object;
.source "TelephonyPlugin.java"

# interfaces
.implements Lcom/lenovo/settings/plugin/ITelephony;


# static fields
.field private static mInstance:Lcom/lenovo/settings/manager/TelephonyPlugin;

.field private static mPlugin:Lcom/lenovo/settings/plugin/ITelephony;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    sput-object v0, Lcom/lenovo/settings/manager/TelephonyPlugin;->mInstance:Lcom/lenovo/settings/manager/TelephonyPlugin;

    .line 8
    sput-object v0, Lcom/lenovo/settings/manager/TelephonyPlugin;->mPlugin:Lcom/lenovo/settings/plugin/ITelephony;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    sget-object v0, Lcom/lenovo/settings/manager/TelephonyPlugin;->mInstance:Lcom/lenovo/settings/manager/TelephonyPlugin;

    if-eqz v0, :cond_0

    .line 12
    sget-object v0, Lcom/lenovo/settings/manager/TelephonyPlugin;->mInstance:Lcom/lenovo/settings/manager/TelephonyPlugin;

    .line 16
    :goto_0
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Lcom/lenovo/settings/manager/TelephonyPlugin;

    invoke-direct {v0}, Lcom/lenovo/settings/manager/TelephonyPlugin;-><init>()V

    sput-object v0, Lcom/lenovo/settings/manager/TelephonyPlugin;->mInstance:Lcom/lenovo/settings/manager/TelephonyPlugin;

    .line 15
    invoke-static {p0}, Lcom/lenovo/settings/manager/PluginManager;->getTelephony(Landroid/content/Context;)Lcom/lenovo/settings/plugin/ITelephony;

    move-result-object v0

    sput-object v0, Lcom/lenovo/settings/manager/TelephonyPlugin;->mPlugin:Lcom/lenovo/settings/plugin/ITelephony;

    .line 16
    sget-object v0, Lcom/lenovo/settings/manager/TelephonyPlugin;->mInstance:Lcom/lenovo/settings/manager/TelephonyPlugin;

    goto :goto_0
.end method


# virtual methods
.method public getConstantStringACTION_SIM_INFO_UPDATE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/lenovo/settings/manager/TelephonyPlugin;->mPlugin:Lcom/lenovo/settings/plugin/ITelephony;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/ITelephony;->getConstantStringACTION_SIM_INFO_UPDATE()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPhoneType(I)I
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 41
    sget-object v0, Lcom/lenovo/settings/manager/TelephonyPlugin;->mPlugin:Lcom/lenovo/settings/plugin/ITelephony;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/plugin/ITelephony;->getCurrentPhoneType(I)I

    move-result v0

    return v0
.end method

.method public getDefaultSubscription()I
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/lenovo/settings/manager/TelephonyPlugin;->mPlugin:Lcom/lenovo/settings/plugin/ITelephony;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/ITelephony;->getDefaultSubscription()I

    move-result v0

    return v0
.end method

.method public getDeviceId(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "sub"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 51
    sget-object v0, Lcom/lenovo/settings/manager/TelephonyPlugin;->mPlugin:Lcom/lenovo/settings/plugin/ITelephony;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/settings/plugin/ITelephony;->getDeviceId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInsertedSimCount(Landroid/content/Context;)I
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 61
    sget-object v0, Lcom/lenovo/settings/manager/TelephonyPlugin;->mPlugin:Lcom/lenovo/settings/plugin/ITelephony;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/plugin/ITelephony;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getNetworkType(I)I
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 71
    sget-object v0, Lcom/lenovo/settings/manager/TelephonyPlugin;->mPlugin:Lcom/lenovo/settings/plugin/ITelephony;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/plugin/ITelephony;->getNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 66
    sget-object v0, Lcom/lenovo/settings/manager/TelephonyPlugin;->mPlugin:Lcom/lenovo/settings/plugin/ITelephony;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/plugin/ITelephony;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneCount()I
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/lenovo/settings/manager/TelephonyPlugin;->mPlugin:Lcom/lenovo/settings/plugin/ITelephony;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/ITelephony;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public getSimState(I)I
    .locals 1
    .param p1, "slot_id"    # I

    .prologue
    .line 81
    sget-object v0, Lcom/lenovo/settings/manager/TelephonyPlugin;->mPlugin:Lcom/lenovo/settings/plugin/ITelephony;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/plugin/ITelephony;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public isMultiSimEnabled()Z
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/lenovo/settings/manager/TelephonyPlugin;->mPlugin:Lcom/lenovo/settings/plugin/ITelephony;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/ITelephony;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method public isNetworkRoaming(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sub"    # I

    .prologue
    .line 21
    sget-object v0, Lcom/lenovo/settings/manager/TelephonyPlugin;->mPlugin:Lcom/lenovo/settings/plugin/ITelephony;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/settings/plugin/ITelephony;->isNetworkRoaming(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    sget-object v0, Lcom/lenovo/settings/manager/TelephonyPlugin;->mPlugin:Lcom/lenovo/settings/plugin/ITelephony;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/plugin/ITelephony;->setContext(Landroid/content/Context;)V

    .line 77
    return-void
.end method
