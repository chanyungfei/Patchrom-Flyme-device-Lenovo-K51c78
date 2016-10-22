.class public abstract Lcom/android/internal/telephony/cat/bip/BearerDesc;
.super Ljava/lang/Object;
.source "BearerDesc.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public bearerType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/BearerDesc;->bearerType:I

    .line 65
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public abstract writeToParcel(Landroid/os/Parcel;I)V
.end method
