.class public Lcom/android/server/display/effect/MiraVisionJni$Range;
.super Ljava/lang/Object;
.source "MiraVisionJni.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/effect/MiraVisionJni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Range"
.end annotation


# instance fields
.field public defaultValue:I

.field public max:I

.field public min:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/display/effect/MiraVisionJni$Range;->set(III)V

    .line 77
    return-void
.end method


# virtual methods
.method public set(III)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "defaultValue"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/android/server/display/effect/MiraVisionJni$Range;->min:I

    .line 81
    iput p2, p0, Lcom/android/server/display/effect/MiraVisionJni$Range;->max:I

    .line 82
    iput p3, p0, Lcom/android/server/display/effect/MiraVisionJni$Range;->defaultValue:I

    .line 83
    return-void
.end method
