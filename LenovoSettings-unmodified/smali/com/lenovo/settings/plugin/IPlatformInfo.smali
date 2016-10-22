.class public interface abstract Lcom/lenovo/settings/plugin/IPlatformInfo;
.super Ljava/lang/Object;
.source "IPlatformInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/plugin/IPlatformInfo$MtkPlatform;,
        Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;,
        Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;
    }
.end annotation


# virtual methods
.method public abstract getMTKPlatformName()Lcom/lenovo/settings/plugin/IPlatformInfo$MtkPlatform;
.end method

.method public abstract getOperator()Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;
.end method

.method public abstract getPlatform()Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method
