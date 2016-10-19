.class public Lcom/mediatek/recovery/Module;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public exceptionParser:Lcom/mediatek/recovery/AbstractExceptionParser;

.field public exceptionParserClass:Ljava/lang/String;

.field public mRecoveryFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/recovery/RegisteredRecoveryFile;",
            ">;"
        }
    .end annotation
.end field

.field public moduleName:Ljava/lang/String;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/recovery/Module;->mRecoveryFiles:Ljava/util/HashMap;

    .line 61
    iput-object p1, p0, Lcom/mediatek/recovery/Module;->moduleName:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/mediatek/recovery/Module;->packageName:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/mediatek/recovery/Module;->exceptionParserClass:Ljava/lang/String;

    .line 64
    return-void
.end method
