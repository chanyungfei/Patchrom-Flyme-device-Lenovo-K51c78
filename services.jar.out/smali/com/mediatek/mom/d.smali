.class Lcom/mediatek/mom/d;
.super Lcom/mediatek/mom/ControllerBase;
.source "SourceFile"


# static fields
.field private static c:Lcom/mediatek/mom/ControllerBase;


# instance fields
.field private a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/mom/d;->c:Lcom/mediatek/mom/ControllerBase;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/mom/ControllerBase;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/d;->a:Ljava/util/HashSet;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/mom/d;->b:Z

    .line 63
    return-void
.end method

.method public static final a()Lcom/mediatek/mom/ControllerBase;
    .locals 3

    .prologue
    .line 68
    sget-object v0, Lcom/mediatek/mom/d;->c:Lcom/mediatek/mom/ControllerBase;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/mediatek/mom/d;

    invoke-direct {v0}, Lcom/mediatek/mom/d;-><init>()V

    sput-object v0, Lcom/mediatek/mom/d;->c:Lcom/mediatek/mom/ControllerBase;

    .line 70
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Create MobileManagerController: InterceptionController"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 72
    :cond_0
    sget-object v0, Lcom/mediatek/mom/d;->c:Lcom/mediatek/mom/ControllerBase;

    return-object v0
.end method


# virtual methods
.method public enableController(Z)V
    .locals 3

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/mediatek/mom/ControllerBase;->enableController(Z)V

    .line 88
    const-string v0, "MoMS.InterceptionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableController() enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lcom/mediatek/mom/d;->getManagerApListener()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Enable interception controller without register listener!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    return-void
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mom/d;->b:Z

    .line 78
    return-void
.end method
