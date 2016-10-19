.class public Lcom/mediatek/recovery/RegisteredRecoveryFile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public backupFile:Ljava/io/File;

.field public backupFlag:I

.field public className:Ljava/lang/String;

.field public defaultActionFlag:I

.field public methodName:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->className:Ljava/lang/String;

    .line 50
    const-string v0, "doRecover"

    iput-object v0, p0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->methodName:Ljava/lang/String;

    .line 52
    iput v1, p0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFlag:I

    .line 54
    iput v1, p0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    return-void
.end method
