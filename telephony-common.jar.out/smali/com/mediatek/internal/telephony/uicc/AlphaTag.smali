.class public Lcom/mediatek/internal/telephony/uicc/AlphaTag;
.super Ljava/lang/Object;
.source "AlphaTag.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/internal/telephony/uicc/AlphaTag;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "AlphaTag"


# instance fields
.field mAlphaTag:Ljava/lang/String;

.field mPbrIndex:I

.field mRecordNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/AlphaTag$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/uicc/AlphaTag$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/AlphaTag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .param p1, "recordNumber"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "pbr"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/AlphaTag;->mAlphaTag:Ljava/lang/String;

    .line 91
    iput p1, p0, Lcom/mediatek/internal/telephony/uicc/AlphaTag;->mRecordNumber:I

    .line 92
    iput-object p2, p0, Lcom/mediatek/internal/telephony/uicc/AlphaTag;->mAlphaTag:Ljava/lang/String;

    .line 93
    iput p3, p0, Lcom/mediatek/internal/telephony/uicc/AlphaTag;->mPbrIndex:I

    .line 94
    return-void
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .prologue
    .line 141
    if-ne p0, p1, :cond_0

    .line 142
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    .line 144
    :cond_0
    if-nez p0, :cond_1

    .line 145
    const-string p0, ""

    .line 147
    :cond_1
    if-nez p1, :cond_2

    .line 148
    const-string p1, ""

    .line 150
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/AlphaTag;->mAlphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getPbrIndex()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/AlphaTag;->mPbrIndex:I

    return v0
.end method

.method public getRecordIndex()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/AlphaTag;->mRecordNumber:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/AlphaTag;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isEqual(Lcom/mediatek/internal/telephony/uicc/AlphaTag;)Z
    .locals 2
    .param p1, "uGas"    # Lcom/mediatek/internal/telephony/uicc/AlphaTag;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/AlphaTag;->mAlphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/mediatek/internal/telephony/uicc/AlphaTag;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/uicc/AlphaTag;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAlphaTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "alphaString"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/mediatek/internal/telephony/uicc/AlphaTag;->mAlphaTag:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setPbrIndex(I)V
    .locals 0
    .param p1, "pbr"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/mediatek/internal/telephony/uicc/AlphaTag;->mPbrIndex:I

    .line 129
    return-void
.end method

.method public setRecordIndex(I)V
    .locals 0
    .param p1, "nIndex"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/mediatek/internal/telephony/uicc/AlphaTag;->mRecordNumber:I

    .line 121
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlphaTag: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/AlphaTag;->mRecordNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/AlphaTag;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/AlphaTag;->mPbrIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 164
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/AlphaTag;->mRecordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/AlphaTag;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/AlphaTag;->mPbrIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    return-void
.end method
