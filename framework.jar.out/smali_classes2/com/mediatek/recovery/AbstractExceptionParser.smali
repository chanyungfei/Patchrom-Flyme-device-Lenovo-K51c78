.class public abstract Lcom/mediatek/recovery/AbstractExceptionParser;
.super Ljava/lang/Object;
.source "AbstractExceptionParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;
    }
.end annotation


# static fields
.field public static final PARSER_ERROR:I = -0x1

.field public static final PARSER_EXCEPTION_MATCH:I = 0x0

.field public static final PARSER_EXCEPTION_MISMATCH:I = 0x1


# instance fields
.field protected lastError:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/recovery/AbstractExceptionParser;->lastError:I

    .line 57
    return-void
.end method


# virtual methods
.method public checkFilePermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/mediatek/recovery/AbstractExceptionParser;->lastError:I

    return v0
.end method

.method public abstract parseException(Ljava/lang/RuntimeException;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/RuntimeException;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public scanXML(Ljava/lang/String;)Z
    .locals 1
    .param p1, "xmlPath"    # Ljava/lang/String;

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public setLastError(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/mediatek/recovery/AbstractExceptionParser;->lastError:I

    .line 38
    return-void
.end method
