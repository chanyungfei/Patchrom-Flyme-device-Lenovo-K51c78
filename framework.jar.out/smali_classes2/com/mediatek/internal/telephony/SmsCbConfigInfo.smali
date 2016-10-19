.class public Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
.super Ljava/lang/Object;
.source "SmsCbConfigInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/internal/telephony/SmsCbConfigInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mFromCodeScheme:I

.field public mFromServiceId:I

.field public mSelected:Z

.field public mToCodeScheme:I

.field public mToServiceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/mediatek/internal/telephony/SmsCbConfigInfo$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/SmsCbConfigInfo$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/SmsCbConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIZ)V
    .locals 0
    .param p1, "fromId"    # I
    .param p2, "toId"    # I
    .param p3, "fromScheme"    # I
    .param p4, "toScheme"    # I
    .param p5, "selected"    # Z

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/mediatek/internal/telephony/SmsCbConfigInfo;->mFromServiceId:I

    .line 36
    iput p2, p0, Lcom/mediatek/internal/telephony/SmsCbConfigInfo;->mToServiceId:I

    .line 37
    iput p3, p0, Lcom/mediatek/internal/telephony/SmsCbConfigInfo;->mFromCodeScheme:I

    .line 38
    iput p4, p0, Lcom/mediatek/internal/telephony/SmsCbConfigInfo;->mToCodeScheme:I

    .line 39
    iput-boolean p5, p0, Lcom/mediatek/internal/telephony/SmsCbConfigInfo;->mSelected:Z

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 59
    iget v0, p0, Lcom/mediatek/internal/telephony/SmsCbConfigInfo;->mFromServiceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Lcom/mediatek/internal/telephony/SmsCbConfigInfo;->mToServiceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v0, p0, Lcom/mediatek/internal/telephony/SmsCbConfigInfo;->mFromCodeScheme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v0, p0, Lcom/mediatek/internal/telephony/SmsCbConfigInfo;->mToCodeScheme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/SmsCbConfigInfo;->mSelected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 64
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
