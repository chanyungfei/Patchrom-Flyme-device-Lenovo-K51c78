.class Lcom/android/internal/telephony/cdma/utk/SelectItemResponseData;
.super Lcom/android/internal/telephony/cdma/utk/ResponseData;
.source "ResponseData.java"


# instance fields
.field private id:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/ResponseData;-><init>()V

    .line 137
    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/SelectItemResponseData;->id:I

    .line 138
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 2
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 143
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v0

    .line 144
    .local v0, "tag":I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 145
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 146
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/SelectItemResponseData;->id:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 147
    return-void
.end method
