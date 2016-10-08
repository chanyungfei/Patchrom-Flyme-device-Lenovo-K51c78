.class public Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;
.super Ljava/lang/Object;
.source "AbstractExceptionParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/recovery/AbstractExceptionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParsedException"
.end annotation


# instance fields
.field public mExceptionClassName:Ljava/lang/String;

.field public mThrowClassName:Ljava/lang/String;

.field public mThrowMethodName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "exceptionClassName"    # Ljava/lang/String;
    .param p2, "throwMethodName"    # Ljava/lang/String;
    .param p3, "throwClassName"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mExceptionClassName:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mThrowMethodName:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mThrowClassName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public static getNewInstance(Ljava/lang/Throwable;Ljava/lang/Boolean;)Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;
    .locals 7
    .param p0, "e"    # Ljava/lang/Throwable;
    .param p1, "getRootCause"    # Ljava/lang/Boolean;

    .prologue
    .line 75
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_1

    .line 76
    move-object v1, p0

    .line 77
    .local v1, "rootCause":Ljava/lang/Throwable;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 78
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_0

    .line 80
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v4, v5, v6

    .line 84
    .local v4, "trace":Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "exceptionClassName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "throwMethodName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "throwClassName":Ljava/lang/String;
    new-instance v5, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;

    invoke-direct {v5, v0, v3, v2}, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .end local v0    # "exceptionClassName":Ljava/lang/String;
    .end local v1    # "rootCause":Ljava/lang/Throwable;
    .end local v2    # "throwClassName":Ljava/lang/String;
    .end local v3    # "throwMethodName":Ljava/lang/String;
    .end local v4    # "trace":Ljava/lang/StackTraceElement;
    :goto_1
    return-object v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 95
    if-nez p1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v1

    .line 96
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    goto :goto_0

    .line 97
    :cond_2
    instance-of v3, p1, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 98
    check-cast v0, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;

    .line 99
    .local v0, "pe":Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;
    iget-object v3, v0, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mExceptionClassName:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mExceptionClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mThrowClassName:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mThrowClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mThrowMethodName:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mThrowMethodName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 102
    goto :goto_0
.end method
