.class public Lcom/mediatek/tb/telephony/OnlyOwnerSimSupport;
.super Ljava/lang/Object;
.source "OnlyOwnerSimSupport.java"

# interfaces
.implements Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;


# annotations
.annotation runtime Lcom/mediatek/common/PluginImpl;
    interfaceName = "com.mediatek.common.telephony.IOnlyOwnerSimSupport"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OnlyOwnerSimSupport"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-nez p1, :cond_0

    .line 59
    const-string v0, "OnlyOwnerSimSupport"

    const-string v1, "FAIL! context is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string v0, "OnlyOwnerSimSupport"

    const-string v1, "OnlyOwnerSimSupport in default "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enableNormalUserReceived"    # Z

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-nez p1, :cond_0

    .line 67
    const-string v0, "OnlyOwnerSimSupport"

    const-string v1, "FAIL! context is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    const-string v0, "OnlyOwnerSimSupport"

    const-string v1, "OnlyOwnerSimSupport in default "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dispatchMsgOwner(Landroid/content/Intent;ILjava/lang/String;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "simId"    # I
    .param p3, "permission"    # Ljava/lang/String;
    .param p4, "appOp"    # I

    .prologue
    .line 89
    return-void
.end method

.method public intercept(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "resultCode"    # I

    .prologue
    .line 86
    return-void
.end method

.method public isCurrentUserOwner()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public isMsgDispatchOwner(Landroid/content/Intent;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkTypeMobile(I)Z
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public isOnlyOwnerSimSupport()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method
