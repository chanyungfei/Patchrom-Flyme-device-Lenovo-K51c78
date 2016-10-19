.class public Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;
.super Ljava/lang/RuntimeException;
.source "CameraEffectHalRuntimeException.java"


# instance fields
.field private mCause:Ljava/lang/Throwable;

.field private mMessage:Ljava/lang/String;

.field private final mReason:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "problem"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 17
    iput p1, p0, Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;->mReason:I

    .line 18
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "problem"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 22
    iput p1, p0, Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;->mReason:I

    .line 23
    iput-object p2, p0, Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;->mMessage:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "problem"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 27
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    iput p1, p0, Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;->mReason:I

    .line 29
    iput-object p2, p0, Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;->mMessage:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;->mCause:Ljava/lang/Throwable;

    .line 31
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "problem"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 34
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 35
    iput p1, p0, Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;->mReason:I

    .line 36
    iput-object p2, p0, Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;->mCause:Ljava/lang/Throwable;

    .line 37
    return-void
.end method


# virtual methods
.method public asChecked()Lcom/mediatek/mmsdk/CameraEffectHalException;
    .locals 4

    .prologue
    .line 41
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;->mMessage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;->mCause:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 42
    new-instance v0, Lcom/mediatek/mmsdk/CameraEffectHalException;

    iget v1, p0, Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;->mReason:I

    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;->mMessage:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;->mCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/mmsdk/CameraEffectHalException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .local v0, "e":Lcom/mediatek/mmsdk/CameraEffectHalException;
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/mmsdk/CameraEffectHalException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 52
    return-object v0

    .line 43
    .end local v0    # "e":Lcom/mediatek/mmsdk/CameraEffectHalException;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;->mMessage:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 44
    new-instance v0, Lcom/mediatek/mmsdk/CameraEffectHalException;

    iget v1, p0, Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;->mReason:I

    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;->mMessage:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/mmsdk/CameraEffectHalException;-><init>(ILjava/lang/String;)V

    .restart local v0    # "e":Lcom/mediatek/mmsdk/CameraEffectHalException;
    goto :goto_0

    .line 45
    .end local v0    # "e":Lcom/mediatek/mmsdk/CameraEffectHalException;
    :cond_1
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;->mCause:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 46
    new-instance v0, Lcom/mediatek/mmsdk/CameraEffectHalException;

    iget v1, p0, Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;->mReason:I

    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;->mCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/mmsdk/CameraEffectHalException;-><init>(ILjava/lang/Throwable;)V

    .restart local v0    # "e":Lcom/mediatek/mmsdk/CameraEffectHalException;
    goto :goto_0

    .line 48
    .end local v0    # "e":Lcom/mediatek/mmsdk/CameraEffectHalException;
    :cond_2
    new-instance v0, Lcom/mediatek/mmsdk/CameraEffectHalException;

    iget v1, p0, Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;->mReason:I

    invoke-direct {v0, v1}, Lcom/mediatek/mmsdk/CameraEffectHalException;-><init>(I)V

    .restart local v0    # "e":Lcom/mediatek/mmsdk/CameraEffectHalException;
    goto :goto_0
.end method

.method public final getReason()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;->mReason:I

    return v0
.end method
