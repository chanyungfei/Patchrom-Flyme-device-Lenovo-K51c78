.class public interface abstract Lcom/lenovo/settings/plugin/ITelephony;
.super Ljava/lang/Object;
.source "ITelephony.java"


# virtual methods
.method public abstract getConstantStringACTION_SIM_INFO_UPDATE()Ljava/lang/String;
.end method

.method public abstract getCurrentPhoneType(I)I
.end method

.method public abstract getDefaultSubscription()I
.end method

.method public abstract getDeviceId(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getInsertedSimCount(Landroid/content/Context;)I
.end method

.method public abstract getNetworkType(I)I
.end method

.method public abstract getNetworkTypeName(I)Ljava/lang/String;
.end method

.method public abstract getPhoneCount()I
.end method

.method public abstract getSimState(I)I
.end method

.method public abstract isMultiSimEnabled()Z
.end method

.method public abstract isNetworkRoaming(Landroid/content/Context;I)Z
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method
