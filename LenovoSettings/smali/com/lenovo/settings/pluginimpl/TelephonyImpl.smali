.class public Lcom/lenovo/settings/pluginimpl/TelephonyImpl;
.super Ljava/lang/Object;
.source "TelephonyImpl.java"

# interfaces
.implements Lcom/lenovo/settings/plugin/ITelephony;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConstantStringACTION_SIM_INFO_UPDATE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentPhoneType(I)I
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultSubscription()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "sub"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInsertedSimCount(Landroid/content/Context;)I
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public getNetworkType(I)I
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneCount()I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public getSimState(I)I
    .locals 1
    .param p1, "slot_id"    # I

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiSimEnabled()Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkRoaming(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sub"    # I

    .prologue
    .line 10
    const/4 v0, 0x0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    return-void
.end method
