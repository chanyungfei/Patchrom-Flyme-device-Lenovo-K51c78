.class Lcom/mediatek/mom/k;
.super Lcom/mediatek/mom/ControllerBase;
.source "SourceFile"


# static fields
.field private static c:Lcom/mediatek/mom/ControllerBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/mom/k;->c:Lcom/mediatek/mom/ControllerBase;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/mediatek/mom/ControllerBase;-><init>()V

    .line 59
    return-void
.end method

.method public static final a()Lcom/mediatek/mom/ControllerBase;
    .locals 3

    .prologue
    .line 66
    sget-object v0, Lcom/mediatek/mom/k;->c:Lcom/mediatek/mom/ControllerBase;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/mediatek/mom/k;

    invoke-direct {v0}, Lcom/mediatek/mom/k;-><init>()V

    sput-object v0, Lcom/mediatek/mom/k;->c:Lcom/mediatek/mom/ControllerBase;

    .line 68
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Create MessageInterceptController: MessageInterceptController"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 70
    :cond_0
    sget-object v0, Lcom/mediatek/mom/k;->c:Lcom/mediatek/mom/ControllerBase;

    return-object v0
.end method


# virtual methods
.method public systemReady(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method
