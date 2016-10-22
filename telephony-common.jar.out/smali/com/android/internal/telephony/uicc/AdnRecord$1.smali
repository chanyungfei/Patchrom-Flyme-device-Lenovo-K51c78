.class final Lcom/android/internal/telephony/uicc/AdnRecord$1;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/AdnRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/internal/telephony/uicc/AdnRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/uicc/AdnRecord;
    .locals 12
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 113
    .local v1, "efid":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 114
    .local v2, "recordNumber":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "alphaTag":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, "number":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 117
    .local v8, "emails":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, "anr":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, "anr2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 120
    .local v7, "anr3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 121
    .local v9, "grpIds":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 122
    .local v10, "aas":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 123
    .local v11, "sne":Ljava/lang/String;
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .local v0, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAasIndex(I)V

    .line 125
    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/uicc/AdnRecord;->setSne(Ljava/lang/String;)V

    .line 126
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/uicc/AdnRecord;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/uicc/AdnRecord;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 131
    new-array v0, p1, [Lcom/android/internal/telephony/uicc/AdnRecord;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord$1;->newArray(I)[Lcom/android/internal/telephony/uicc/AdnRecord;

    move-result-object v0

    return-object v0
.end method
