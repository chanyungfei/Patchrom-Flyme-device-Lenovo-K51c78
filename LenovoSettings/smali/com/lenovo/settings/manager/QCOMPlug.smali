.class public Lcom/lenovo/settings/manager/QCOMPlug;
.super Ljava/lang/Object;
.source "QCOMPlug.java"

# interfaces
.implements Lcom/lenovo/settings/plugin/IQCOMPlug;


# static fields
.field private static mInstance:Lcom/lenovo/settings/manager/QCOMPlug;

.field private static mPlugin:Lcom/lenovo/settings/plugin/IQCOMPlug;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    sput-object v0, Lcom/lenovo/settings/manager/QCOMPlug;->mInstance:Lcom/lenovo/settings/manager/QCOMPlug;

    .line 10
    sput-object v0, Lcom/lenovo/settings/manager/QCOMPlug;->mPlugin:Lcom/lenovo/settings/plugin/IQCOMPlug;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/QCOMPlug;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    sget-object v0, Lcom/lenovo/settings/manager/QCOMPlug;->mInstance:Lcom/lenovo/settings/manager/QCOMPlug;

    if-eqz v0, :cond_0

    .line 14
    sget-object v0, Lcom/lenovo/settings/manager/QCOMPlug;->mInstance:Lcom/lenovo/settings/manager/QCOMPlug;

    .line 18
    :goto_0
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Lcom/lenovo/settings/manager/QCOMPlug;

    invoke-direct {v0}, Lcom/lenovo/settings/manager/QCOMPlug;-><init>()V

    sput-object v0, Lcom/lenovo/settings/manager/QCOMPlug;->mInstance:Lcom/lenovo/settings/manager/QCOMPlug;

    .line 17
    invoke-static {p0}, Lcom/lenovo/settings/manager/PluginManager;->getQcomPlug(Landroid/content/Context;)Lcom/lenovo/settings/plugin/IQCOMPlug;

    move-result-object v0

    sput-object v0, Lcom/lenovo/settings/manager/QCOMPlug;->mPlugin:Lcom/lenovo/settings/plugin/IQCOMPlug;

    .line 18
    sget-object v0, Lcom/lenovo/settings/manager/QCOMPlug;->mInstance:Lcom/lenovo/settings/manager/QCOMPlug;

    goto :goto_0
.end method


# virtual methods
.method public getPreferredDataSubscription()I
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/lenovo/settings/manager/QCOMPlug;->mPlugin:Lcom/lenovo/settings/plugin/IQCOMPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IQCOMPlug;->getPreferredDataSubscription()I

    move-result v0

    return v0
.end method

.method public getSimCardType(I)I
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 28
    sget-object v0, Lcom/lenovo/settings/manager/QCOMPlug;->mPlugin:Lcom/lenovo/settings/plugin/IQCOMPlug;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/plugin/IQCOMPlug;->getSimCardType(I)I

    move-result v0

    return v0
.end method

.method public getUIM_TYPE_CTCC()I
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/lenovo/settings/manager/QCOMPlug;->mPlugin:Lcom/lenovo/settings/plugin/IQCOMPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IQCOMPlug;->getUIM_TYPE_CTCC()I

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    sget-object v0, Lcom/lenovo/settings/manager/QCOMPlug;->mPlugin:Lcom/lenovo/settings/plugin/IQCOMPlug;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/plugin/IQCOMPlug;->setContext(Landroid/content/Context;)V

    .line 40
    return-void
.end method
