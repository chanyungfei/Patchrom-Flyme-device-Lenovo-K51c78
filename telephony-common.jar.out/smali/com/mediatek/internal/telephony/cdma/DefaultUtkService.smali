.class public Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;
.super Ljava/lang/Object;
.source "DefaultUtkService.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/cdma/IUtkService;


# static fields
.field public static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "DefaultUtkService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string v0, "DefaultUtkService"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "DefaultUtkService dispose"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;->log(Ljava/lang/String;)V

    .line 33
    return-void
.end method
