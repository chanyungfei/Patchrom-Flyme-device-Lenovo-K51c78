.class public Lcom/mediatek/archHelper/ElfUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEBUG:Z = false

.field public static final ELFCLASS32:I = 0x1

.field public static final ELFCLASS64:I = 0x2

.field public static final ELFDATA2LSB:I = 0x1

.field public static final ELFDATA2MSB:I = 0x2

.field public static final EM_386:I = 0x3

.field public static final EM_AARCH64:I = 0xb7

.field public static final EM_ARM:I = 0x28

.field public static final EM_MIPS:I = 0x8

.field public static final EM_QDSP6:I = 0xa4

.field public static final EM_X86_64:I = 0x3e


# instance fields
.field public final EI_CLASS:I

.field public final EI_DATA:I

.field private final TAG:Ljava/lang/String;

.field public final UNDEFINED:I

.field private c:[B

.field private d:Ljava/io/InputStream;

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "ElfUtil"

    iput-object v0, p0, Lcom/mediatek/archHelper/ElfUtil;->TAG:Ljava/lang/String;

    .line 19
    iput v1, p0, Lcom/mediatek/archHelper/ElfUtil;->UNDEFINED:I

    .line 24
    const/4 v0, 0x4

    iput v0, p0, Lcom/mediatek/archHelper/ElfUtil;->EI_CLASS:I

    .line 28
    const/4 v0, 0x5

    iput v0, p0, Lcom/mediatek/archHelper/ElfUtil;->EI_DATA:I

    .line 73
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/archHelper/ElfUtil;->c:[B

    .line 76
    iput v1, p0, Lcom/mediatek/archHelper/ElfUtil;->e:I

    .line 77
    iput v1, p0, Lcom/mediatek/archHelper/ElfUtil;->f:I

    .line 78
    iput v1, p0, Lcom/mediatek/archHelper/ElfUtil;->g:I

    .line 107
    iput-object p1, p0, Lcom/mediatek/archHelper/ElfUtil;->d:Ljava/io/InputStream;

    .line 108
    return-void
.end method

.method private b()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 142
    const/4 v3, 0x2

    .line 144
    iget-object v2, p0, Lcom/mediatek/archHelper/ElfUtil;->d:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/mediatek/archHelper/ElfUtil;->c:[B

    invoke-virtual {v2, v4, v0, v3}, Ljava/io/InputStream;->read([BII)I

    .line 146
    iget-object v2, p0, Lcom/mediatek/archHelper/ElfUtil;->d:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/mediatek/archHelper/ElfUtil;->c:[B

    invoke-virtual {v2, v4, v0, v3}, Ljava/io/InputStream;->read([BII)I

    .line 148
    iget v2, p0, Lcom/mediatek/archHelper/ElfUtil;->f:I

    if-ne v2, v1, :cond_0

    .line 149
    :goto_0
    if-ltz v1, :cond_1

    .line 150
    shl-int/lit8 v0, v0, 0x8

    iget-object v2, p0, Lcom/mediatek/archHelper/ElfUtil;->c:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v0

    .line 149
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 153
    :goto_1
    if-gt v1, v3, :cond_1

    .line 154
    shl-int/lit8 v0, v0, 0x8

    iget-object v2, p0, Lcom/mediatek/archHelper/ElfUtil;->c:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v0

    .line 153
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_1

    .line 158
    :cond_1
    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/archHelper/ElfUtil;->d:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/mediatek/archHelper/ElfUtil;->c:[B

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 116
    iget-object v0, p0, Lcom/mediatek/archHelper/ElfUtil;->c:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    iput v0, p0, Lcom/mediatek/archHelper/ElfUtil;->e:I

    .line 117
    iget-object v0, p0, Lcom/mediatek/archHelper/ElfUtil;->c:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    iput v0, p0, Lcom/mediatek/archHelper/ElfUtil;->f:I

    .line 118
    iget v0, p0, Lcom/mediatek/archHelper/ElfUtil;->f:I

    if-ne v0, v4, :cond_0

    .line 123
    :cond_0
    iget v0, p0, Lcom/mediatek/archHelper/ElfUtil;->e:I

    if-ne v0, v4, :cond_2

    .line 125
    invoke-direct {p0}, Lcom/mediatek/archHelper/ElfUtil;->b()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/mediatek/archHelper/ElfUtil;->g:I

    .line 127
    iget v0, p0, Lcom/mediatek/archHelper/ElfUtil;->g:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_1

    .line 139
    :cond_1
    :goto_0
    return-void

    .line 130
    :cond_2
    iget v0, p0, Lcom/mediatek/archHelper/ElfUtil;->e:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 137
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getElfClass()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/mediatek/archHelper/ElfUtil;->e:I

    return v0
.end method

.method public getEndian()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/mediatek/archHelper/ElfUtil;->f:I

    return v0
.end method

.method public getMachine()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/mediatek/archHelper/ElfUtil;->g:I

    return v0
.end method
