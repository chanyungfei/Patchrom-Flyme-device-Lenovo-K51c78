.class public Lcom/gsma/services/utils/InsufficientResourcesException;
.super Ljava/lang/Exception;
.source "InsufficientResourcesException.java"


# static fields
.field static final TAG:Ljava/lang/String; = "InsufficientResourcesException"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 28
    return-void
.end method
