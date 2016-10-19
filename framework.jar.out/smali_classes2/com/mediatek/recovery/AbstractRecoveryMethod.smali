.class public abstract Lcom/mediatek/recovery/AbstractRecoveryMethod;
.super Ljava/lang/Object;
.source "AbstractRecoveryMethod.java"


# static fields
.field public static final RECOVER_METHOD_FAILED:I = -0x1

.field public static final RECOVER_METHOD_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doRecover(Ljava/lang/Object;)I
.end method
