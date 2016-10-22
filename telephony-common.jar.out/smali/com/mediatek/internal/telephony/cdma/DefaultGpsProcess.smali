.class public Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;
.super Ljava/lang/Object;
.source "DefaultGpsProcess.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/cdma/IGpsProcess;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DefaultGpsProcess"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "DefaultGpsProcess created"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;->log(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 59
    const-string v0, "DefaultGpsProcess"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method


# virtual methods
.method public start()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "DefaultGpsProcess start"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;->log(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "DefaultGpsProcess stop"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;->log(Ljava/lang/String;)V

    .line 56
    return-void
.end method
