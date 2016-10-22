.class public Lcom/lenovo/settings/pluginimpl/PlatformInfoImpl;
.super Ljava/lang/Object;
.source "PlatformInfoImpl.java"

# interfaces
.implements Lcom/lenovo/settings/plugin/IPlatformInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMTKPlatformName()Lcom/lenovo/settings/plugin/IPlatformInfo$MtkPlatform;
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOperator()Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlatform()Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    return-void
.end method
