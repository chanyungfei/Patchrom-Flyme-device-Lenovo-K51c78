.class public Landroid/net/wifi/WifiSsid;
.super Ljava/lang/Object;
.source "WifiSsid.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiSsid;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEX_RADIX:I = 0x10

.field public static final NONE:Ljava/lang/String; = "<unknown ssid>"

.field private static final TAG:Ljava/lang/String; = "WifiSsid"


# instance fields
.field private SSID:Ljava/lang/String;

.field public final octets:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    new-instance v0, Landroid/net/wifi/WifiSsid$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiSsid$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiSsid$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/wifi/WifiSsid$1;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/net/wifi/WifiSsid;-><init>()V

    return-void
.end method

.method static synthetic access$102(Landroid/net/wifi/WifiSsid;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiSsid;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Landroid/net/wifi/WifiSsid;->SSID:Ljava/lang/String;

    return-object p1
.end method

.method private convertToBytes(Ljava/lang/String;)V
    .locals 4
    .param p1, "asciiEncoded"    # Ljava/lang/String;

    .prologue
    .line 87
    const/4 v1, 0x0

    .line 88
    .local v1, "i":I
    const/4 v2, 0x0

    .line 89
    .local v2, "val":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 90
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 91
    .local v0, "c":C
    iget-object v3, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 92
    add-int/lit8 v1, v1, 0x1

    .line 94
    goto :goto_0

    .line 96
    .end local v0    # "c":C
    :cond_0
    iput-object p1, p0, Landroid/net/wifi/WifiSsid;->SSID:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public static createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;
    .locals 1
    .param p0, "asciiEncoded"    # Ljava/lang/String;

    .prologue
    .line 59
    new-instance v0, Landroid/net/wifi/WifiSsid;

    invoke-direct {v0}, Landroid/net/wifi/WifiSsid;-><init>()V

    .line 60
    .local v0, "a":Landroid/net/wifi/WifiSsid;
    invoke-direct {v0, p0}, Landroid/net/wifi/WifiSsid;->convertToBytes(Ljava/lang/String;)V

    .line 61
    return-object v0
.end method

.method public static createFromHex(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;
    .locals 6
    .param p0, "hexStr"    # Ljava/lang/String;

    .prologue
    .line 65
    new-instance v0, Landroid/net/wifi/WifiSsid;

    invoke-direct {v0}, Landroid/net/wifi/WifiSsid;-><init>()V

    .line 66
    .local v0, "a":Landroid/net/wifi/WifiSsid;
    if-nez p0, :cond_1

    .line 81
    :cond_0
    return-object v0

    .line 68
    :cond_1
    const-string v4, "0x"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "0X"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 69
    :cond_2
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 72
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_0

    .line 75
    add-int/lit8 v4, v2, 0x2

    :try_start_0
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 79
    .local v3, "val":I
    :goto_1
    iget-object v4, v0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 72
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 76
    .end local v3    # "val":I
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    .restart local v3    # "val":I
    goto :goto_1
.end method

.method private isArrayAllZeroes([B)Z
    .locals 2
    .param p1, "ssidBytes"    # [B

    .prologue
    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 124
    aget-byte v1, p1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 126
    :goto_1
    return v1

    .line 123
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public getHexString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 142
    const-string v1, "0x"

    .line 143
    .local v1, "out":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/wifi/WifiSsid;->getOctets()[B

    move-result-object v2

    .line 144
    .local v2, "ssidbytes":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-byte v8, v2, v0

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    return-object v1
.end method

.method public getOctets()[B
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiSsid;->isArrayAllZeroes([B)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 101
    iget-object v5, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 105
    .local v4, "ssidBytes":[B
    iget-object v5, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-direct {p0, v4}, Landroid/net/wifi/WifiSsid;->isArrayAllZeroes([B)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const-string v5, ""

    .line 119
    :goto_0
    return-object v5

    .line 107
    :cond_1
    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 108
    .local v0, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v5, v6}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v5, v6}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    .line 111
    .local v1, "decoder":Ljava/nio/charset/CharsetDecoder;
    const/16 v5, 0x20

    invoke-static {v5}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 113
    .local v2, "out":Ljava/nio/CharBuffer;
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v2, v6}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 114
    .local v3, "result":Ljava/nio/charset/CoderResult;
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 115
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 116
    const-string v5, "<unknown ssid>"

    goto :goto_0

    .line 119
    :cond_2
    iget-object v5, p0, Landroid/net/wifi/WifiSsid;->SSID:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 157
    iget-object v0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-object v0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiSsid;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    return-void
.end method
