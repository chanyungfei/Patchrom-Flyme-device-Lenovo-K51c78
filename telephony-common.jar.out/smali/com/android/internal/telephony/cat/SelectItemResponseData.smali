.class Lcom/android/internal/telephony/cat/SelectItemResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private mId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 69
    iput p1, p0, Lcom/android/internal/telephony/cat/SelectItemResponseData;->mId:I

    .line 70
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 2
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 75
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    or-int/lit16 v0, v1, 0x80

    .line 76
    .local v0, "tag":I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 77
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 78
    iget v1, p0, Lcom/android/internal/telephony/cat/SelectItemResponseData;->mId:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 79
    return-void
.end method
