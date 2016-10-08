.class public Lcom/mediatek/rns/RnsPolicy$UserPreference;
.super Ljava/lang/Object;
.source "RnsPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/rns/RnsPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserPreference"
.end annotation


# static fields
.field public static final PREFERENCE_CELLULAR_ONLY:I = 0x0

.field public static final PREFERENCE_CELLULAR_PREFERRED:I = 0x2

.field public static final PREFERENCE_NONE:I = -0x1

.field public static final PREFERENCE_WIFI_ONLY:I = 0x3

.field public static final PREFERENCE_WIFI_PREFERRED:I = 0x1


# instance fields
.field private mMode:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "m"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/rns/RnsPolicy$UserPreference;->mMode:I

    .line 62
    iput p1, p0, Lcom/mediatek/rns/RnsPolicy$UserPreference;->mMode:I

    .line 63
    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/mediatek/rns/RnsPolicy$UserPreference;->mMode:I

    return v0
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "m"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/mediatek/rns/RnsPolicy$UserPreference;->mMode:I

    .line 79
    return-void
.end method
